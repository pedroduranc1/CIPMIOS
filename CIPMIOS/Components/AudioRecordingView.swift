import SwiftUI
import Speech

class AudioRecordingManager: ObservableObject {
    @Published var transcription = ""
    private let audioEngine = AVAudioEngine()
    private let speechRecognizer = SFSpeechRecognizer()
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?

    func startRecording() {
        do {
            let audioSession = AVAudioSession.sharedInstance()
            try audioSession.setCategory(.record, mode: .default, options: [])
            try audioSession.setActive(true, options: .notifyOthersOnDeactivation)

            let inputNode = audioEngine.inputNode
            let recordingFormat = inputNode.outputFormat(forBus: 0)

            recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
            recognitionRequest?.shouldReportPartialResults = true

            inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, time) in
                self.recognitionRequest?.append(buffer)
            }

            audioEngine.prepare()
            try audioEngine.start()

            recognitionTask = speechRecognizer?.recognitionTask(with: recognitionRequest!) { (result, error) in
                DispatchQueue.main.async {
                    if let result = result {
                        self.transcription = result.bestTranscription.formattedString
                    } else if let error = error {
                        print("Error en la transcripción: \(error.localizedDescription)")
                    }
                }
            }
        } catch {
            print("Error al configurar y comenzar el motor de audio: \(error.localizedDescription)")
        }
    }

    func stopRecording() {
        audioEngine.stop()
        audioEngine.inputNode.removeTap(onBus: 0)

        recognitionRequest?.endAudio()
        recognitionTask?.cancel()
    }
}

struct AudioRecordingView: View {
    @ObservedObject private var recordingManager = AudioRecordingManager()
    @State private var isRecording = false

    var body: some View {
        VStack {
            Button(action: {
                self.isRecording.toggle()
                if self.isRecording {
                    self.recordingManager.startRecording()
                } else {
                    self.recordingManager.stopRecording()
                }
            }) {
                Text(self.isRecording ? "Detener Grabación" : "Iniciar Grabación")
            }
            
            Text("Transcripción: \(recordingManager.transcription)")
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AudioRecordingView()
    }
}

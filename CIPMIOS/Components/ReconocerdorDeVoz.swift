import SwiftUI
import AVFoundation

struct MeetingView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 16.0)
                    .fill(Color.blue)
                    .frame(height: 200)
                    .padding()

                if isRecording {
                    Text("Transcripción: \(speechRecognizer.transcript)")
                        .foregroundColor(.white)
                        .padding()
                }
            }

            Button(action: {
                toggleRecognition()
            }) {
                Text(isRecording ? "Detener Reconocimiento" : "Iniciar Reconocimiento")
                    .padding()
                    .background(isRecording ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8.0)
            }
            .padding()
        }
    }

    private func toggleRecognition() {
        if isRecording {
            stopRecognition()
        } else {
            startRecognition()
        }
    }

    private func startRecognition() {
        speechRecognizer.resetTranscript()
        speechRecognizer.startTranscribing()
        isRecording = true
    }

    private func stopRecognition() {
        speechRecognizer.stopTranscribing()
        isRecording = false
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}

import SwiftUI
import SwiftSpeech


struct SpeechView: View {
    @State private var recognizedText: String = ""
    
    var body: some View {
        VStack {
            Text(recognizedText)
                .padding()
            
            SwiftSpeech.RecordButton()
                .swiftSpeechRecordOnHold(sessionConfiguration: .init(locale: Locale(identifier: "en_US")),
                                         animation: .default,
                                         distanceToCancel: 50)
                .onRecognizeLatest(update: $recognizedText)
                .padding()
        }
        .onAppear {
            SwiftSpeech.requestSpeechRecognitionAuthorization()
        }
    }
}

#Preview {
    SpeechView()
}

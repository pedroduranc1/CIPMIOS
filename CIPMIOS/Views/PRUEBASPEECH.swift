
import SwiftUI
import AVFoundation

struct PRUEBASPEECH: View {
    var body: some View {
        VStack{
            VStack{
                
            }
        }
        background(Color("azul"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "es-ES") // Cambia a tu idioma preferido

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

#Preview {
    PRUEBASPEECH()
}

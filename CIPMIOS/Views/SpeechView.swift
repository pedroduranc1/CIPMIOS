import SwiftUI
import AVFoundation


struct SpeechView: View {
    @State private var email: String = ""
    var body: some View {
        VStack{
            VStack{
                TextField("Ingresa tu correo electronico",text: $email)
                    .padding(.vertical,15)
                    .padding(.horizontal, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.vertical,50)
                            .padding(.horizontal,40)
                    )
                    .foregroundColor(.black)
                    .background(Color("blanco"))
                    .cornerRadius(5)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                VStack(){
                    VStack(alignment:.center){
                        Button(action:{
                            speak(text: email)
                        }){
                            VStack{
                                Text("Prueba de Voz")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .padding(.vertical,15)
                                    .padding(.horizontal,20)
                            }
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("rojo"))
                .cornerRadius(10)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
            .padding(.horizontal,30)
            .padding(.vertical,100)
        }
        .background(Color("azul"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    private func speak(text:String){
        let voices = AVSpeechSynthesisVoice.speechVoices()
        voices.forEach { voice in
            print("Voice: \(voice.name), Language: \(voice.language)")
        }
        
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "es-ES") // Cambia a tu idioma preferido
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

#Preview {
    SpeechView()
}

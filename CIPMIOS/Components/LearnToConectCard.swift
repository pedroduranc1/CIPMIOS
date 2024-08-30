//
//  LearnWordCard.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import SwiftUI
import SwiftSpeech
import AVFoundation

struct LearnToConectCard: View {
    
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
    @State private var userInput: String = ""
    
    @State private var IntentosIncorrectos = 0
    
    private let synthesizer = AVSpeechSynthesizer()
    
    var LearnWord: LearnToConectTypes
    var index: Int
    
    @State var BtnEjemplo = false
    @State var BtnPracticar = false
    @State var BtnExplicacion = false
    
    
    var body: some View {
        VStack(spacing: 16) {
            // Círculo con texto en el centro
            HStack{
                Text("\(index). \(LearnWord.word)")
                    .font(.system(size: 25))
                    .foregroundColor(Color.azulMedium)
                
                Spacer()
            }
            .padding(.horizontal,20)
            
            HStack{
                Text("\(LearnWord.definition)")
                Spacer()
            }
            .padding(.top,-15)
            .padding(.horizontal,45)
            
            HStack{
                if(!BtnEjemplo){
                    Image(systemName: "restart")
                        .foregroundColor(Color.azulMedium)
                        .rotationEffect(.degrees(180))
                }
                
                Text("Ejemplos")
                    .foregroundColor(Color.azulMedium)
                    .onTapGesture {
                        BtnEjemplo = !BtnEjemplo
                        ActivarPalabraVocab(LearnWord.word, TxtEng: &TxtEng, TxtSpa: &TxtSpa)
                    }
                
                if(BtnEjemplo){
                    Image(systemName: "circle.dashed")
                        .foregroundColor(Color.azulMedium)
                }
                
                Spacer()
            }
            .padding(.horizontal,20)
            
            if(BtnEjemplo){
                VStack(alignment: .leading){
                    Text("\(TxtSpa)-\(TxtEng)")
                        .padding(.horizontal,20)
                    
                   
                }
            }
            
            if(BtnPracticar){
                VStack{
                    HStack{
                        Text("¿Cómo dirías?")
                        Text(TxtSpa)
                            .foregroundColor(Color.azulMedium)
                        Spacer()
                    }
                    .padding(.horizontal,20)
                    
                    
                    SwiftSpeech.RecordButton()
                        .swiftSpeechRecordOnHold(sessionConfiguration: .init(locale: Locale(identifier: "en_US")),
                                                 animation: .default,
                                                 distanceToCancel: 50)
                        .onRecognizeLatest(update: $userInput)
                        .frame(width: 70, height: 70)  // Ajusta el tamaño del botón
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .onChange(of: userInput) { newValue in
                            checkAnswer()
                        }
                }
                
                if(IntentosIncorrectos >= 2){
                    HStack{
                        Text("La respuesta correcta es: ")
                        Text("\(TxtEng)")
                            .foregroundColor(Color.azulMedium)
                        Spacer()
                    }
                    .padding(.horizontal,20)
                }
            }
        
            
            if(BtnExplicacion){
                Text("\(LearnWord.explanation)")
                    .padding(.horizontal,20)
            }
                
            
            
            
            HStack{
                
                btnCard(Title: "EXPLICACION", IsSelected: BtnExplicacion)
                    .onTapGesture {
                        BtnEjemplo = false
                        BtnPracticar = false
                        BtnExplicacion = true
                    }
                
                btnCard(Title: "PRACTICAR", IsSelected: BtnPracticar)
                    .onTapGesture {
                        BtnEjemplo = false
                        BtnPracticar = true
                        BtnExplicacion = false
                        practice()
                    }
                
                //
                
                
            }
            .padding(.horizontal,20)
            
            // Línea separadora
            dashedLines()
        }
        .padding(.vertical)
        .background(Color.white)
        .cornerRadius(10)
        .foregroundColor(.gray)
        .onTapGesture {
            BtnEjemplo = false
            BtnPracticar = false
            BtnExplicacion = false
        }
    }
    
    private func configureAudioSession() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default, options: [.duckOthers, .interruptSpokenAudioAndMixWithOthers])
            try audioSession.setActive(true)
        } catch {
            print("Error configurando la sesión de audio: \(error)")
        }
    }
    
    private func speak(text: String,lang:String) {
        configureAudioSession()
        
        // Detener cualquier habla en curso
        if synthesizer.isSpeaking {
            synthesizer.stopSpeaking(at: .immediate)
        }
        
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: lang)  // Asegúrate de usar el código de idioma correcto
        utterance.rate = 0.5  // Ajusta la velocidad según tus necesidades
        utterance.pitchMultiplier = 1.0  // Ajusta el tono según tus necesidades
        
        synthesizer.speak(utterance)
    }
    
    private func checkAnswer() {
        let correctAnswer = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let userAnswer = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        if correctAnswer == userAnswer {
            speak(text: "Correcto", lang: "es-ES")
            practice()
            // Aquí puedes agregar una acción adicional, como mostrar una alerta o cambiar el color del texto
        } else {
            speak(text: "Incorrecto", lang: "es-ES")
            // Aquí puedes agregar una acción adicional, como mostrar una alerta o cambiar el color del texto
            IntentosIncorrectos += 1
        }
    }
    
    private func practice(){
        ActivarPalabraVocab(LearnWord.word, TxtEng: &TxtEng, TxtSpa: &TxtSpa)
        speak(text: "Como dirias?: \(TxtSpa)", lang: "es-ES")
    }
    
    private struct btnCard: View {
        var Title : String
        var IsSelected: Bool
        var body: some View {
            VStack{
                Text(Title)
                    .font(.footnote)
                    .padding(.vertical,17)
                    .padding(.horizontal,10)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(IsSelected ? Color.azulMedium : Color("blanco"))
            .cornerRadius(12)
            .border(IsSelected ? Color("blanco") : Color.azulMedium , width: 1.5)
            .foregroundColor(IsSelected ? Color("blanco") : Color.azulMedium)
            .bold()
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
    
    private struct dashedLines: View {
        var body: some View {
            HStack(spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/){
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Rectangle()
                    .frame(height: 1)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                
            }
        }
    }
}

//PREVIEW
struct LearnToConect_Previews: PreviewProvider {
    @State static var indexSeleccionado = 1
    
    static var previews: some View {
        VStack{
            LearnToConectCard(LearnWord: LearnToConectTypes(word: "And", definition: "y", explanation: "Esto es una explicacion de prueba para and"), index: 1)
        }
    }
}

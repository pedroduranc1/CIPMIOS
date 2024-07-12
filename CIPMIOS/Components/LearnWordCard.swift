//
//  LearnWordCard.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import SwiftUI
import SwiftSpeech
import AVFoundation

struct LearnWordCard: View {
    
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
    @State private var userInput: String = ""
    
    private let synthesizer = AVSpeechSynthesizer()
    
    var LearnWord: LearnWordTypes
    var index: Int
    
    @State var BtnEjemplo = false
    @State var BtnPracticar = false
    @State var BtnExplicacion = false
    
    var body: some View {
        VStack(spacing: 16) {
            // Círculo con texto en el centro
            ZStack {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 120, height: 100)
                Text("Palabra \(index + 1)")
                    .foregroundColor(.blue)
            }
            
            // Título principal
            Text(LearnWord.word)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Subtítulo en cursiva
            Text(LearnWord.definition)
                .font(.subheadline)
                .italic()
                .multilineTextAlignment(.center)
            
            if(BtnExplicacion){
                Text(LearnWord.explanation)
                
                Spacer()
                    .frame(height: 20)
            }
            
            if(BtnPracticar){
                VStack{
                    Text(TxtSpa)
                    
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
            }
            
            if(BtnEjemplo){
                VStack(alignment: .leading){
                    Text("Spanish: \(TxtSpa)")
                        .padding(.horizontal)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    Text("English: \(TxtEng)")
                        .padding(.horizontal)
                }
            }
            
            HStack{
                btnCard(Title: "EJEMPLOS", IsSelected: BtnEjemplo)
                .onTapGesture {
                    BtnEjemplo = true
                    BtnPracticar = false
                    BtnExplicacion = false
                    
                    //ActivarGeneradorMedianteOpcion(LearnStruc.title, in: Generator(), TxtEng: &TxtEng, TxtSpa: &TxtSpa)
                }
                
                btnCard(Title: "PRACTICAR", IsSelected: BtnPracticar)
                .onTapGesture {
                    BtnEjemplo = false
                    BtnPracticar = true
                    BtnExplicacion = false
                    //practice()
                }
                
                //
                btnCard(Title: "EXPLICACION", IsSelected: BtnExplicacion)
                .onTapGesture {
                    BtnEjemplo = false
                    BtnPracticar = false
                    BtnExplicacion = true
                }
                
            }
            // Línea separadora
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.horizontal)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
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
            //practice()
            // Aquí puedes agregar una acción adicional, como mostrar una alerta o cambiar el color del texto
        } else {
            speak(text: "Incorrecto", lang: "es-ES")
            // Aquí puedes agregar una acción adicional, como mostrar una alerta o cambiar el color del texto
        }
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
            .background(IsSelected ? Color("azul") : Color("blanco"))
            .cornerRadius(8)
            .border(IsSelected ? Color("blanco") : Color.blue , width: 1.5)
            .foregroundColor(IsSelected ? Color("blanco") : Color("azul"))
            .bold()
            .clipShape(RoundedRectangle(cornerRadius: 5))
        }
    }
}

#Preview {
    ContentView()
}

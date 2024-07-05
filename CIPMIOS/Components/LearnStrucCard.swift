//
//  LearnStrucCard.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/7/24.
//

import SwiftUI
import SwiftSpeech
import AVFoundation

struct LearnStrucCard: View {
    @Binding var IndexSeleccionado: Int
    @State private var showModal = false
    @State var ShowExpla = false
    
    @State var BtnEjemplo = false
    @State var BtnPracticar = false
    @State var BtnExplicacion = false
    
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
    @State private var userInput: String = ""
    
    private let synthesizer = AVSpeechSynthesizer()
    
    var LearnStruc: LearnStrucTypes
    
    
    var body: some View {
        VStack(spacing: 16) {
            // Círculo con texto en el centro
            ZStack {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 120, height: 100)
                Text("Structure \(LearnStruc.lessonNumber)")
                    .foregroundColor(.blue)
            }
            
            // Título principal
            Text(LearnStruc.title)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Subtítulo en cursiva
            Text(LearnStruc.definition)
                .font(.subheadline)
                .italic()
                .multilineTextAlignment(.center)
            
            if(BtnExplicacion){
                Text(LearnStruc.explanation)
                
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
                VStack{
                    Text("EJEMPLOS")
                        .padding(.vertical,15)
                        .padding(.horizontal,10)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(BtnEjemplo ? Color("azul") : Color("blanco"))
                .cornerRadius(8)
                .border(BtnEjemplo ? Color("blanco") : Color.blue , width: 1.5)
                .foregroundColor(BtnEjemplo ? Color("blanco") : Color("azul"))
                .onTapGesture {
                    BtnEjemplo = true
                    BtnPracticar = false
                    BtnExplicacion = false
                    
                    ActivarGeneradorMedianteOpcion(LearnStruc.title, in: Generator(), TxtEng: &TxtEng, TxtSpa: &TxtSpa)
                }
                .bold()
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
                VStack{
                    Text("PRACTICAR")
                        .padding(.vertical,15)
                        .padding(.horizontal,10)
                }
                .frame(maxWidth: .infinity)
                .background(BtnPracticar ? Color("azul") : Color("blanco"))
                .cornerRadius(8)
                .border(BtnPracticar ? Color("blanco") : Color.blue , width: 1.5)
                .foregroundColor(BtnPracticar ? Color("blanco") : Color("azul"))
                .onTapGesture {
                    BtnEjemplo = false
                    BtnPracticar = true
                    BtnExplicacion = false
                    
                    ActivarGeneradorMedianteOpcion(LearnStruc.title, in: Generator(), TxtEng: &TxtEng, TxtSpa: &TxtSpa)
                    speak(text: "Como dirias? : \(TxtSpa)", lang: "es-ES")
                    
                }
                .bold()
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
                VStack{
                    Text("EXPLICACION")
                        .font(.footnote)
                        .padding(.vertical,17)
                        .padding(.horizontal,10)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(BtnExplicacion ? Color("azul") : Color("blanco"))
                .cornerRadius(8)
                .border(BtnExplicacion ? Color("blanco") : Color.blue , width: 1.5)
                .foregroundColor(BtnExplicacion ? Color("blanco") : Color("azul"))
                .onTapGesture {
                    BtnEjemplo = false
                    BtnPracticar = false
                    BtnExplicacion = true
                }
                .bold()
                .clipShape(RoundedRectangle(cornerRadius: 5))
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
        .alert(isPresented: $showModal) {
            Alert(
                title: Text("Opción en desarrollo"),
                message: Text("Esta opción aún no está disponible."),
                dismissButton: .default(Text("OK"))
            )
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
}


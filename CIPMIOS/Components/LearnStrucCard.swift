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
    
    var index: Int
    
    
    var body: some View {
        VStack(spacing: 16) {
            // Círculo con texto en el centro
            ZStack {
                VStack{
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "play.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text("Clase #\(index + 1)")
                            .font(.system(size: 29))
                            .foregroundColor(.white)
                            .padding(.leading,2)
                            .padding(.vertical,5)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.azulMedium)
                    .cornerRadius(16)
                }
                .padding(.horizontal,60)
            }
            
            // Título principal
            VStack{
                HStack{
                    Text("Responde a la pregunta: ")
                    Spacer()
                }
                HStack{
                    Text(LearnStruc.definition)
                        .foregroundColor(Color.azulMedium)
                    Spacer()
                }
            }
            .padding(.horizontal,20)
            
            //ESTRUCTURA
            VStack{
                HStack{
                    Text(LearnStruc.title)
                        .font(.system(size: 22))
                        .foregroundColor(Color.azulMedium)
                    Spacer()
                }
            }
            .padding(.horizontal,20)
            
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
                        .onChange(of: userInput) { newValue in
                            checkAnswer()
                        }
                }
            }
            
            if(BtnEjemplo){
                VStack(alignment: .leading){
                    HStack(alignment: .top){
                      Text("Spanish:")
                            
                        Text(TxtSpa)
                            .foregroundColor(Color.azulMedium)
                    }
                    .padding(.horizontal)
                    
                    dashedLines()
                    
                    HStack(alignment: .top){
                      Text("English:")
                        Text(TxtEng)
                            .foregroundColor(Color.azulMedium)
                    }
                    .padding(.horizontal)
                }
            }
            
            HStack{
                btnCard(Title: "EJEMPLOS", IsSelected: BtnEjemplo)
                .onTapGesture {
                    BtnEjemplo = true
                    BtnPracticar = false
                    BtnExplicacion = false
                    
                    ActivarGeneradorMedianteOpcion(LearnStruc.title, in: Generator(), TxtEng: &TxtEng, TxtSpa: &TxtSpa)
                }
                
                btnCard(Title: "PRACTICAR", IsSelected: BtnPracticar)
                .onTapGesture {
                    BtnEjemplo = false
                    BtnPracticar = true
                    BtnExplicacion = false
                    practice()
                }
                
                
                btnCard(Title: "EXPLICACION", IsSelected: BtnExplicacion)
                .onTapGesture {
                    BtnEjemplo = false
                    BtnPracticar = false
                    BtnExplicacion = true
                }
                
            }
            .padding(.horizontal)
        }
        .padding(.vertical,40)
        .padding(.horizontal,20)
        .background(index % 2 == 0 ? Color.grisLight : Color.white)
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
    
    private func practice(){
        ActivarGeneradorMedianteOpcion(LearnStruc.title, in: Generator(), TxtEng: &TxtEng, TxtSpa: &TxtSpa)
        speak(text: "Como dirias? : \(TxtSpa)", lang: "es-ES")
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
        }
    }
    
    private struct btnCard: View {
        var Title : String
        var IsSelected: Bool
        var body: some View {
            VStack{
                Text(Title)
                    .font(.system(size: 10))
                    .padding(.vertical,17)
                    .padding(.horizontal,10)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(IsSelected ? Color.azulMedium : Color("blanco"))
            .cornerRadius(8)
            .border(IsSelected ? Color("blanco") : Color.azulMedium , width: 1.5)
            .foregroundColor(IsSelected ? Color("blanco") : Color.azulMedium)
            .bold()
            .clipShape(RoundedRectangle(cornerRadius: 5))
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
struct LearnStrucCard_Previews: PreviewProvider {
    @State static var indexSeleccionado = 1
    
    static var previews: some View {
        VStack{
            LearnStrucCard(
                IndexSeleccionado: $indexSeleccionado,  // Proporciona el Binding real aquí
                ShowExpla: false,
                BtnEjemplo: false,
                BtnPracticar: false,
                BtnExplicacion: false,
                LearnStruc: LearnStrucTypes(
                    title: "Present Simple",
                    definition: "Qué pasa?",
                    explanation: "Simple Present Definition",
                    level: 1,
                    lessonNumber: 1
                ),
                index: 10
            )
        }

    }
}


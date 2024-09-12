//
//  SpeakingDificil.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 12/3/24.
//

import SwiftUI
import SwiftSpeech
import AVFoundation

struct SpeakingDificil: View {
    @Binding var IndexSeleccionado: Int
    private let synthesizer = AVSpeechSynthesizer()
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var strucOptionsFree: [String] = []
    @State private var StructureOptionsFree = ["Conectores Standar Presente Simple", "Conectores Standar Presente Continuo"]
    @State private var strucOptionsPremium: [String] = []
    @State private var StructureOptionsPremium = ["Conectores Standar Presente Simple", "Conectores Standar Presente Continuo"]
    
    //VARIABLES POR DEFECTO
    @State private var selectedOption: String? = "Conectores Standar Presente Simple"
    
    //VARIABLES DE SPEAKING FACIL
    @State private var videoURL: URL?
    @State private var isEmpezarClicked = false
    @State private var isCorrect = true
    @State private var userInput: String = ""
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
    @State private var TxtPalabraClave = ""
    @State private var StatusColor: String = "blanco"
    
    //VARIABLES DE FUNCIONABILIDAD
    @State private var IsPremium: Bool = GlobalData.shared.isPremium
    @State private var BtnSelected: Float = 0
    @State private var currentTimeInSeconds: Double = 0 // Estado para el tiempo actual del vídeo
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
    
    @ObservedObject private var keyboard = KeyboardObserver()
    @State private var isTextFieldFocused: Bool = false
    @FocusState private var focusedField: Field?
    
    enum Field {
        case input
    }
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 0) {
                    
                    // SELECT BOX
                    PickerCustom(defaultOption: "Present Simple", selectedOption: $selectedOption, options: IsPremium ? strucOptionsPremium : strucOptionsFree) {
                        handleSelectedOptionChange()
                    }
                    
                    // VIDEO VIEW
                    if let url = videoURL {
                        NormalVideoPlayer(videoURL: url)
                            .frame(height: 220)
                            .padding(.horizontal, 20)
                    }
                    
                    HStack{
                        Text("Practice It")
                            .font(.system(size: 22))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .underline(color:.blue)
                        
                        Spacer()
                    }
                    .padding(.top,20)
                    .padding(.horizontal,20)
                    
                    VStack{
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 30)
                    
                    // Mostrar el VStack si el botón "Empezar" se ha presionado
                    if isEmpezarClicked {
                        VStack {
                            HStack(alignment:.top){
                                Text("Palabra clave: ")
                                Text(TxtPalabraClave)
                                    .underline(true,color: Color("azul"))
                                    .foregroundColor(Color("azul"))
                                
                                Spacer()
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                            .padding(.horizontal,20)
                            
                            HStack(alignment:.top){
                                Text("Como dirias?: ")
                                Text(TxtSpa)
                                
                                Spacer()
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                            .padding(.horizontal,20)
                            
                            HStack() {
                                // TextField con color de fondo basado en StatusColor
                                TextField("Escribe tu respuesta o presiona el microfono", text: $userInput, onEditingChanged: { isEditing in
                                    isTextFieldFocused = isEditing
                                    if isEditing {
                                        proxy.scrollTo(Field.input, anchor: .bottom)
                                    }
                                })
                                .focused($focusedField, equals: .input)
                                .foregroundColor(.black)
                                .padding(.vertical, 10)
                                .background(CIPMIOS.getColorForStatus(StatusColor: StatusColor))
                                .cornerRadius(8)
                                .textFieldStyle(PlainTextFieldStyle())
                                .autocapitalization(.none)
                                .id(Field.input)
                                
                                Spacer()
                                
                                // Imagen a la izquierda del TextField
                                Button(action: {}) {
                                    SwiftSpeech.RecordButton()
                                        .swiftSpeechRecordOnHold(sessionConfiguration: .init(locale: Locale(identifier: "en_US")),
                                                                 animation: .default,
                                                                 distanceToCancel: 50)
                                        .onRecognizeLatest(update: $userInput)
                                        .frame(width: 45, height: 45)  // Ajusta el tamaño del botón
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                            }
                            .padding(.horizontal, 20)
                            .padding(.bottom, keyboard.keyboardHeight)
                        }
                    }
                    
                    if !isCorrect && isEmpezarClicked {
                        HStack(alignment:.top){
                            Text("Respuesta Correcta: ")
                            Text(TxtEng)
                                .underline(true,color: Color("azul"))
                                .foregroundColor(Color("azul"))
                                .lineLimit(nil)  // Mostrar el texto completo, sin truncar
                                .fixedSize(horizontal: false, vertical: true)
                                .onTapGesture {
                                    speak(text: TxtEng,lang: "en-US")
                                }
                            Spacer()
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:20)
                        .padding(.horizontal,25)
                        .padding(.top,20)
                    }
                    
                    VStack(alignment:.leading){
                        
                    }
                    .padding(.bottom,25)
                    .padding(.horizontal,20)
                    
                    if isEmpezarClicked {
                        //BTN EMPEZAR
                        BtnEmpezar(TextBtn: "Chequea tu respuesta", action: {
                            ComprobarRespuesta()
                        })
                        .padding(.top,60)
                    }
                    
                    
                    if !isEmpezarClicked {
                        //BTN EMPEZAR
                        BtnEmpezar(TextBtn: "Empezar", action: {
                            isEmpezarClicked.toggle()
                            SetDificultad()
                        })
                        .padding(.top,30)
                    }
                }
                .onAppear {
                    SwiftSpeech.requestSpeechRecognitionAuthorization()
                    // Inicializa videoURL cuando la vista aparece
                    if let lesson = GlobalData.shared.selectedLesson {
                        strucOptionsPremium = [lesson]
                        strucOptionsFree = [lesson]
                        selectedOption = lesson
                        videoURL = getVideoURL(for: lesson, currentPage: "Speaking Dificil")
                    } else {
                        strucOptionsPremium = StructureOptionsPremium
                        strucOptionsFree = StructureOptionsFree
                        videoURL = getVideoURL(for: "Conectores Standar Presente Simple", currentPage: "Speaking Dificil")
                    }
                }
            }
        }
        .padding(.bottom, isTextFieldFocused ? keyboard.keyboardHeight : 0)  // Añadir padding inferior solo cuando el TextField está enfocado
        .onTapGesture {
            self.endEditing()
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "Conectores Standar Presente Simple", currentPage: "Speaking Dificil")
        
        //LimpiarDatos()
        isEmpezarClicked = false
    }
    
    private func LimpiarDatos(){
        Limpiar(TxtEng: $TxtEng, TxtSpa: $TxtSpa, TxtPalabraClave: $TxtPalabraClave, StatusColor: $StatusColor, userInput: $userInput)
    }
    
    private func SetDificultad(){
        
        if !isEmpezarClicked {
            isEmpezarClicked = true
        }
        
        isCorrect = true
        LimpiarDatos()
        
        SpeakDif(selectedOption: selectedOption ?? "Conectores Standar Presente Simple", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
        //print("EMPEZO SPEAKING")
        speak(text: "Como dirias?: "+TxtSpa,lang: "es-ES")
        
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    
        
        if palabraCorrecta == palabraIngresada {
            StatusColor = "success"
            isCorrect = true
            speak(text: "¡Correcto!",lang: "es-ES")
            LimpiarDatos()
            SetDificultad()
        } else {
            StatusColor = "error"
            isCorrect = false
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
    
    private func getColorForStatus() -> Color {
        switch StatusColor {
        case "success":
            return .green
        case "error":
            return .red
        default:
            return .clear
        }
    }
    
    private func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

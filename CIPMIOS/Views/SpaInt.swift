//
//  SpaInt.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 11/6/24.
//

import SwiftUI
import SwiftSpeech
import AVFoundation

struct SpaInt: View {
    //VARIABLE DE LA PAGINA
    //@Binding var IndexSeleccionado: Int
    private let synthesizer = AVSpeechSynthesizer()
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var strucOptionsFree: [String] = []
    @State private var StructureOptionsFree = ["Por Sujeto", "Por Preposicion"]
    @State private var LevelOptionsFree = ["0 a 100"]
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var strucOptionsPremium: [String] = []
    @State private var StructureOptionsPremium = ["Por Sujeto","Por Preposicion","Por Objeto","Interferencia Reflexiva","Interferencia Pasiva"]
    
    @State private var LevelOptionsPremium = ["0 a 100","100 a 200","200 a 300"]
    
    //VARIABLES POR DEFECTO
    @State private var selectedOption: String? = "Por Sujeto"
    @State private var selectedRango: String? = "0 a 100"
    
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
                    VideoPlayerView(videoURL: videoURL,
                                    currentTimeInSeconds: $currentTimeInSeconds,
                                    seekTimeInSeconds: $seekTimeInSeconds,
                                    onStop: {
                        // Aquí manejas lo que sucede cuando el video se detiene
                        print("El video ha terminado.")
                    }, isButtonPressed: $isButtonPressed)
                    .frame(height: 220)
                    .padding(.horizontal, 20)
                    .onDisappear {
                        // Detener el video cuando la vista desaparece
                        videoURL = getVideoURL(for: "", currentPage: "SpaInt")
                    }
                    
                    //TEXT
                    HStack{
                        Text("Lee la Frase y escribela en ingles")
                            .font(.subheadline)
                        Spacer()
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical,15)
                    
                    //SELECT BOX RANGO
                    PickerCustom(defaultOption: "0 a 100", selectedOption: $selectedRango, options: IsPremium ? LevelOptionsPremium : LevelOptionsFree) {
                        handleSelectedOptionChange()
                    }
                    .padding(.top,-25)
                    
                    // Mostrar el VStack si el botón "Empezar" se ha presionado
                    if isEmpezarClicked {
                        VStack {
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
                                .background(getColorForStatus())
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
                        .padding(.bottom,20)
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
                        .padding(.horizontal,20)
                        .padding(.top,15)
                    }
                    VStack(alignment:.leading){
                        
                    }
                    .padding(.bottom,25)
                    .padding(.horizontal,20)
                    
                    
                    
                    if isEmpezarClicked {
                        //BTN EMPEZAR
                        BtnEmpezar(TextBtn: "Siguiente oracion", action: {
                            practice()
                        })
                        
                        Spacer()
                        
                        //BTN EMPEZAR
                        BtnEmpezar(TextBtn: "Chequea tu respuesta", action: {
                            ComprobarRespuesta()
                        })
                        
                    }
                    
                    if !isEmpezarClicked {
                        //BTN EMPEZAR
                        BtnEmpezar(TextBtn: "Empezar", action: {
                            
                            isEmpezarClicked.toggle()
                            practice()
                        })
                    }
                }
            }
        }
        .onAppear{
            if let lesson = GlobalData.shared.selectedLesson {
                strucOptionsPremium = [lesson]
                strucOptionsFree = [lesson]
                selectedOption = lesson
                videoURL = getVideoURL(for: lesson, currentPage: "SpaInt")
            } else {
                strucOptionsPremium = StructureOptionsPremium
                strucOptionsFree = StructureOptionsFree
                videoURL = getVideoURL(for: "Por Sujeto", currentPage: "SpaInt")
            }
        }
        .padding(.bottom, isTextFieldFocused ? keyboard.keyboardHeight : 0)  // Añadir padding inferior solo cuando el TextField está enfocado
        .onTapGesture {
            self.endEditing()
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func practice(){
        SpaIntGen(selectedOption: selectedOption ?? "Por Sujeto", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
        speak(text: TxtSpa, lang: "es-ES")
    }
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "Por Sujeto", currentPage: "SpaInt")
        
        LimpiarDatos()
        isEmpezarClicked = false
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        if palabraCorrecta == palabraIngresada {
            print("correcto")
            StatusColor = "success"
            isCorrect = true
            speak(text: "¡Correcto!",lang: "es-ES")
            LimpiarDatos()
            practice()
        } else {
            StatusColor = "error"
            isCorrect = false
        }
    }
    
    private func LimpiarDatos(){
        Limpiar(TxtEng: $TxtEng, TxtSpa: $TxtSpa, TxtPalabraClave: $TxtPalabraClave, StatusColor: $StatusColor, userInput: $userInput)
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

#Preview {
    SpaInt()
}

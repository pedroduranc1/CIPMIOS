// SpeakingFacil.swift
import SwiftUI
import SwiftSpeech
import AVFoundation




struct SpeakingFacil: View {
    //VARIABLE DE LA PAGINA
    @Binding var IndexSeleccionado: Int
    
    private let synthesizer = AVSpeechSynthesizer()
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var strucOptionsFree: [String] = []
    @State private var StructureOptionsFree = ["Present Simple", "Present Continuous"]
    @State private var LevelOptionsFree = ["0 a 100"]
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var strucOptionsPremium: [String] = []
    @State private var StructureOptionsPremium = ["Present Simple", "Present Continuous", "Present Perfect", "Present Perfect Continuous","Past Simple", "Past Continuous", "Past Perfect", "Past Perfect Continuous","Future Simple", "Future Continuous", "Future Perfect", "Future Perfect Continuous","Would Simple", "Would Continuous", "Would Perfect", "Would Perfect Continuous"]
    
    @State private var LevelOptionsPremium = ["0 a 100","100 a 200","200 a 300"]
    
    //VARIABLES POR DEFECTO
    @State private var selectedOption: String? = "Present Simple"
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
    @State private var IsPremium: Bool = false
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
                        videoURL = getVideoURL(for: "", currentPage: "Speaking Facil")
                    }
                    
                    //SELECT BOX RANGO
                    PickerCustom(defaultOption: "0 a 100", selectedOption: $selectedRango, options: IsPremium ? LevelOptionsPremium : LevelOptionsFree) {
                        handleSelectedOptionChange()
                    }
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            Button(action:{
                                BtnSelected = 1
                                SetDificultad()
                            }){
                                VStack{
                                    Text("BASICO")
                                        .padding(.vertical,5)
                                        .padding(.horizontal,10)
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .background(BtnSelected == 1 ? Color("azul") : Color("blanco"))
                                .cornerRadius(8)
                                .border(BtnSelected == 1 ? Color("blanco") : Color.blue , width: 1.5)
                                .foregroundColor(BtnSelected == 1 ? Color("blanco") : Color("azul"))
                                .bold()
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                
                            }
                            
                            Button(action:{
                                BtnSelected = 2
                                SetDificultad()
                            }){
                                VStack{
                                    Text("NORMAL")
                                        .padding(.vertical,5)
                                        .padding(.horizontal,10)
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .background(BtnSelected == 2 ? Color("azul") : Color("blanco"))
                                .cornerRadius(8)
                                .border(BtnSelected == 2 ? Color("blanco") : Color.blue , width: 1.5)
                                .foregroundColor(BtnSelected == 2 ? Color("blanco") : Color("azul"))
                                .bold()
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                            
                            if IsPremium {
                                Button(action:{
                                    BtnSelected = 3
                                    SetDificultad()
                                }){
                                    VStack{
                                        Text("INTERMEDIO")
                                            .padding(.vertical,5)
                                            .padding(.horizontal,10)
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                    .background(BtnSelected == 3 ? Color("azul") : Color("blanco"))
                                    .cornerRadius(8)
                                    .border(BtnSelected == 3 ? Color("blanco") : Color.blue , width: 1.5)
                                    .foregroundColor(BtnSelected == 3 ? Color("blanco") : Color("azul"))
                                    .bold()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                }
                            }
                            
                            if IsPremium {
                                Button(action:{
                                    BtnSelected = 4
                                    SetDificultad()
                                }){
                                    VStack{
                                        Text("AVANZADO")
                                            .padding(.vertical,5)
                                            .padding(.horizontal,10)
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                    .background(BtnSelected == 4 ? Color("azul") : Color("blanco"))
                                    .cornerRadius(8)
                                    .border(BtnSelected == 4 ? Color("blanco") : Color.blue , width: 1.5)
                                    .foregroundColor(BtnSelected == 4 ? Color("blanco") : Color("azul"))
                                    .bold()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                }
                            }
                            
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,20)
                        .padding(.bottom,10)
                    }
                    
                    
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
                        BtnEmpezar(TextBtn: "Chequea tu respuesta", action: {
                            ComprobarRespuesta()
                        })
                    }
                    
                    if !isEmpezarClicked {
                        //BTN EMPEZAR
                        BtnEmpezar(TextBtn: "Empezar", action: {
                            
                            isEmpezarClicked.toggle()
                            SetDificultad()
                        })
                    }
                    
                }
                .onAppear {
                    SwiftSpeech.requestSpeechRecognitionAuthorization()
                    
                    // Inicializa videoURL cuando la vista aparece
                    if let lesson = GlobalData.shared.selectedLesson {
                        strucOptionsPremium = [lesson]
                        strucOptionsFree = [lesson]
                        selectedOption = lesson
                        videoURL = getVideoURL(for: lesson, currentPage: "Speaking Facil")
                    } else {
                        strucOptionsPremium = StructureOptionsPremium
                        strucOptionsFree = StructureOptionsFree
                        videoURL = getVideoURL(for: "Present Simple", currentPage: "Speaking Facil")
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
        videoURL = getVideoURL(for: selectedOption ?? "Present Simple", currentPage: "Speaking Facil")
        
        LimpiarDatos()
        isEmpezarClicked = false
    }
    
    private func LimpiarDatos(){
        Limpiar(TxtEng: $TxtEng, TxtSpa: $TxtSpa, TxtPalabraClave: $TxtPalabraClave, StatusColor: $StatusColor, userInput: $userInput)
    }
    
    private func SetDificultad(){
        if BtnSelected == 0 {
            BtnSelected = 1
        }
        
        if !isEmpezarClicked {
            isEmpezarClicked = true
        }
        
        
        switch BtnSelected{
        case 1:
            isCorrect = true
            LimpiarDatos()
            Dificultad1(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
            speak(text: "Como dirias?: "+TxtSpa,lang: "es-ES")
        case 2:
            isCorrect = true
            LimpiarDatos()
            Dificultad2(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
            speak(text: "Como dirias?: "+TxtSpa,lang: "es-ES")
        case 3:
            isCorrect = true
            LimpiarDatos()
            Dificultad3(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
            speak(text: "Como dirias?: "+TxtSpa,lang: "es-ES")
        case 4:
            isCorrect = true
            LimpiarDatos()
            Dificultad4(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
            speak(text: "Como dirias?: "+TxtSpa,lang: "es-ES")
        default:
            break
        }
        
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

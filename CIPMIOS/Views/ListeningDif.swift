//
//  ListeningDif.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 14/3/24.
//

import SwiftUI

struct ListeningDif: View {
    @Binding var IndexSeleccionado: Int
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var StructureOptionsFree = ["Steve Jobs 1"]
    @State private var StructureOptionsPremium = ["Steve Jobs 1", "Kot Fishing 1","Kot Fishing 2","Helicoptero 1","Helicoptero 2"]
    
    //VARIABLES POR DEFECTO
    @State private var selectedOption: String? = "Steve Jobs 1"
    
    //VARIABLES DE SPEAKING FACIL
    @State private var videoURL: URL?
    @State private var isEmpezarClicked = false
    
    @State private var StatusColor: String = "blanco"
    @State private var userInput: String = ""
    
    //VARIABLES DE FUNCIONABILIDAD
    @State private var IsPremium: Bool = true
    @State private var currentTimeInSeconds: Double = 0 // Estado para el tiempo actual del vídeo
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
    @State var IsExp = false
    @State var IsClip = false
    
    @State private var isCorrect = true
    @State private var TxtEng = "hola mundo"
    @State private var TxtSpa = ""
    @State private var TxtPalabraClave = ""
    @State private var IndexNum = 0
    @State private var ExpUrl: URL?
    
    @State var showToast = false
    @State var Message = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Conscious Interference", IndexSeleccionado: $IndexSeleccionado)
                
                // SELECT BOX
                PickerCustom(defaultOption: "Steve Jobs 1", selectedOption: $selectedOption, options: IsPremium ? StructureOptionsPremium : StructureOptionsFree) {
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
                    videoURL = getVideoURL(for: "", currentPage: "Listening Dificil")
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
                
                HStack{
                    Text("Pon atencion al clip a continuacion y cuando termine haz click en empezar practica")
                        .font(.system(size: 16))
                    
                    Spacer()
                }
                .padding(.top,20)
                .padding(.horizontal,20)
                
                if !isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Empezar", action: {
                        isEmpezarClicked.toggle()
                        startTest()
                    })
                    .padding(.top,30)
                }
                
                if isEmpezarClicked{
                    HStack{
                        Text("\(IndexNum + 1)")
                            .frame(maxWidth: 15)
                            .font(.system(size: 27))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        // Usando TextInput y proporcionando la variable de estado
                        TextInput(userInput: $userInput, StatusColor: $StatusColor)
                    }
                    .padding(.top,20)
                    .padding(.horizontal,20)
                }
                
                if !isCorrect && isEmpezarClicked {
                    HStack(alignment:.top){
                        Text("Respuesta Correcta: ")
                        Text(TxtEng)
                            .underline(true,color: Color("azul"))
                            .foregroundColor(Color("azul"))
                            .lineLimit(nil)  // Mostrar el texto completo, sin truncar
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,25)
                    .padding(.top,5)
                    HStack(){
                        Button(action:{
                            videoURL = ExpUrl
                        }){
                            VStack {
                                Text("Ver explicacion")
                                    .font(.system(size: 16))
                                    .padding(.vertical,6)
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .border(Color.blue, width: 1.5)
                            .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                            
                        }
                        .frame(width: 150)
                        .padding(.horizontal,20)
                        Spacer()
                    }
                    .padding(.bottom,5)
                }
                
                
                if isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Chequea tu respuesta", action: {
                        ComprobarRespuesta()
                    })
                    .padding(.top,20)
                }
                
                if isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Mostrar Respuesta", action: {
                        MostrarResp()
                    })
                    .padding(.top,20)
                }
                
                
            }
            .overlay(content: {
                ToastCustom(message: Message, showToast: $showToast)
                    .padding(.bottom, 50)
            })
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "Steve Jobs 1", currentPage: "Listening Dificil")
            }
            .onChange(of: selectedOption) { oldValue, newValue in
                IndexNum = 0
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func startTest(){
        
        if let RachelCategoryData = DatosRachel.first(where: {$0.nombre == selectedOption}){
            let ClipsData = RachelCategoryData.clips
            
            if ClipsData.count > 1 && IndexNum < ClipsData.count  {
                let dataNecesaria = ClipsData[IndexNum]
                
                // Acceder a las tres variables del segundo ClipRachel
                let respuesta = dataNecesaria.respuesta
                let url = dataNecesaria.url
                let explicacion = dataNecesaria.explicacion
                
                TxtEng = respuesta
                videoURL = url
                ExpUrl = explicacion
            }
            else {
                IndexNum = 0
                isEmpezarClicked = false
                showToast = true
                Message = "Felicidades terminaste: \(String(describing: selectedOption)), continua con otro."
            }
        }
        else {
            print("No se encontró la categoría \(String(describing: selectedOption))")
        }
        
    }
    
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "Steve Jobs 1", currentPage: "Listening Dificil")
        
        //LimpiarDatos()
        isEmpezarClicked = false
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        if palabraCorrecta == palabraIngresada {
            StatusColor = "success"
            isCorrect = true
            LimpiarDatos()// Incrementar el número ya que la respuesta es correcta
            IndexNum += 1
            userInput = "" // Reiniciar el campo de entrada para la próxima pregunta
            startTest()
            
        } else {
            StatusColor = "error"
            isCorrect = false
            // No incrementamos IndexNum porque la respuesta es incorrecta
        }
    }
    
    private func LimpiarDatos(){
        Limpiar(TxtEng: $TxtEng, TxtSpa: $TxtSpa, TxtPalabraClave: $TxtPalabraClave, StatusColor: $StatusColor, userInput: $userInput)
    }
    
    
    private func MostrarResp(){
        isCorrect = false
    }
}


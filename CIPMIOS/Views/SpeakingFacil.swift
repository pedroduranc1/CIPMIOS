// SpeakingFacil.swift
import SwiftUI

struct SpeakingFacil: View {
    //VARIABLE DE LA PAGINA
    @Binding var IndexSeleccionado: Int
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS
    @State private var StructureOptions = ["Present Simple", "Present Continuous"]
    @State private var LevelOptions = ["0 a 100"]
    
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
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Structures", IndexSeleccionado: $IndexSeleccionado)
                
                // SELECT BOX
                PickerCustom(defaultOption: "Present Simple", selectedOption: $selectedOption, options: StructureOptions) {
                    handleSelectedOptionChange()
                }
                
                // VIDEO VIEW
                VideoPlayerView(videoURL: videoURL)
                    .frame(height: 220)
                    .padding(.horizontal, 20)
                
                //SELECT BOX RANGO
                PickerCustom(defaultOption: "0 a 100", selectedOption: $selectedRango, options: LevelOptions) {
                    handleSelectedOptionChange()
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
                        
                        // Usando TextInput y proporcionando la variable de estado
                        TextInput(userInput: $userInput, StatusColor: $StatusColor)
                        
                    }
                    
                }
                
                //BTN OPTIONS
                if isEmpezarClicked {
                    HStack{
                        Button(action:{}){
                            VStack{
                                Text("ORACION FACIL")
                                    .padding(.vertical,5)
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color("azul"))
                            .bold()
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            
                        }
                        
                        
                        Button(action:{}){
                            VStack{
                                Text("MAS DIFICIL")
                                    .padding(.vertical,5)
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .border(Color.blue, width: 1.5)
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                }
                
                
                if !isCorrect {
                    HStack(alignment:.top){
                        Text("Respuesta Correcta: ")
                        Text(TxtEng)
                            .underline(true,color: Color("azul"))
                            .foregroundColor(Color("azul"))
                        
                        Spacer()
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:20)
                    .padding(.horizontal,20)
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
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "Present Simple", currentPage: "Speaking Facil")
            }
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
        
        Dificultad1(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()

        if palabraCorrecta == palabraIngresada {
            print("correcto")
            StatusColor = "success"
            isCorrect = true
            LimpiarDatos()
            SetDificultad()
        } else {
            StatusColor = "error"
            isCorrect = false
        }
    }

}

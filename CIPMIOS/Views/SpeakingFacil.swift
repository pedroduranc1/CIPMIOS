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
    @State private var userInput: String = ""
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
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
                            Text(TxtEng)
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
                    .padding(.bottom,50)
                }
                
                if isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Chequea tu respuesta", action: {
                        ComprobarRespuesta()
                    })
                }
                
                if !isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Empezar", action: {
                        Dificultad1()
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
        
        isEmpezarClicked = false
    }
    
    private func Dificultad1(){
        isEmpezarClicked.toggle()
        
        //        print("Estructura: \(selectedOption ?? "Present Simple")")
        //        print("Rango: \(selectedRango ?? "0 a 100")")
        
        switch selectedOption {
        case "Present Simple":
            switch selectedRango{
            case "0 a 100":
                TxtEng = "Hello"
                TxtSpa = "Hola"
                
            default:
                break
            }
        default:
            break
        }
    }
    
    private func ComprobarRespuesta(){
        if TxtEng == userInput {
            print("paso")
            StatusColor = "success"
        } else {
            print("incorrecto")
            StatusColor = "error"
        }
    }
}

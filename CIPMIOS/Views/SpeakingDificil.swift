//
//  SpeakingDificil.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 12/3/24.
//

import SwiftUI

struct SpeakingDificil: View {
    @Binding var IndexSeleccionado: Int
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var StructureOptionsFree = ["Conectores Standar Presente Simple", "Conectores Standar Presente Continuo"]
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
    @State private var IsPremium: Bool = false
    @State private var BtnSelected: Float = 0
    @State private var currentTimeInSeconds: Double = 0 // Estado para el tiempo actual del vídeo
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Transiciones", IndexSeleccionado: $IndexSeleccionado)
                
                // SELECT BOX
                PickerCustom(defaultOption: "Present Simple", selectedOption: $selectedOption, options: IsPremium ? StructureOptionsPremium : StructureOptionsFree) {
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
                    videoURL = getVideoURL(for: "", currentPage: "Speaking Dificil")
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
                        
                        // Usando TextInput y proporcionando la variable de estado
                        TextInput(userInput: $userInput, StatusColor: $StatusColor)
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
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "Conectores Standar Presente Simple", currentPage: "Speaking Dificil")
            }
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
        
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    
        
        if palabraCorrecta == palabraIngresada {
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

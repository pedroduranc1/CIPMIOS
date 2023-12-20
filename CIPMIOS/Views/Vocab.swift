//
//  Vocab.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 15/12/23.
//

import SwiftUI

struct Vocab: View {
    //VARIABLE DE LA PAGINA
    @Binding var IndexSeleccionado: Int
    
    //VARIABLES POR DEFECTO
    @State private var selectedOption: String? = "0 a 50"
    
    //ARRAYS DE LOS RANGOS FREE
    @State private var StructureOptionsFree = ["0 a 50"]
    
    //ARRAY DE LOS RANGOS PREMIUM
    @State private var StructureOptionsPremium = ["0 a 50","50 a 100","100 a 150","150 a 200","200 a 250","250 a 300","300 a 350","350 a 400","400 a 450"]
    
    //VARIABLES DE FUNCIONABILIDAD
    @State private var IsPremium: Bool = false
    
    //VARIABLES DE VOCABULARY
    @State private var videoURL: URL?
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
    @State private var TxtPalabraClave = ""
    @State private var StatusColor: String = "blanco"
    @State private var userInput: String = ""
    @State private var isEmpezarClicked = false
    @State private var isCorrect = true
    
    var body: some View {
        ScrollView{
            VStack{
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Vocabulary", IndexSeleccionado: $IndexSeleccionado)
                
                // SELECT BOX
                PickerCustom(defaultOption: "0 a 50", selectedOption: $selectedOption, options: IsPremium ? StructureOptionsPremium : StructureOptionsFree) {
                    handleSelectedOptionChange()
                }
                
                // VIDEO VIEW
                VideoPlayerView(videoURL: videoURL, onStop: {
                    // Manejar la acción al detenerse (puedes poner cualquier código que desees ejecutar)
                    
                })
                .frame(height: 220)
                .padding(.horizontal, 20)
                .onDisappear {
                    // Detener el video cuando la vista desaparece
                    videoURL = getVideoURL(for: "", currentPage: "Vocabulary")
                }
                
                //Separador
                SeparadorPequeno()
                
                if isEmpezarClicked {
                    VStack{
                        
                    }
                    .padding(.vertical,10)
                }
                
                // Mostrar el VStack si el botón "Empezar" se ha presionado
                if isEmpezarClicked {
                    VStack(spacing:10) {
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
                    .padding(.horizontal,20)
                    .padding(.top,15)
                }
                
                if isEmpezarClicked {
                    VStack{
                        
                    }
                    .padding(.vertical,10)
                }
                
                if !isEmpezarClicked {
                    VStack{}
                        .padding(.vertical,50)
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
                        
                        isEmpezarClicked.toggle()
                        practice()
                    })
                }
            }
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "0 a 50", currentPage: "Vocabulary")
            }
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "0 a 50", currentPage: "Vocabulary")
        
        LimpiarDatos()
        isEmpezarClicked = false
    }
    
    private func practice(){
        VocabPractice(selectedRango: selectedOption ?? "0 a 50", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
    }
    
    private func LimpiarDatos(){
        Limpiar(TxtEng: $TxtEng, TxtSpa: $TxtSpa, TxtPalabraClave: $TxtPalabraClave, StatusColor: $StatusColor, userInput: $userInput)
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        if palabraCorrecta == palabraIngresada {
            print("correcto")
            StatusColor = "success"
            isCorrect = true
            LimpiarDatos()
            practice()
        } else {
            StatusColor = "error"
            isCorrect = false
        }
    }
}

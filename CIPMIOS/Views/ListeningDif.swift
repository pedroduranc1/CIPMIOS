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
    
    //VARIABLES DE FUNCIONABILIDAD
    @State private var IsPremium: Bool = false
    @State private var currentTimeInSeconds: Double = 0 // Estado para el tiempo actual del vídeo
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
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
            }
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "Steve Jobs 1", currentPage: "Listening Dificil")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "Steve Jobs 1", currentPage: "Listening Dificil")
        
        //LimpiarDatos()
        //isEmpezarClicked = false
    }
}


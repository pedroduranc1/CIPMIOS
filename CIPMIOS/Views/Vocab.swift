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
    @State private var isEmpezarClicked = false
    
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
                
                if !isEmpezarClicked {
                    VStack{}
                        .padding(.vertical,50)
                }
                
                if !isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Empezar", action: {
                        
                        isEmpezarClicked.toggle()
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
        
    }
}

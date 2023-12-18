//
//  Test.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Test: View {
    @State private var options = ["Test"]
    @State private var selectedOption: String?
    @Binding var IndexSeleccionado: Int
    @State private var videoURL: URL?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                //NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                //HEADER
                HeaderNav(location: "Vocabulary",IndexSeleccionado: $IndexSeleccionado)
                
                
                // SELECT BOX
                PickerCustom(defaultOption: "Test", selectedOption: $selectedOption, options: options) {
                    // Este bloque de cierre se ejecutará cuando selectedOption cambie
                    handleSelectedOptionChange()
                }
                
                // VIDEO VIEW
                VideoPlayerView(videoURL: videoURL,onStop: {})
                    .frame(height: 220)
                    .padding(.horizontal, 20)
                
                //Separador PEQUENO
                SeparadorPequeno()
                
                //BTN EMPEZAR
                BtnEmpezar(TextBtn: "Empezar", action: {})
                
            }.onAppear {
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "Test", currentPage: "Test")
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        
    }
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "Test", currentPage: "Test")
    }
}

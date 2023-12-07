// SpeakingFacil.swift
import SwiftUI

struct SpeakingFacil: View {
    @State private var StructureOptions = ["Present Simple", "Present Continuous"]
    @State private var LevelOptions = ["0 a 100"]
    @Binding var IndexSeleccionado: Int
    @State private var selectedOption: String?
    @State private var videoURL: URL?

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
                
                //Separador PEQUENO
                SeparadorPequeno()
                
                //BTN EMPEZAR
                BtnEmpezar(TextBtn: "Empezar", action: {})
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
    }
}

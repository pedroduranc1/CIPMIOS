//
//  Test.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Test: View {
    @State private var options = ["Test", "Test 2", "Test 3","Test", "Test 2", "Test 3"]
    @Binding var IndexSeleccionado: Int
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                //NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                //HEADER
                HeaderNav(location: "Vocabulary",IndexSeleccionado: $IndexSeleccionado)
                
                
                //SELECT BOX
                PickerCustom(defaultOption: "Test", options: options)
                
                //VIDEO VIEW
                VideoPlayerView(videoURL: URL(string: "https://adrianlealcaldera.com/culttut.mp4")!)
                            .frame(height: 220)
                            .padding(.horizontal, 20)
                
                //Separador PEQUENO
                SeparadorPequeno()
                
                //BTN EMPEZAR
                BtnEmpezar(TextBtn: "Empezar", action: {})
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        
    }
}

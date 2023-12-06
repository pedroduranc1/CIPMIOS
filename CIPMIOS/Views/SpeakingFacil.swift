//
//  SpeakingFacil.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct SpeakingFacil: View {
    @State private var StructureOptions = ["Present Simple","Present Continuous"]
    @State private var LevelOptions = ["0 a 100"]
    @Binding var IndexSeleccionado: Int
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                NotchSpacing(ColorNotch: "blanco")
                
                //HEADER
                HeaderNav(location: "Structures",IndexSeleccionado: $IndexSeleccionado)
                
                //SELECT BOX
                PickerCustom(defaultOption: "Present Simple",options: StructureOptions)
                
                //VIDEO VIEW
                VideoPlayerView(videoURL: URL(string: "https://adrianlealcaldera.com/culttut.mp4")!)
                            .frame(height: 220)
                            .padding(.horizontal, 20)
                
                //SELECT BOX
                PickerCustom(defaultOption: "0 a 100",options: LevelOptions)
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

//#Preview {
//    SpeakingFacil()
//}

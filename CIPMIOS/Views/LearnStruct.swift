//
//  LearnStruct.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/7/24.
//

import SwiftUI

struct LearnStruct: View {
    @Binding var IndexSeleccionado: Int
    
    let LEARN_DATA : [LearnStrucTypes] = LearnStrucArray
    
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(LEARN_DATA, id: \.lessonNumber){lesson in
                    LearnStrucCard(IndexSeleccionado: $IndexSeleccionado, LearnStruc: lesson)
                        .padding(.bottom, 16)
                        .padding(.top,10)
                    
                }
                .padding(.horizontal)
            }
        }
    }
}


#Preview {
    ContentView()
}



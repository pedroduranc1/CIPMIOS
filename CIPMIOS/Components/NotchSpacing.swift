//
//  NotchSpacing.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct NotchSpacing: View {
    var body: some View {
        VStack{
            Color("azul")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:100)
        .frame(width: .infinity, height: 60.0)
    }
}

#Preview {
    NotchSpacing()
}

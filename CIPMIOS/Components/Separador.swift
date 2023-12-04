//
//  Separador.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Separador: View {
    var body: some View {
        VStack(spacing:0){
            Color("azul")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:2)
        .padding(.horizontal,10)
        .padding(.vertical,15)
        .cornerRadius(8)
    }
}

#Preview {
    Separador()
}

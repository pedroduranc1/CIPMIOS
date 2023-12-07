//
//  pene.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 6/12/23.
//

import SwiftUI

struct pene: View {
    var body: some View {
        Button(action:{}){
            VStack{
                Text("soy un boton")
                    .padding(20)
            }
            .background(Color("azul"))
            .foregroundColor(.black)
            .bold()
            .cornerRadius(8)
        }
    }
}

#Preview {
    pene()
}

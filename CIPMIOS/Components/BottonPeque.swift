//
//  BottonPeque.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct BottonPeque: View {
    var btnTexto : String
    var btnImage : String
    
    var body: some View {
        Button(action: {
            // Acción para el primer botón
        }) {
            VStack {
                Image(btnImage) // Cambia "1.circle" por el nombre de tu imagen
                    .resizable()
                    .frame(width: 80, height: 80)
                Text(btnTexto)
            }
            .foregroundColor(.black)
            .bold()
            .font(.system(size: 12))
            .cornerRadius(8)
        }
    }
}

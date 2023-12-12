//
//  TextInput.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 8/12/23.
//

import SwiftUI

struct TextInput: View {
    @Binding var userInput: String
    @Binding var StatusColor: String

    var body: some View {
        ZStack(alignment: .trailing) {
            // TextField con color de fondo basado en StatusColor
            TextField("Escribe tu respuesta o presiona el microfono", text: $userInput)
                .foregroundColor(.black)
                .padding(.vertical, 10)
                .background(getColorForStatus())
                .cornerRadius(8)
                .textFieldStyle(PlainTextFieldStyle())
                .autocapitalization(.none)
            
            // Imagen a la izquierda del TextField
            Button(action: {}) {
                Image(systemName: "mic.fill")
                    .foregroundColor(.blue)
                    .padding(.leading, 8)
            }
        }
        .padding(.horizontal, 20)
    }

    private func getColorForStatus() -> Color {
        switch StatusColor {
        case "success":
            return .green
        case "error":
            return .red
        default:
            return .clear
        }
    }
}


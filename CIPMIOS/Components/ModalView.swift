//
//  ModalView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 5/12/23.
//

import SwiftUI

struct ModalView: View {
    @Binding var selectedOption: String?
    @Binding var isModalPresented: Bool
    var options : [String]

    var body: some View {
        VStack {
            Spacer()

            VStack(spacing: 20) {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                        isModalPresented = false // Cierra el modal al seleccionar una opción
                    }) {
                        Text(option)
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                    }
                }
            }
            .padding()

            Spacer()
        }
    }
}

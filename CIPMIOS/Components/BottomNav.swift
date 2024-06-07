//
//  BottomNav.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 6/12/23.
//

import SwiftUI

struct BottomNav: View {
    @Binding var IndexSeleccionado: Int
    
    let opciones: [(nombre: String, icono: String, indice: Int,page:Int)] = [
        ("Perfil", "person.crop.square", 4,4),
        ("Clases en linea", "play.desktopcomputer", 1,2),
        ("CIPM Premium", "diamond.inset.filled", 2,2),
        ("Saber mi nivel", "doc.fill", 3,1),
        ("Servicio al cliente", "text.bubble", 5,1),
        ("Toefl","testtube.2",6,1),
        ("Plan personalizado","person.badge.key.fill",7,1),
        
    ]
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) { // Espaciado entre elementos
                ForEach(opciones, id: \.indice) { opcion in
                    Button(action: {
                        self.IndexSeleccionado = opcion.page
                    }) {
                        VStack {
                            Image(systemName: opcion.icono)
                                .font(.system(size: 25))
                                .frame(height: 21) // Altura fija para el icono
                            Text(opcion.nombre)
                                .font(.system(size: 10))
                                .multilineTextAlignment(.center) // Alineación central del texto
                                .frame(height: 40) // Altura fija para el texto
                        }
                        .frame(width: 60) // Ancho fijo para cada botón
                        .padding(.vertical, 8) // Padding vertical para cada botón
                        .foregroundColor(IndexSeleccionado == opcion.page ? (opcion.nombre == "Premium" ? Color("amarillo") : .blue) : .gray)
                    }
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 70)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 100)
    }
}

#Preview {
    ContentView()
}

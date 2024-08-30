//
//  TopNav.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/6/24.
//

import SwiftUI

struct TopNav: View {
    @Binding var IndexSeleccionado: Int
    @State private var showModal = false
    
    let opciones: [(nombre: String, icono: String, indice: Int, page: Int)] = [
           ("Clases de 5 Minutos", "tv.badge.wifi.fill", 11, 11),
           ("Aprende a Estructurar", "brain.head.profile", 15, 15),//2,2
           ("Aprende una palabra", "plus", 16, 16),
           ("Aprende a Conectar", "link", 17, 17),
           ("Para ya no pensar en español", "head.profile.arrow.forward.and.visionpro", 14, 14),
           ("Para Recordar Vocab", "books.vertical.fill", 7, 7),
           ("Aprende una frase Cultural", "person.and.arrow.left.and.arrow.right", 8, 8),
           ("Mejora tu listening", "ear.badge.waveform", 10, 10),
           ("Videos de Estructura", "movieclapper.fill", 12, 5), // Cambiado para ID único
           ("Videos de Vocab", "arrow.up.and.down.text.horizontal", 6, 6), // Cambiado para ID único
           ("Estructuras Conectadas Dificil", "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left", 9, 9)
       ]
    
    let validNames: Set<String> = ["Clases de 5 Minutos", "Para Recordar Vocab", "Aprende una frase Cultural", "Mejora tu listening", "Videos de Estructura", "Videos de Vocab", "Estructuras Conectadas Dificil","Para ya no pensar en español","Aprende a Estructurar","Aprende una palabra","Aprende a Conectar"]
    
    var body: some View {
        VStack {
            VStack{}
                .frame(height: 140)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) { // Espaciado entre elementos
                    ForEach(opciones, id: \.indice) { opcion in
                        Button(action: {
                            if validNames.contains(opcion.nombre) {
                                GlobalData.shared.selectedLesson = nil
                                self.IndexSeleccionado = opcion.page
                            } else {
                                self.showModal = true
                            }
                            
                        }) {
                            VStack {
                                Image(systemName: opcion.icono)
                                    .font(.system(size: 25))
                                    .frame(height: 30) // Altura fija para el icono
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
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
        }
        .frame(height: 60)
        .alert(isPresented: $showModal) {
            Alert(
                title: Text("Opción en desarrollo"),
                message: Text("Esta opción aún no está disponible."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    ContentView()
}

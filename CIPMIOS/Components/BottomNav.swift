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
        ("Clases en linea", "play.desktopcomputer", 101,101),
        ("CIPM Premium", "diamond.inset.filled", 2,2),
        ("Saber mi nivel", "doc.fill", 1,1),
        ("Servicio al cliente", "text.bubble", 3,3),
        ("Toefl","testtube.2",12,12),
        ("Plan personalizado","person.badge.key.fill",13,13),
        
    ]
    
    func openWebsite(){
        if let url = URL(string: "https://www.cursosdeinglespersonalizadosenmonterrey.com") {
            UIApplication.shared.open(url)
        }
    }
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) { // Espaciado entre elementos
                ForEach(opciones, id: \.indice) { opcion in
                    Button(action: {
                        if (opcion.page == 101){
                            openWebsite()
                        }else{
                            GlobalData.shared.selectedLesson = nil
                            self.IndexSeleccionado = opcion.page
                        }
                    
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

import SwiftUI

struct BottomNav: View {
    @Binding var IndexSeleccionado: Int
    
    let opciones: [(nombre: String, icono: String, indice: Int, page: Int)] = [
        ("Perfil", "person.crop.square", 4, 4),
        ("CIPM Premium", "diamond.inset.filled", 2, 2),
        ("Clases en linea", "play.desktopcomputer", 101, 101),
        // Agrega más opciones si es necesario
        // ("Saber mi nivel", "doc.fill", 1, 1),
        // ("Servicio al cliente", "text.bubble", 3, 3),
        // ("Toefl", "testtube.2", 12, 12),
        // ("Plan personalizado", "person.badge.key.fill", 13, 13),
    ]
    
    func openWebsite() {
        if let url = URL(string: "https://www.cursosdeinglespersonalizadosenmonterrey.com") {
            UIApplication.shared.open(url)
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
            
            GeometryReader { geometry in
                HStack(spacing: (geometry.size.width - CGFloat(opciones.count * 60)) / CGFloat(opciones.count + 1)) {
                    ForEach(opciones, id: \.indice) { opcion in
                        Button(action: {
                            if opcion.page == 101 {
                                openWebsite()
                            } else {
                                GlobalData.shared.selectedLesson = nil
                                self.IndexSeleccionado = opcion.page
                            }
                        }) {
                            VStack {
                                Image(systemName: opcion.icono)
                                    .font(.system(size: 25))
                                    .frame(height: 21)
                                
                                Text(opcion.nombre)
                                    .font(.system(size: 10))
                                    .multilineTextAlignment(.center)
                                    .frame(height: 40)
                            }
                            .frame(width: 60)
                            .padding(.vertical, 8)
                            .foregroundColor(IndexSeleccionado == opcion.page ?
                                             (opcion.nombre == "CIPM Premium" ? Color("amarillo") : .blue) : .gray)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .frame(height: 70)
            .padding(.bottom,25)
            .padding(.top,10)
        }
    }
}

#Preview {
    ContentView()
}

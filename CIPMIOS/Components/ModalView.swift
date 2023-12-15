import SwiftUI

struct ModalView: View {
    @Binding var selectedOption: String?
    @Binding var isModalPresented: Bool
    var options: [String]
    var onSelectedOptionChange: () -> Void

    var body: some View {
        VStack {
            Spacer()
            
            ScrollView{
                VStack(spacing: 20) {
                    Spacer()
                    ForEach(options, id: \.self) { option in
                        Button(action: {
                            selectedOption = option
                            onSelectedOptionChange() // Notifica que el valor ha cambiado
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
                    Spacer()
                }
                .padding()
            }
            Spacer()
        }
    }
}

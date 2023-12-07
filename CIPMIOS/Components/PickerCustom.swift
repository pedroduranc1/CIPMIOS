import SwiftUI

struct PickerCustom: View {
    var defaultOption: String
    @Binding var selectedOption: String?
    var options: [String]
    var onSelectedOptionChange: () -> Void

    @State private var isModalPresented = false

    var body: some View {
        VStack {
            Button(action: {
                isModalPresented.toggle()
            }) {
                HStack {
                    if let selectedOption = selectedOption {
                        Text(" \(selectedOption)")
                            .bold()
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                    } else {
                        Text(" \(defaultOption)")
                            .bold()
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                    }

                    Spacer()
                    Image(systemName: "arrow.down.app")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 10)
            }
            .padding()
            .sheet(isPresented: $isModalPresented) {
                ModalView(selectedOption: $selectedOption, isModalPresented: $isModalPresented, options: options, onSelectedOptionChange: onSelectedOptionChange)
            }

            Spacer()
        }
    }
}


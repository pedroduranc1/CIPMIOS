import SwiftUI

struct ToastCustom: View {
    var message: String
    @Binding var showToast: Bool
    var body: some View {
        VStack {
            Spacer()
            if showToast {
                Text(message)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut(duration: 0.5))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showToast = false
                        }
                    }
            }
        }
    }
}

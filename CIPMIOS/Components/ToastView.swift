import SwiftUI

struct ToastView<Content: View>: View {
    @State private var isVisible: Bool
    let duration: Double
    var content: Content

    init(isVisible: Bool, duration: Double = 2.0, @ViewBuilder content: () -> Content) {
        self._isVisible = State(initialValue: isVisible)
        self.duration = duration
        self.content = content()
    }

    var body: some View {
        ZStack {
            content
                .opacity(isVisible ? 1 : 0)
                .offset(y: isVisible ? 0 : -50)
                .animation(.easeInOut(duration: 0.5))
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                withAnimation {
                    // Ocultar el toast después de la duración
                    isVisible = false
                }
            }
        }
    }
}

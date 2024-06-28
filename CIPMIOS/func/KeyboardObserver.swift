import SwiftUI
import Combine

final class KeyboardObserver: ObservableObject {
    @Published var keyboardHeight: CGFloat = 0

    private var cancellable: AnyCancellable?

    init() {
        let willShow = NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .map { notification -> CGFloat in
                (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
            }

        let willHide = NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ -> CGFloat in
                0
            }

        cancellable = Publishers.Merge(willShow, willHide)
            .subscribe(on: RunLoop.main)
            .assign(to: \.keyboardHeight, on: self)
    }
}

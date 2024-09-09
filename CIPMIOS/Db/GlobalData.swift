import Foundation

class GlobalData: ObservableObject {
    static let shared = GlobalData()
    private init() {}

    var selectedLesson: String?
    var isPremium: Bool = false
}

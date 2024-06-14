import Foundation

class GlobalData {
    static let shared = GlobalData()
    private init() {}

    var selectedLesson: String?
}

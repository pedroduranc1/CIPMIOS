import SwiftUI

@main
struct CIPMIOSApp: App {
    @StateObject var authManager = AuthManager.shared
    
    @State var IndexSeleAuth = 0
    
    var body: some Scene {
        WindowGroup {
            if authManager.isUserAuthenticated {
                ContentView()
            } else {
                AuthRoutes(IndexSeleAuth: $IndexSeleAuth)
            }
        }
    }
}

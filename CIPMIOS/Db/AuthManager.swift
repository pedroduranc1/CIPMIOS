import Foundation
import FirebaseAuth
import Firebase
import Combine

class AuthManager: ObservableObject {
    static let shared = AuthManager()
    
    @Published var isUserAuthenticated = false
    @Published var currentUserID = ""
    
    private var cancellables: Set<AnyCancellable> = []
    
    private init() {
        FirebaseApp.configure()
        
        // Inicializa el estado de autenticación en función de Firebase Auth
        Auth.auth().addStateDidChangeListener { [weak self] (_, user) in
            if let user = user {
                self?.isUserAuthenticated = true
                self?.currentUserID = user.uid
            } else {
                self?.isUserAuthenticated = false
                self?.currentUserID = ""
            }
        }
    }
    
    // Función para realizar el inicio de sesión
    func login(email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] (result, error) in
            guard let self = self else { return }
            
            if let error = error {
                // Ocurrió un error durante el inicio de sesión
                completion(.failure(error))
            } else if let result = result {
                // Inicio de sesión exitoso, actualiza el estado de autenticación
                self.isUserAuthenticated = true
                self.currentUserID = result.user.uid
                completion(.success(result.user.uid))
            }
        }
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
        } catch let error {
            print("Error al cerrar sesión: \(error.localizedDescription)")
        }
    }
}

import Foundation
import Firebase

class UserManager: ObservableObject {
    @Published var UserInfoProf: UserProfInfo = UserProfInfo(id: "", nombre: "", apellido: "", urlImage: "", telefono: "")
    
    func fetchAndStorePremiumStatus() {
        // Comprobando si hay un usuario autenticado
        guard let userID = Auth.auth().currentUser?.uid else {
            print("No hay usuario autenticado")
            return
        }
        
        // Obtención de la referencia a Firestore
        let db = Firestore.firestore()
        let ref = db.collection(userID).document("isPremium")
        
        // Recuperando el documento
        ref.getDocument { (documentSnapshot, error) in
            if let error = error {
                print("Error obteniendo el documento: \(error.localizedDescription)")
                return
            }
            
            if let document = documentSnapshot, document.exists {
                if let isPremium = document.data()?["Premium"] as? Bool {
                    // Almacenamiento del estado premium en UserDefaults
                    print("DATA: \(String(describing: document.data()))")
                    UserDefaults.standard.set(isPremium, forKey: "isPremium")
                    print("isPremium actualizado a: \(isPremium)")
                } else {
                    print("No se pudo encontrar el campo 'Premium'.")
                }
            } else {
                print("El documento no existe")
            }
        }
    }

    func checkPremiumStatus() -> Bool {
        fetchAndStorePremiumStatus()
        let status = UserDefaults.standard.bool(forKey: "isPremium")
        GlobalData.shared.isPremium = status
        return status
    }

    
    func fetchUserProfileInfo(){
        // Verificar si hay un usuario autenticado
        guard let userID = Auth.auth().currentUser?.uid else {
            print("No hay usuario autenticado")
            return
        }
        
        //INSTANCIA DE LA DB
        let db = Firestore.firestore()
        
        //REFERENCIA
        let ref = db.collection(userID).document("EstudentsInfo")
        
        ref.getDocument { (documentSnapshot, error) in
            guard error == nil else {
                print("Error obteniendo el documento: \(error!.localizedDescription)")
                return
            }
            
            if let document = documentSnapshot, document.exists {
                let data = document.data()
                let id = userID
                // Asignar valores a UserInfoProf
                if
                    let nombre = data?["nombre"] as? String,
                    let apellido = data?["apellido"] as? String,
                    let urlImage = data?["urlImage"] as? String,
                    let telefono = data?["telefono"] as? String
                {
                    self.UserInfoProf = UserProfInfo(id: id, nombre: nombre, apellido: apellido, urlImage: urlImage, telefono: telefono)
                }
            } else {
                print("El documento no existe")
            }
        }
    }
}

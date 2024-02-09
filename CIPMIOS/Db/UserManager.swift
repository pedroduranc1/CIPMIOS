import Foundation
import Firebase

class UserManager: ObservableObject {
    @Published var UserInfoProf: UserProfInfo = UserProfInfo(id: "", nombre: "", apellido: "", urlImage: "", telefono: "")
    
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
                    let telefono = data?["telefono"] as? String {
                    self.UserInfoProf = UserProfInfo(id: id, nombre: nombre, apellido: apellido, urlImage: urlImage, telefono: telefono)
                }
            } else {
                print("El documento no existe")
            }
        }
    }
}

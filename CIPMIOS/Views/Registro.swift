import SwiftUI
import FirebaseAuth

struct Registro: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String?
    @State private var isLoading: Bool = false
    @Binding var IndexSeleAuth: Int
    
    var body: some View {
        VStack{
            VStack{
                Image("ImgInit")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 170,height: 170)
                    .cornerRadius(10)
                    .padding(.top,50)
                
                Text("!Bienvenido a la App!")
                    .font(.system(size: 20))
                    .padding(.top,20)
                    .foregroundColor(.white)
                    .frame(width: .infinity)
                
                VStack{
                    
                }
                .padding(.vertical,10)
                
                TextField("Nombre Apellido",text: $name)
                    .padding(.vertical,15)
                    .padding(.horizontal, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.vertical,50)
                            .padding(.horizontal,40)
                    )
                    .foregroundColor(.black)
                    .background(Color("blanco"))
                    .cornerRadius(5)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                TextField("Ingresa tu correo electronico",text: $email)
                    .padding(.vertical,15)
                    .padding(.horizontal, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.vertical,50)
                            .padding(.horizontal,40)
                    )
                    .foregroundColor(.black)
                    .background(Color("blanco"))
                    .cornerRadius(5)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                SecureField("Contraseña",text: $password)
                    .padding(.vertical,15)
                    .padding(.horizontal, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.vertical,50)
                            .padding(.horizontal,40)
                    )
                    .foregroundColor(.black)
                    .background(Color("blanco"))
                    .cornerRadius(5)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                VStack{
                    
                }
                .padding(.vertical,10)
                
                if let errorMessage = errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                }
                
                VStack(){
                    VStack(alignment:.center){
                        Button(action:{
                            registro()
                        }){
                            VStack{
                                if isLoading {
                                    ProgressView() // Mostrar el loader mientras isLoading sea true
                                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                        .padding(.vertical, 15) // Ajustar el espacio entre el texto y el loader
                                        .foregroundColor(.black)
                                }else {
                                    Text("Registrarme")
                                        .foregroundStyle(.white)
                                        .bold()
                                        .padding(.vertical,15)
                                        .padding(.horizontal,20)
                                }
                            }
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("rojo"))
                .cornerRadius(10)
                
                HStack{
                    VStack{
                        Color(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    
                    Spacer()
                    
                    Text("O continuar con")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    VStack{
                        Color(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                }
                .padding(.vertical,20)
                
                VStack(){
                    VStack(alignment:.center){
                        Button(action:{self.IndexSeleAuth = 0}){
                            VStack{
                                Text("¿Ya tienes cuenta? Ingresa aqui")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .padding(.vertical,15)
                                    .padding(.horizontal,20)
                            }
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
            .padding(.horizontal,30)
            .padding(.vertical,100)
        }
        .background(Color("azul"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    private func registro(){
        isLoading = true;
        
        guard !name.isEmpty, !email.isEmpty, !password.isEmpty else {
            self.errorMessage = "Por favor, complete todos los campos y asegúrese de que las contraseñas coincidan."
            return
        }
        
        AuthManager.shared.registro(fullName: name,email: email , password: password) { result in
            DispatchQueue.main.async { // Asegurarse de realizar las actualizaciones en el hilo principal
                isLoading = false // Desactivar el loader
                
                switch result {
                case .success:
                    // Inicio de sesión exitoso
                    isLoading = false
                case .failure(let error):
                    // Manejar errores durante el inicio de sesión
                    errorMessage = error.localizedDescription
                }
            }
        }
    }
}

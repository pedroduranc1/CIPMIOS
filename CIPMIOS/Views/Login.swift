//
//  Login.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 6/2/24.
//

import SwiftUI

struct Login: View {
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
                
                Text("!Bienvenido de nuevo a la App!")
                    .font(.system(size: 20))
                    .padding(.top,20)
                    .foregroundColor(.white)
                    .frame(width: .infinity)
                
                VStack{
                    
                }
                .padding(.vertical,15)
                
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
                
                VStack(){
                    VStack(alignment:.trailing){
                        Button(action:{}){
                            HStack{
                                Spacer()
                                Text("Recuperar contraseña")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .padding(.vertical,5)
                            }
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                
                if let errorMessage = errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                }
                
                VStack{
                    
                }
                .padding(.vertical,5)
                
                
                VStack(){
                    VStack(alignment:.center){
                        Button(action:{
                            login()
                        }){
                            VStack{
                                if isLoading {
                                    ProgressView() // Mostrar el loader mientras isLoading sea true
                                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                        .padding(.vertical, 15) // Ajustar el espacio entre el texto y el loader
                                        .foregroundColor(.black)
                                }else {
                                    Text("Iniciar Sesion")
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
                
                VStack{
                    
                }
                .padding(.vertical,5)
                
                VStack{
                    Color(.white)
                }
                .padding(.horizontal,20)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 2)
                
                VStack{
                    
                }
                .padding(.vertical,10)
                
                VStack(){
                    VStack(alignment:.center){
                        Button(action:{self.IndexSeleAuth = 1}){
                            VStack{
                                Text("¿No tienes cuenta? Registrate aqui")
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
    
    private func login() {
        isLoading = true // Activar el loader
        
        AuthManager.shared.login(email: email, password: password) { result in
            DispatchQueue.main.async { // Asegurarse de realizar las actualizaciones en el hilo principal
                isLoading = false // Desactivar el loader
                
                switch result {
                case .success:
                    // Inicio de sesión exitoso
                    print("Inicio de sesión exitoso")
                case .failure(let error):
                    // Manejar errores durante el inicio de sesión
                    errorMessage = error.localizedDescription
                }
            }
        }
    }
}


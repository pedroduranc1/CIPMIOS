//
//  Main.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Main: View {
    @State private var isSpeakingFacil = false
    @Binding var IndexSeleccionado: Int
    @State var showToast = false
    
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                //NOTCH
                NotchSpacing(ColorNotch: "azul")
                
                //BOTON SABER MI NIVEL
                ButtonNormal(buttonText: "SABER MI NIVEL", backgroundColor: "amarillo", outsideColor: "azul", textColor: .black, action: {
                    self.IndexSeleccionado = 99
                })
                
                //BOTON SABER MI NIVEL
                ButtonNormal(buttonText: "MY PLAN", backgroundColor: "azul", outsideColor: "blanco", textColor: .white, action: {
                    showToast = true
                })
                
                //SEPARADOR
                Separador()
                
                //BOTONES ESTRUC Y VOCAB
                HStack{
                    
                    BottonImg(TextoButton: "Speaking (Facil)", ImagenButton: "img_estruc",action: {
                        self.IndexSeleccionado = 5
                    })
                    
                    
                    Spacer()
                    
                    BottonImg(TextoButton: "Vocabulario", ImagenButton: "img_vocabu", action: {
                        //VIEW PARA HACER PRUEBAS
                        //self.IndexSeleccionado = 99
                        
                        self.IndexSeleccionado = 6
                    }
                    )
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .padding(.horizontal,10)
                .padding(.vertical,15)
                
                //BOTONES PEQUENOS
                HStack(alignment:.top){
                    
                    
                    BottonPeque(btnTexto: "Listening", btnImage: "listening",action: {
                        self.IndexSeleccionado = 7
                    })
                    
                    BottonPeque(btnTexto: "Pienso en Espanol", btnImage: "spaint",action: {})
                    
                    BottonPeque(btnTexto: "Listening Dificil", btnImage: "conint",action: {
                        self.IndexSeleccionado = 10
                    })
                    
                    BottonPeque(btnTexto: "Lectura", btnImage: "availa",action: {
                        self.IndexSeleccionado = 8
                    })
                    
                }
                .padding()
                
                VStack{
                    Button(action:{
                        self.IndexSeleccionado = 9
                    }){
                        HStack(alignment: .bottom){
                            Text("Speaking (Dificil)")
                                .padding(.horizontal,25)
                            Spacer()
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(
                            Image("speakingDificil")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipped()
                        )
                        .padding(.horizontal,20)
                        .foregroundColor(.black)
                        .bold()
                    }
                }
                .frame(width: .infinity, height: 150)
                .background(Color("azul"))
                .toast(isShowing: $showToast,
                       toastConfig: ToastConfig(message: "Funcion solo Disponible para Usuarios Premiums"))
                
                VStack{
                    Button(action:{
                        self.IndexSeleccionado = 3
                    }){
                        HStack(alignment: .bottom){
                            Spacer()
                            Text("Chatea con un maestro")
                                .padding(.horizontal,25)
                                .font(.system(size: 14))
                            
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(
                            Image("chatMaestro")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipped()
                        )
                        .padding(.horizontal,20)
                        .foregroundColor(.black)
                        .bold()
                    }
                }
                .frame(width: .infinity, height: 150)
                .background(Color("blanco"))
                
                VStack(){
                    HStack(alignment:.center){
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipped()
                        
                        Button(action:{}){
                            VStack{
                                Text("Clases en linea")
                                    .bold()
                                    .padding(.horizontal,20)
                                    .padding(.vertical,5)
                            }
                            .background(Color("amarillo"))
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        }
                    }
                    .padding(.vertical,20)
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color("azul"))
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

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
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                //NOTCH
                NotchSpacing(ColorNotch: "azul")
                
                //BOTON SABER MI NIVEL
                ButtonNormal(buttonText: "SABER MI NIVEL", backgroundColor: "amarillo", outsideColor: "azul", textColor: .black, action: {})
                
                //BOTON SABER MI NIVEL
                ButtonNormal(buttonText: "MY PLAN", backgroundColor: "azul", outsideColor: "blanco", textColor: .white, action: {})
                
                //SEPARADOR
                Separador()
                
                //BOTONES ESTRUC Y VOCAB
                HStack{
                    
                    BottonImg(TextoButton: "Speaking (Facil)", ImagenButton: "img_estruc",action: {
                        self.IndexSeleccionado = 5
                    })
                    
                    
                    Spacer()
                    
                    BottonImg(TextoButton: "Vocabulario", ImagenButton: "img_vocabu", action: {}
                    )
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .padding(.horizontal,10)
                .padding(.vertical,15)
                
                //BOTONES PEQUENOS
                HStack(alignment:.top){
                    
                    
                    BottonPeque(btnTexto: "Listening", btnImage: "listening")
                    
                    BottonPeque(btnTexto: "Pienso en Espanol", btnImage: "spaint")
                    
                    BottonPeque(btnTexto: "Listening Dificil", btnImage: "conint")
                    
                    BottonPeque(btnTexto: "Lectura", btnImage: "availa")
                    
                }
                .padding()
                
                VStack{
                    Button(action:{}){
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
                
                VStack{
                    Button(action:{}){
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
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

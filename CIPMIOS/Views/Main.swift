//
//  Main.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                //NOTCH
                NotchSpacing()
                
                //BOTON SABER MI NIVEL
                ButtonNormal(buttonText: "SABER MI NIVEL", backgroundColor: "amarillo", outsideColor: "azul", textColor: .black, action: {})
                
                //BOTON SABER MI NIVEL
                ButtonNormal(buttonText: "MY PLAN", backgroundColor: "azul", outsideColor: "blanco", textColor: .white, action: {})
                
                //SEPARADOR
                Separador()
                
                //BOTONES ESTRUC Y VOCAB
                HStack{
                    
                    BottonImg(TextoButton: "Speaking (Facil)", ImagenButton: "img_estruc")
                    
                    Spacer()
                    
                    BottonImg(TextoButton: "Vocabulario", ImagenButton: "img_vocabu")
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
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Main()
}

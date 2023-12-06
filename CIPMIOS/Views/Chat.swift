//
//  Chat.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Chat: View {
    var body: some View {
        VStack {
            Image("img_chatMaestro")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 300, maxHeight: 200)
                .clipped()
                .padding(10)
            
            Text("Chatea con un maestro")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .bold()
            Text("aclara todas tus dudas, desde la comodidad de tu casa")
                .multilineTextAlignment(.center)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .padding(.horizontal,40)
                .padding(.top,1)
            
            Button(action:{
                
            }){
                VStack{
                    Text("Haz click aqui")
                        .foregroundColor(.black)
                        .bold()
                    
                }
                .frame(width: 250,height: 40)
                .background(Color("amarillo"))
                .cornerRadius(8)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical,40)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("azul"))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Chat()
}

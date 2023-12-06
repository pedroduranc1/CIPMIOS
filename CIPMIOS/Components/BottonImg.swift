//
//  BottonImg.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct BottonImg: View {
    
    var TextoButton : String
    var ImagenButton: String
    var action: () -> Void
    
    var body: some View {
        Button(action:action){
            VStack{
                Spacer()
                Text(TextoButton)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
            .background(
                Image(ImagenButton)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
            )
            .foregroundColor(.white)
            .font(.system(size: 14))
            .bold()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:200)
        .frame(width: .infinity, height: 150)
    }
}

//#Preview {
//    BottonImg()
//}

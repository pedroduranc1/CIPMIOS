//
//  ButtonNormal.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct ButtonNormal: View {
    var buttonText: String
    var backgroundColor: String
    var outsideColor: String
    var textColor: Color
    var action: () -> Void
    
    var body: some View {
        VStack{
            Button(action:action){
                VStack{
                    Text(buttonText)
                        .padding(7)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .background(Color(backgroundColor))
                .foregroundColor(textColor)
                .bold()
                .cornerRadius(8)
                .padding(10)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
        .background(Color(outsideColor))
    }
}

//#Preview {
//    ButtonNormal
//}

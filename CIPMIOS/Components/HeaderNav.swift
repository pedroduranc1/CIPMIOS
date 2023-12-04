//
//  HeaderNav.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct HeaderNav: View {
    @Environment(\.presentationMode) var presentationMode
    var location: String
    
    var body: some View {
        HStack{
            Button(action:{
                // Retroceder a la página anterior
                presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.backward.circle")
                   
            }
            .foregroundColor(.gray)
            Spacer()
            Text(location)
            Spacer()
        }
        .bold()
        .font(.system(size: 22))
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 200)
        .padding(.horizontal,20)
        
        VStack{
            Color(.gray)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 1)
        .padding(.top,15)
    }
}

//#Preview {
//    HeaderNav()
//}

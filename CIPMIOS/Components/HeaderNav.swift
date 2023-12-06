//
//  HeaderNav.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct HeaderNav: View {
    var location: String
    
    @Binding var IndexSeleccionado: Int

    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                Spacer()

                Text(location)
                    .font(.system(size: 22))
                    .bold()

                Spacer()
                
                Color(.gray)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 1)
                    .padding(.top,10)
            }
            
            Button(action: {
                self.IndexSeleccionado = 0
            }) {
                Image(systemName: "arrow.backward.square")
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
            }
            .frame(width: 30, height: .infinity)
            .padding(.leading,20)
            .padding(.bottom,10)
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
    }
}


//
//  SeparadorPequeno.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 5/12/23.
//

import SwiftUI

struct SeparadorPequeno: View {
    var body: some View {
        HStack{
            VStack{
                Color("azul")
            }
            .frame(maxWidth: 100,maxHeight: 2)
            .padding(.vertical,5)
            
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.horizontal,20)
    }
}

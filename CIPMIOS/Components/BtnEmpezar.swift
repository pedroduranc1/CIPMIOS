//
//  BtnEmpezar.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 5/12/23.
//

import SwiftUI

struct BtnEmpezar: View {
    var TextBtn: String
    var action: () -> Void
    
    var body: some View {
        Button(action:action){
            VStack {
                Text(TextBtn)
                    .padding(.vertical,10)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .border(Color.blue, width: 1.5)
            .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.horizontal,20)
    }
}

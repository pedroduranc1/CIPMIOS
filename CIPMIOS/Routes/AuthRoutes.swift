//
//  AuthRoutes.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 7/2/24.
//

import SwiftUI

struct AuthRoutes: View {
    @Binding var IndexSeleAuth: Int
    var body: some View {
        VStack{
            
            switch IndexSeleAuth {
            case 0:
                Login(IndexSeleAuth: $IndexSeleAuth)
            case 1:
                Registro(IndexSeleAuth: $IndexSeleAuth)
            default:
                EmptyView()
            }
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
    }
}


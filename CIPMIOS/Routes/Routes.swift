//
//  Routes.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Routes: View {
    @Binding var IndexSeleccionado: Int
    var body: some View {
        VStack{
            
            switch IndexSeleccionado {
            case 0:
                Main(IndexSeleccionado: $IndexSeleccionado)
            case 1:
                Test(IndexSeleccionado: $IndexSeleccionado)
            case 2:
                Premium(IndexSeleccionado: $IndexSeleccionado)
            case 3:
                Chat()
            case 4:
                Perfil()
            case 5:
                //Speaking FACIL
                SpeakingFacil(IndexSeleccionado: $IndexSeleccionado)
            case 6:
                //VOCAB
                Vocab(IndexSeleccionado: $IndexSeleccionado)
            case 99:
                //VIEW DE PRUEBAS
                PruebaView()
            default:
                EmptyView()
            }
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
    }
}

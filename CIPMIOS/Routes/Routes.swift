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
                    .environmentObject(UserManager())
            case 5:
                //Speaking FACIL
                SpeakingFacil(IndexSeleccionado: $IndexSeleccionado)
            case 6:
                //VOCAB
                Vocab(IndexSeleccionado: $IndexSeleccionado)
            case 7:
                //CULTURA
                Listening(IndexSeleccionado: $IndexSeleccionado)
            case 8:
                //LECTURA
                LecturaView(IndexSeleccionado: $IndexSeleccionado)
            case 9:
                //Speaking Dificil
                SpeakingDificil(IndexSeleccionado: $IndexSeleccionado)
            case 10:
                ListeningDif(IndexSeleccionado: $IndexSeleccionado)
            case 11:
                //LESSONS PAGE
                LessonsView(IndexSeleccionado: $IndexSeleccionado )
            case 12:
                Toefl()
            case 13:
                PlanPerzonalizado()
            case 14:
                SpaInt()
            case 99:
                //VIEW DE PRUEBAS
                SpeechView()
            default:
                EmptyView()
            }
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
    }
}

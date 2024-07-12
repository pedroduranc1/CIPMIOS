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
                //Speaking FACIL LISTO SPEECH
                SpeakingFacil(IndexSeleccionado: $IndexSeleccionado)
            case 6:
                //VOCAB LISTO SPEECH
                Vocab(IndexSeleccionado: $IndexSeleccionado)
            case 7:
                //CULTURA NO USA SPEECH
                Listening(IndexSeleccionado: $IndexSeleccionado)
            case 8:
                //LECTURA NO USA SPEECH
                LecturaView(IndexSeleccionado: $IndexSeleccionado)
            case 9:
                //Speaking Dificil LISTO SPEECH
                SpeakingDificil(IndexSeleccionado: $IndexSeleccionado)
            case 10:
                // NO USA SPEECH
                ListeningDif(IndexSeleccionado: $IndexSeleccionado)
            case 11:
                //LESSONS PAGE
                LessonsView(IndexSeleccionado: $IndexSeleccionado )
            case 12:
                // USA SPEECH
                Toefl()
            case 13:
                PlanPerzonalizado()
            case 14:
                // LISTO SPEECH
                SpaInt()
            case 15:
                //APRENDER A ESTRUCTURAR
                LearnStruct(IndexSeleccionado: $IndexSeleccionado)
            case 16:
                //Aprende una palabra
                LearnWord()
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

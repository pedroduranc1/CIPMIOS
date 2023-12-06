//
//  BottomNav.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 6/12/23.
//

import SwiftUI

struct BottomNav: View {
    @Binding var IndexSeleccionado: Int
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
        HStack{
            Spacer()
            Button(action:{
                self.IndexSeleccionado = 0
            }){
                VStack{
                    Image(systemName: "book.fill")
                        .font(.system(size: 25))
                    Text("Main")
                        .font(.system(size: 15))
                        .padding(.top,2)
                }
                .foregroundColor(IndexSeleccionado == 0 ? .blue : .gray)
            }
            Spacer()
            Button(action:{
                self.IndexSeleccionado = 1
            }){
                VStack{
                    Image(systemName: "doc.fill")
                        .font(.system(size: 25))
                    Text("Test")
                        .font(.system(size: 15))
                        .padding(.top,2)
                }
                .foregroundColor(IndexSeleccionado == 1 ? .blue : .gray)
            }
            Spacer()
            Button(action:{
                self.IndexSeleccionado = 2
            }){
                VStack{
                    Image(systemName: "diamond.inset.filled")
                        .font(.system(size: 25))
                    Text("Premium")
                        .font(.system(size: 15))
                        .padding(.top,2)
                }
                .foregroundColor(IndexSeleccionado == 2 ? Color("amarillo") : .gray)
            }
            Spacer()
            Button(action:{
                self.IndexSeleccionado = 3
            }){
                VStack{
                    Image(systemName: "message.fill")
                        .font(.system(size: 25))
                    Text("Chat")
                        .font(.system(size: 15))
                        .padding(.top,2)
                }
                .foregroundColor(IndexSeleccionado == 3 ? .blue : .gray)
            }
            Spacer()
            Button(action:{
                self.IndexSeleccionado = 4
            }){
                VStack{
                    Image(systemName: "person.crop.square")
                        .font(.system(size: 30))
                    Text("Perfil")
                        .font(.system(size: 15))
                        .padding(.top,2)
                }
                .foregroundColor(IndexSeleccionado == 4 ? .blue : .gray)
            }
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 100)
    }
}


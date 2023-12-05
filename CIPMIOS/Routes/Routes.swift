//
//  Routes.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Routes: View {
    var body: some View {
        TabView{
            
            NavigationView(){
                Main()
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Main")
            }
            
            NavigationView(){
                Test()
            }
            .tabItem {
                Image(systemName: "doc.fill")
                Text("Test")
            }
            
            
            Premium()
                .tabItem {
                    Image(systemName: "diamond.inset.filled")
                    Text("Hazte Premium")
                }
            
            Chat()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Chat")
                }
            
            Perfil()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Perfil")
                }
        }.background(Color.white)
    }
}

#Preview {
    Routes()
}

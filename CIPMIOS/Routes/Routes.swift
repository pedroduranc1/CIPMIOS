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
            Main()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Main")
                }
            Test()
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
                    Image(systemName: "diamond.inset.filled")
                    Text("Chat")
                }
            Perfil()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Perfil")
                }
        }
    }
}

#Preview {
    Routes()
}

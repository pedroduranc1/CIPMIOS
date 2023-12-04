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
        }
    }
}

#Preview {
    Routes()
}

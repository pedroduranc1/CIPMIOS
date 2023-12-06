//
//  ContentView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var IndexSeleccionado = 0
    var body: some View {
        VStack(spacing:0){
            //PAGINAS
            Routes(IndexSeleccionado: $IndexSeleccionado)
            
            //BOTOMNAV
            BottomNav(IndexSeleccionado: $IndexSeleccionado)
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSplashScreen = true
    
    var body: some View {
        Group {
            if showSplashScreen {
                SplashScreenView()
            } else {
                MainView() // Reemplaza con la vista principal de tu app
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    showSplashScreen = false
                }
            }
        }
    }
}

struct MainView: View {
    @State var IndexSeleccionado = 11
    var body: some View {
        VStack(spacing:0){
            //TOPNAV
            TopNav(IndexSeleccionado: $IndexSeleccionado)
            
            //PAGINAS
            Routes(IndexSeleccionado: $IndexSeleccionado)
                .padding(.top,80)
            
            //BOTOMNAV
            BottomNav(IndexSeleccionado: $IndexSeleccionado)
            
        }
        .onAppear {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                windowScene.windows.forEach { window in
                    window.overrideUserInterfaceStyle = .light
                }
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


//
//  ContentView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI
import SwiftSpeech
import AVFoundation

struct ContentView: View {
    @StateObject private var globalData = GlobalData.shared
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
            // Actualiza el estado premium cuando aparece la vista
            SwiftSpeech.requestSpeechRecognitionAuthorization()
            UserManager().checkPremiumStatus()
        }
        .environmentObject(globalData) // Proveer el objeto global a las vistas
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


//
//  SplashScreenView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 19/7/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
            Image("logo") // Reemplaza con el nombre de tu imagen
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                .scaleEffect(1.5) // Ajusta el tamaño del loader si lo deseas
                .padding(.top, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue) // Cambia el color de fondo si lo deseas
        .edgesIgnoringSafeArea(.all)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}


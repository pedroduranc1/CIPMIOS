//
//  Premium.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Premium: View {
    @Binding var IndexSeleccionado: Int
    // 
    @State private var videoURL: URL?
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                NotchSpacing(ColorNotch: "blanco")
                
                HeaderNav(location: "Hazte Premium",IndexSeleccionado: $IndexSeleccionado)
                
                //BOTON SABER MI NIVEL
                VStack{
                    ButtonNormal(buttonText: "USD 0,50 PER MONTH", backgroundColor: "azul", outsideColor: "blanco", textColor: .white, action: {})
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.horizontal,20)
                .padding(.vertical,15)
                
                //TEXTO
                VStack{
                    Text("Antes de comprar mira el video")
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.system(size: 20))
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.horizontal,20)
                .padding(.bottom,15)
                
                //VIDEO
                VideoPlayerView(videoURL: videoURL)
                    .frame(height: 220)
                    .padding(.horizontal, 25)
                
                //CONDICIONES PARA CANCELAR
                VStack(alignment: .leading,spacing:0){
                    Text("con la suscripcion accedes a:")
                    Text("1. mas estructuras del lenguaje")
                    Text("2. mas rango de palabras (practicas las mismas estructuras con palabras menos comunes)")
                    Text("3. se cobre una vez al mes - 50 pesos mexicanos")
                    Text("4. no es necesario estar suscrito para usar la app, pero si es necesaria para accesar a todas las funciones")
                    Text("5. para cancelar presiona el boton de abajo y te llevara a App Store a la seccion de cancelaciones")
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .font(.system(size: 15))
                .bold()
                .foregroundColor(Color("error"))
                .padding(.horizontal,20)
                
                VStack{
                    Spacer()
                    ButtonNormal(buttonText: "CLICK TO CANCEL IN APP STORE", backgroundColor: "error", outsideColor: "blanco", textColor: .white, action: {})
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.horizontal,20)
                .padding(.top,10)
                
            }
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "", currentPage: "Premium")
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


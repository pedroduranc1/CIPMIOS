//
//  Perfil.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Perfil: View {
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                ZStack{
                    //Fondo Azul
                    VStack{
                        Rectangle()
                            .foregroundColor(Color("azul"))
                            .frame(height: 180/2)
                        Spacer()
                    }
                    
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 70,height: 70)
                        .background(Color("blanco"))
                        .cornerRadius(10)
                        .padding(.top,50)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:200)
                .frame(height: 150)
                
                HStack{
                    Text("Nombre Apellido")
                        .font(.system(size: 20))
                        .bold()
                    Image(systemName: "gear")
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:100)
                
                HStack{
                    VStack{
                        Color("azul")
                    }
                    .frame(maxWidth: .infinity,maxHeight:1)
                    
                    
                    Text("Progreso del curso")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                        .frame(width: 130)
                        
                    
                    VStack{
                        Color("azul")
                    }
                    .frame(maxWidth: .infinity,maxHeight:1)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .padding(.top,70)
                .padding(.horizontal,20)
                
                HStack(alignment:.top){
                    //Icono Completo
                    ProfileIconComp(ImgName: "profile_struc", TextName: "Structures", PercentageText: "0.00% de avance",TextSize: 20)
                    
                    ProfileIconComp(ImgName: "profile_vocabs", TextName: "Vocabulary", PercentageText: "0.00% de avance",TextSize: 20)
                    
                    ProfileIconComp(ImgName: "listening", TextName: "Culture", PercentageText: "0.00% de avance",TextSize: 20)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .padding(.horizontal,20)
                .padding(.top,20)
                
                HStack(alignment:.top){
                    //Icono Completo
                    ProfileIconComp(ImgName: "spaint", TextName: "Spanish Interference", PercentageText: "0.00% de avance",TextSize: 18)
                    
                    ProfileIconComp(ImgName: "conint", TextName: "Conscious Interference", PercentageText: "0.00% de avance",TextSize: 18)
                    
                    ProfileIconComp(ImgName: "availa", TextName: "Availabilty", PercentageText: "0.00% de avance",TextSize: 18)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .padding(.horizontal,20)
                .padding(.top,40)
                
                HStack{
                    ProfileIconComp(ImgName: "img_chatMaestro", TextName: "Transiciones", PercentageText: "0.00% de avance",TextSize: 20)
                   
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                .padding(.horizontal,20)
                .padding(.top,40)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Perfil()
}

//
//  ProfileIconComp.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 11/12/23.
//

import SwiftUI

struct ProfileIconComp: View {
    var ImgName: String
    var TextName: String
    var PercentageText: String
    var TextSize: CGFloat
    var body: some View {
        VStack{
          Image(ImgName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 90,height: 90)
                .background(Color("blanco"))
                .cornerRadius(10)
            Text(TextName)
                .font(.system(size: TextSize))
                .bold()
                .multilineTextAlignment(.center)
                .padding(.bottom,2)
            Text(PercentageText)
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

//#Preview {
//    ProfileIconComp()
//}

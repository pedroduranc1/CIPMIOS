//
//  Premium.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct Premium: View {
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                NotchSpacing(ColorNotch: "blanco")
                
                HeaderNav(location: "Hazte Premium")
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Premium()
}

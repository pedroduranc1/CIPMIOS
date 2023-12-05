//
//  PickerCustom.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 5/12/23.
//

import SwiftUI

struct PickerCustom: View {
    @State private var isModalPresented = false
    @State private var selectedOption: String? = "Test"
    var options : [String]
    var body: some View {
        VStack {
            Button(action:{
                isModalPresented.toggle()
            }){
                HStack {
                    if let selectedOption = selectedOption {
                        Text(" \(selectedOption)")
                            .bold()
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                    }
                    
                    
                    Spacer()
                    Button(action: {
                        isModalPresented.toggle()
                    }) {
                        Image(systemName: "arrow.down.app")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    .sheet(isPresented: $isModalPresented) {
                        ModalView(selectedOption: $selectedOption, isModalPresented: $isModalPresented,options: options)
                    }
                    
                }
                .padding(.vertical,10)
                .padding(.horizontal,10)
                
            }
            .padding()
            
            
            Spacer()
        }
    }
}

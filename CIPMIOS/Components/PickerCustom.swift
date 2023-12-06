//
//  PickerCustom.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 5/12/23.
//

import SwiftUI

struct PickerCustom: View {
    var defaultOption: String
    @State private var isModalPresented = false
    @State private var selectedOption: String?
    var options: [String]

    init(defaultOption: String, options: [String]) {
        self.defaultOption = defaultOption
        self.options = options
        _selectedOption = State(initialValue: defaultOption)
    }

    var body: some View {
        VStack {
            Button(action: {
                isModalPresented.toggle()
            }) {
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
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    .sheet(isPresented: $isModalPresented) {
                        ModalView(selectedOption: $selectedOption, isModalPresented: $isModalPresented, options: options)
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 10)
            }
            .padding()

            Spacer()
        }
    }
}

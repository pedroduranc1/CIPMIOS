//
//  LearnStruct.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/7/24.
//

import SwiftUI

struct LearnStruct: View {
    @Binding var IndexSeleccionado: Int
    let LEARN_DATA: [LearnStrucTypes] = LearnStrucArray
    
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(Array(LEARN_DATA.prefix(itemsPerPage).enumerated()), id: \.element.id) { index, lesson in
                    LearnStrucCard(IndexSeleccionado: $IndexSeleccionado, LearnStruc: lesson,index: index)
                        .padding(.bottom, 16)
                        .padding(.top, 10)
                        .onAppear {
                            if index == itemsPerPage - 1 {
                                loadMoreItems()
                            }
                        }
                }
                .padding(.horizontal)
            }
        }
    }
    
    private func loadMoreItems() {
        if itemsPerPage < LEARN_DATA.count {
            itemsPerPage += increment
        }
    }
    
    
}


#Preview {
    ContentView()
}



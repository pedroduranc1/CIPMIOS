//
//  LearnToConecrt.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 28/8/24.
//

import SwiftUI

struct LearnToConect: View {
    let CONECT_DATA : [LearnToConectTypes] = LearnToConectArray
    
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(Array(CONECT_DATA.prefix(itemsPerPage).enumerated()), id: \.element.id) { index, lesson in
                    LearnToConectCard(LearnWord: lesson, index: index)
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
        if itemsPerPage < CONECT_DATA.count {
            itemsPerPage += increment
        }
    }
}

#Preview {
    LearnToConect()
}

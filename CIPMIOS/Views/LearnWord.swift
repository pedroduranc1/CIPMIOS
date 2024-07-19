//
//  LearnWord.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import SwiftUI

struct LearnWord: View {
    let WORD_DATA : [LearnWordTypes] = LearnWordArray
    
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(Array(WORD_DATA.prefix(itemsPerPage).enumerated()), id: \.element.id) { index, lesson in
                    LearnWordCard(LearnWord: lesson, index: index)
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
        if itemsPerPage < WORD_DATA.count {
            itemsPerPage += increment
        }
    }
}

#Preview {
    LearnWord()
}

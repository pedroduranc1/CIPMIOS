//
//  LearnWord.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import SwiftUI

struct LearnWord: View {
    private var isPremium: Bool = GlobalData.shared.isPremium
    
    @State private var WORD_DATA: [LearnWordTypes] = []
    
    let lessonsDataPremium: [LearnWordTypes] = LearnWordArray
    let lessonsDataFree: [LearnWordTypes] = LearnWordBasic
    
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    @State private var filterText: String = ""
    
    var filteredLessons: [LearnWordTypes] {
        if filterText.isEmpty {
            return Array(WORD_DATA.prefix(itemsPerPage))
        } else {
            return WORD_DATA.filter { lesson in
                lesson.word.lowercased().contains(filterText.lowercased())
            }
        }
    }
    
    var body: some View {
        VStack{
            TextField("Buscar palabra", text: $filterText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.horizontal,30)
                .overlay(
                    HStack {
                        if filterText.isEmpty {
                            Spacer()
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.trailing, 35)
                        } else {
                            Spacer()
                            
                            Button(action: {
                                self.filterText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 35)
                            }
                        }
                    }
                )
        }
        .padding(.top,20)
        ScrollView {
            LazyVStack {
                ForEach(Array(filteredLessons.prefix(itemsPerPage).enumerated()), id: \.element.id) { index, lesson in
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
        .onAppear(){
            WORD_DATA = isPremium ? LearnWordArray : LearnWordBasic
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

//
//  LearnToConecrt.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 28/8/24.
//

import SwiftUI

struct LearnToConect: View {
    private var isPremium: Bool = GlobalData.shared.isPremium
    @State private var CONECT_DATA : [LearnToConectTypes] = []
    
    let lessonsDataPremium: [LearnToConectTypes] = LearnToConectArray
    let lessonsDataFree: [LearnToConectTypes] = LearnToConectBasic
    
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    @State private var filterText: String = ""
    
    var filteredLessons: [LearnToConectTypes] {
        if filterText.isEmpty {
            return Array(CONECT_DATA.prefix(itemsPerPage))
        } else {
            return CONECT_DATA.filter { lesson in
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
        .onAppear(){
            CONECT_DATA = isPremium ? LearnToConectArray : LearnToConectBasic
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

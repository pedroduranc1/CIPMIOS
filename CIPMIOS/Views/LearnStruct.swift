//
//  LearnStruct.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/7/24.
//

import SwiftUI

struct LearnStruct: View {
    @Binding var IndexSeleccionado: Int
    @State private var filterText: String = ""
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    @State private var IsPremium: Bool = GlobalData.shared.isPremium
    
    @State private var LEARN_DATA: [LearnStrucTypes] = []
    
    let LearnStrucPremium: [LearnStrucTypes] = LearnStrucArray
    let LearnStrucFree: [LearnStrucTypes] = LearnStrucBasic
    
    var filteredLessons: [LearnStrucTypes] {
        if filterText.isEmpty {
            return Array(LEARN_DATA.prefix(itemsPerPage))
        } else {
            return LEARN_DATA.filter { lesson in
                lesson.title.lowercased().contains(filterText.lowercased())
            }
        }
    }
    
    var body: some View {
        VStack{
            TextField("Buscar clases", text: $filterText)
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
        .onAppear(){
            LEARN_DATA = IsPremium ? LearnStrucPremium : LearnStrucFree
        }
    }
    
    private func loadMoreItems() {
        if itemsPerPage < LEARN_DATA.count {
            itemsPerPage += increment
        }
    }
    
    
}


//PREVIEW
struct LearnStruc_Previews: PreviewProvider {
    @State static var indexSeleccionado = 15
    
    static var previews: some View {
        VStack{
            LearnStruct(IndexSeleccionado: $indexSeleccionado)
        }
    }
}



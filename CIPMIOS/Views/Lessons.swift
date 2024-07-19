//
//  LessonsView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/6/24.
//

import SwiftUI

struct LessonsView: View {
    @Binding var IndexSeleccionado: Int
    
    let lessons: [LessonTypes] = lessonsData
    
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(Array(lessons.prefix(itemsPerPage).enumerated()), id: \.element.id) { index, lesson in
                    LessonCard(IndexSeleccionado: $IndexSeleccionado, lesson: lesson,index: index)
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
        if itemsPerPage < lessons.count {
            itemsPerPage += increment
        }
    }
}

#Preview {
    ContentView()
}

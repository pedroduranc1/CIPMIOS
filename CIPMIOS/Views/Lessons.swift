//
//  LessonsView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/6/24.
//

import SwiftUI

struct LessonsView: View {
    //VARIABLES
    @Binding var IndexSeleccionado: Int
    @State private var filterText: String = ""
    @State private var itemsPerPage: Int = 15
    private let increment: Int = 15
    @State private var IsPremium: Bool = GlobalData.shared.isPremium
    
    //DATA
    @State private var lessons: [LessonTypes] = [] 
    
    // Datos de prueba, reemplaza con tus datos reales
    let lessonsDataPremium: [LessonTypes] = lessonsData // Aquí debes colocar tus datos premium
    let lessonsDataFree: [LessonTypes] = lessonsDataBasic
    
    //FUNCS
    var filteredLessons: [LessonTypes] {
        if filterText.isEmpty {
            return Array(lessons.prefix(itemsPerPage))
        } else {
            return lessons.filter { lesson in
                lesson.subtitle.lowercased().contains(filterText.lowercased())
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
                ForEach(filteredLessons.indices, id: \.self) { index in
                    LessonCard(IndexSeleccionado: $IndexSeleccionado, lesson: filteredLessons[index], index: index)
                        .padding(.top, 10)
                        .onAppear {
                            if index == itemsPerPage - 1 {
                                loadMoreItems()
                            }
                        }
                }
            }
        }
        .onAppear(){
            lessons = IsPremium ? lessonsDataPremium : lessonsDataFree
        }
    }
    
    private func loadMoreItems() {
        if itemsPerPage < lessons.count {
            itemsPerPage += increment
        }
    }
}

//PREVIEW
struct Lessons_Previews: PreviewProvider {
    @State static var indexSeleccionado = 11
    
    static var previews: some View {
        VStack{
            LessonsView(IndexSeleccionado: $indexSeleccionado)
        }
    }
}

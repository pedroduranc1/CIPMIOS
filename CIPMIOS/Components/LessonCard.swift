//
//  LessonCard.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/6/24.
//

import SwiftUI

struct LessonCard: View {
    @Binding var IndexSeleccionado: Int
    @State private var showModal = false
    var lesson: LessonTypes
    
    let estructuras = ["Present Simple", "Present Continuous", "Present Perfect", "Present Perfect Continuous","Past Simple", "Past Continuous", "Past Perfect", "Past Perfect Continuous","Future Simple", "Future Continuous", "Future Perfect", "Future Perfect Continuous","Would Simple", "Would Continuous", "Would Perfect", "Would Perfect Continuous"]
    let test = ["Test"]
    let estructuraDificil = ["Conectores Standar Presente Simple", "Conectores Standar Presente Continuo"]
    let cultura = ["Black Fathers", "Is America Racist?", "Don't Compare Yourself to Others", "Fix Yourself", "Are Men and Women Different?", "Don't Waste Your Time", "How to Make Our Cities Safer", "How to End Systemic Racism", "Should Government Bail Out Big Banks?"]
    let vocab = ["Moonlight", "Rick and Morty", "Do You Want Pepsi", "Sangre Por Sangre Foodline", "Sangre Por Sangre Watch El Paisaje", "Training Day Rabbit Has The Gun", "Hancock Train", "Malcom in the Middle Teacher", "Sangre Por Sangre Comedor", "Dave Chapelle Man Rape", "Análisis de cultura Gringa y Frases Coloquiales 2", "Boys in the Hood", "Cultura y Fonética", "Kings of the Hills Drugs"]
    let listening = ["Steve Jobs 1", "Kot Fishing 1","Kot Fishing 2","Helicoptero 1","Helicoptero 2"]
    let interferencias = ["Por Sujeto","Por Preposicion","Por Objeto","Interferencia Reflexiva","Interferencia Pasiva"]
    
    func searchLessonCategory(subtitle: String) -> Int? {
        if estructuras.contains(subtitle) {
            return 5
        } else if test.contains(subtitle) {
            return 9
        } else if estructuraDificil.contains(subtitle) {
            return 9
        } else if cultura.contains(subtitle) {
            return 8
        } else if vocab.contains(subtitle) {
            return 7
        } else if listening.contains(subtitle){
            return 10
        } else if interferencias.contains(subtitle){
            return 14
        }
        else {
            return nil
        }
    }
    
    var body: some View {
        Button(action: {
            if let categoryNumber = searchLessonCategory(subtitle: lesson.subtitle) {
                GlobalData.shared.selectedLesson = lesson.subtitle
                self.IndexSeleccionado = categoryNumber
            } else {
                self.showModal = true
            }
        }) {
            VStack(spacing: 16) {
                // Círculo con texto en el centro
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 100, height: 100)
                    Text(lesson.lessonNumber)
                        .foregroundColor(.blue)
                }
                // Título principal
                Text(lesson.title)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Subtítulo en cursiva
                Text(lesson.subtitle)
                    .font(.subheadline)
                    .italic()
                    .multilineTextAlignment(.center)
                
                // Descripción
                Text(lesson.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Nivel
                Text(lesson.level)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                
                // Línea separadora
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .foregroundColor(.gray)
        .alert(isPresented: $showModal) {
            Alert(
                title: Text("Opción en desarrollo"),
                message: Text("Esta opción aún no está disponible."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

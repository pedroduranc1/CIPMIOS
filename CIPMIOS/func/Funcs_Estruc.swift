//
//  Funcs_Estruc.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 12/12/23.
//

import Foundation
import SwiftUI

func extraerVerbo(oracionCompleta: String) -> String {
    let oracionCompletaTrimmed = oracionCompleta.trimmingCharacters(in: .whitespacesAndNewlines)
    let palabras = oracionCompletaTrimmed.components(separatedBy: " ")

    if palabras.count > 0 {
        return palabras[palabras.count - 1]
    } else {
        return ""
    }
}

func hintPalabraClave(oracion: String) -> String {
    let verbo = extraerVerbo(oracionCompleta: oracion)
    return verbo
}


func Dificultad1(selectedOption: String?, selectedRango: String?, TxtEng: inout String, TxtSpa: inout String, TxtPalabraClave: inout String) {
    guard let selectedOption = selectedOption else { return }
    
    switch selectedOption {
    case "Present Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresSimp1()

            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)

        default:
            break
        }
    case "Present Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresCont1()

            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)

        default:
            break
        }
    default:
        break
    }
}

func Limpiar(TxtEng: Binding<String>, TxtSpa: Binding<String>, TxtPalabraClave: Binding<String>, StatusColor: Binding<String>, userInput: Binding<String>) {
    TxtEng.wrappedValue = ""
    TxtSpa.wrappedValue = ""
    TxtPalabraClave.wrappedValue = ""
    StatusColor.wrappedValue = "blanco"
    userInput.wrappedValue = ""
}

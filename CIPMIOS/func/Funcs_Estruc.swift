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
    case "Present Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerf1()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerfCont1()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastSimp1()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastCont1()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerf1()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Past Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerfCont1()
            
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

func Dificultad2(selectedOption: String?, selectedRango: String?, TxtEng: inout String, TxtSpa: inout String, TxtPalabraClave: inout String) {
    guard let selectedOption = selectedOption else { return }
    
    switch selectedOption {
    case "Present Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresSimp2()
            
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
            gen.GenPresCont2()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerf2()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerfCont2()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastSimp2()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastCont2()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerf2()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Past Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerfCont2()
            
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

func Dificultad3(selectedOption: String?, selectedRango: String?, TxtEng: inout String, TxtSpa: inout String, TxtPalabraClave: inout String) {
    guard let selectedOption = selectedOption else { return }
    
    switch selectedOption {
    case "Present Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresSimp3()
            
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
            gen.GenPresCont3()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerf3()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerfCont3()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastSimp3()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastCont3()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerf3()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Past Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerfCont3()
            
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

func Dificultad4(selectedOption: String?, selectedRango: String?, TxtEng: inout String, TxtSpa: inout String, TxtPalabraClave: inout String) {
    guard let selectedOption = selectedOption else { return }
    
    switch selectedOption {
    case "Present Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresSimp4()
            
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
            gen.GenPresCont4()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerf4()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Present Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPresPerfCont4()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Simple":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastSimp4()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastCont4()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
    case "Past Perfect":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerf4()
            
            TxtEng = gen.gene
            TxtSpa = gen.gens
            TxtPalabraClave = hintPalabraClave(oracion: TxtEng)
            
        default:
            break
        }
        
    case "Past Perfect Continuous":
        switch selectedRango {
        case "0 a 100":
            // Generador
            let gen = Generator()
            // Estructura
            gen.GenPastPerfCont4()
            
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

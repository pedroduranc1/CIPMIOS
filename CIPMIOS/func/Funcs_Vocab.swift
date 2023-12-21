//
//  Funcs_Vocab.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 19/12/23.
//

import Foundation

func VocabPractice(selectedRango: String?,TxtEng: inout String, TxtSpa: inout String, TxtPalabraClave: inout String){
    guard let selectedRango = selectedRango else { return }
    
    switch selectedRango {
    case "0 a 50":
        let gen = Vocabgen()
        
        gen.genCeroToFifty()
        
        TxtEng = gen.gene;
        TxtSpa = gen.gens;
        TxtPalabraClave = hintPalabraClave(oracion: TxtEng);
        
    case "50 a 100":
        let gen = Vocabgen()
        
        gen.genFitToHun()
        
        TxtEng = gen.gene;
        TxtSpa = gen.gens;
        TxtPalabraClave = hintPalabraClave(oracion: TxtEng);
        
    case "100 a 150":
        let gen = Vocabgen()
        
        gen.cientociencin()
        
        TxtEng = gen.gene;
        TxtSpa = gen.gens;
        TxtPalabraClave = hintPalabraClave(oracion: TxtEng);
        
    case "150 a 200":
        let gen = Vocabgen()
        
        gen.CV150a200()
        
        TxtEng = gen.gene;
        TxtSpa = gen.gens;
        TxtPalabraClave = hintPalabraClave(oracion: TxtEng);
        
    default: break;
    }
}

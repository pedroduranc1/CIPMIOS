//
//  LearnStrucFuncs.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/7/24.
//

import Foundation
import SwiftUI


func ActivarGeneradorMedianteOpcion(_ functionName: String, in object: Generator,TxtEng: inout String, TxtSpa: inout String) {
    let gen = Generator()
    
    switch functionName {
    case "Present Simple":
        // Estructura
        gen.GenPresSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Present Continuous":
        gen.GenPresCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Present Perfect":
        gen.GenPresPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Present Perfect Continuous":
        gen.GenPresPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Past Simple":
        gen.GenPastSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Past Continuous":
        gen.GenPastCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Past Perfect":
        gen.GenPastPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Past Perfect Continuous":
        gen.GenPastPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Future Simple":
        break
    case "Future Continuous":
        break
    case "Future Perfect":
        break
    case "Future Perfect Continuous":
        break
    case "Would Simple":
        break
    case "Would Continuous":
        break
    case "Would Perfect":
        break
    case "Would Perfect Continuous":
        break
    case "Could Simple":
        break
    case "Could Continuous":
        break
    case "Could Perfect":
        break
    case "Could Perfect Continuous":
        break
    case "Should Simple":
        break
    case "Should Continuous":
        break
    case "Should Perfect":
        break
    case "Should Perfect Continuous":
        break
    case "Might Simple":
        break
    case "Might Continuous":
        break
    case "Might Perfect":
        break
    case "Might Perfect Continuous":
        break
    case "Can Simple":
        break
    case "Can Continuous":
        break
    case "Must Simple":
        break
    case "Must Continuous":
        break
    case "Present Simple Passive":
        break
    case "Present Continuous Passive":
        break
    case "Present Perfect Passive":
        break
    case "Past Simple Passive":
        break
    case "Past Continuous Passive":
        break
    case "Past Perfect Passive":
        break
    case "Future Simple Passive":
        break
    case "Would Simple Passive":
        break
    case "For Object To":
        break
    case "Be Used To":
        break
    case "Used To":
        break
    case "There Be":
        break
    case "Have To":
        break
    case "Going To Present":
        break
    case "Going To Past":
        break
    case "Feel like":
        break
    case "Supposed To Present":
        break
    case "Supposed To Past":
        break
    case "Get Structures":
        break
    case "P-V-PP":
        break
    case "Reflexive Structures":
        break
    case "Causative Have":
        break
    case "Verbos Juntos":
        break
    case "Noun Adjectives":
        break
    case "Verbal Adjectives":
        break
    case "Wish + Past Simple":
        break
    case "Wish + Would Simple":
        break
    case "Wish + Past Perfect":
        break
    case "Comparativos":
        break
    case "Question Structures":
        break
    case "Phrasal Verbs":
        break
    case "Just Phrasal Verbs":
        break

    default:
        print("No matching function found for \(functionName)")
    }
}

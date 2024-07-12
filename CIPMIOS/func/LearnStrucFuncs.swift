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
        gen.GenFutSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Future Continuous":
        gen.GenFutCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Future Perfect":
        gen.GenFutPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Future Perfect Continuous":
        gen.GenFutPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Would Simple":
        gen.GenWouldSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Would Continuous":
        gen.GenWouldCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Would Perfect":
        gen.GenWouldPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Would Perfect Continuous":
        gen.GenWouldPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Could Simple":
        gen.GenCouldSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Could Continuous":
        gen.GenCouldCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Could Perfect":
        gen.GenCouldPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Could Perfect Continuous":
        gen.GenCouldPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Should Simple":
        gen.GenShouldSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Should Continuous":
        gen.GenShouldCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Should Perfect":
        gen.GenShouldPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Should Perfect Continuous":
        gen.GenShouldPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Might Simple":
        gen.GenMightSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Might Continuous":
        gen.GenMightCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Might Perfect":
        gen.GenMightPerf2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Might Perfect Continuous":
        gen.GenMightPerfCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Can Simple":
        gen.GenCanSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Can Continuous":
        gen.GenCanCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Must Simple":
        gen.GenMustSimp2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "Must Continuous":
        gen.GenMustCont2()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
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

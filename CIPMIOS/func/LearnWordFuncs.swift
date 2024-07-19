//
//  LearnWordFuncs.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import Foundation

func ActivarPalabraVocab(_ functionName: String,TxtEng: inout String, TxtSpa: inout String) {
    let gen = CeroToFifty();
    let gen1 = Generator();
    let n = Nobles()
    
    switch functionName {
    case "the":
        gen.artob(artpos: 0)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
    case "be":
        gen.tobe()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    case "and":
        gen.advpronverb(advPos: 4)
        
        TxtEng = gen.gens
        TxtSpa = gen.gene
        break
    case "of":
        gen.prepartob(pos: 0)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
    case "a":
        gen.artoba()
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
    case "in":
        gen.prepartob(pos: 1)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
    case "to(infinitive)":
        //TODO: FALTA ESA FUNCION
        //gen.gen(pos: 0)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
    case "have":
        //SE TIENE QUE ACTUALIZAR LA FUNCION
        //n.genpress()
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
    case "to":
        gen.prepartob(pos: 2)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
   
    case "it":
        gen.pronverb(pronom: "eso ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
   
    case "I":
        gen.pronverb(pronom: "yo ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
   
   
    default:
        print("No matching function found for \(functionName)")
    }
}

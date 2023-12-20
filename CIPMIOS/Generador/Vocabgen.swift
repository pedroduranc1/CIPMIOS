//
//  vocabgen.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 19/12/23.
//

import Foundation

class Vocabgen {
    var gens: String  =  " "
    var gene: String  =  " "
    
    
    public func genCeroToFifty(){
        //conexion con el dato
        let ob = C0a50()
        
        //random
        let r = Int.random(in: 0..<8)
        
        switch r {
        case 0:
            ob.prepartob();
            gens = ob.ob ?? "";
            gene = ob.eng ?? "";
        case 1:
            ob.pronverb();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
            
        case 2:
            ob.adjmethod();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
            
        case 3:
            ob.advpronverb();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
            
        case 4:
            ob.pronverbwill();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
            
        case 5:
            ob.pronverbwould();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
            
        case 6:
            ob.pronverbcan();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
            
        case 7:
            ob.tobe();
            gens = ob.gens ?? "";
            gene = ob.gene ?? "";
        default: break
        }
    }
    
    public func genFitToHun(){
        //conexion con el dato
        let fi = C50a100()
        
        //random
        let r = Int.random(in: 0..<4)
        
        switch r {
        case 0:
            fi.adjpro();
            
            gens = fi.gens ?? "";
            gene = fi.gene ?? "";
        case 1:
            fi.adprotran();
            
            gens = fi.gens ?? "";
            gene = fi.gene ?? "";
        case 2:
            fi.prpproob();
            
            gens = fi.gens ?? "";
            gene = fi.gene ?? "";
        case 3:
            fi.intransvplacead();
            
            gens = fi.gens ?? "";
            gene = fi.gene ?? "";
        default: break;
        }
    }
}

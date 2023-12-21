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
    
    public func cientociencin(){
        //conexion con el dato
        let ci = C100a150()
        
        //random
        let i = Int.random(in: 0..<6)
        
        switch i {
        case 0:
            ci.verbhuntofif();
            gens = ci.gens ?? "";
            gene = ci.gene ?? "";
            break;
            
        case 1:
            ci.vocabbecome();
            gens = ci.gens ?? "";
            gene = ci.gene ?? "";
            break;
            
        case 2:
            ci.maymeth();
            gens = ci.gens ?? "";
            gene = ci.gene ?? "";
            break;
            
        case 3:
            ci.shouldmeth();
            gens = ci.gens ?? "";
            gene = ci.gene ?? "";
            break;
            
        case 4:
            ci.advermeth();
            gens = ci.gens ?? "";
            gene = ci.gene ?? "";
            break;
            
        case 5:
            ci.prepmeth();
            gens = ci.gens ?? "";
            gene = ci.gene ?? "";
            break;
            
        default:break;
        }
    }
    
    public func CV150a200(){
        //conexion con el dato
        let c = C150a200()
        
        //random
        let i = Int.random(in: 0..<7)
        
        switch i {
        case 0:
            c.verbgen();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
            
        case 1:
            c.adjn();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
            
        case 2:
            c.verbsgenadv();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
            
        case 3:
            c.detmeth();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
            
        case 4:
            c.meth4();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
            
        case 5:
            c.mostmeth();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
        case 6:
            c.eachmeth();
            gens = c.gens ?? "";
            gene = c.gene ?? "";
            break;
            
        default:break;
        }
    }
}

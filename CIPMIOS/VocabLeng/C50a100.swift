//
//  C50a100.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 20/12/23.
//

import Foundation

class C50a100 {
    let alleng=["one ","time ","there ","year ","so ",
                "to think ","when ","which ","them ","some ",
                "me ","people ","to take ","out ","into ",
                "just ","to see ","him ","your ","to come ",
                "could ","now ","than ","to like ","other ",
                "how ","then ","its ","our ","two ",
                "more ","these ","to want ","way ","to look ",
                "first ","also ","new ","because ","day",
                "to use ","man ","find ","here ",
                "thing ","to give ","many "];

    let allsp=["uno ","tiempo ","ahí ","año ", "entonces (así que) ",
               "pensar ","cuando ", "cual, cuales ","ellos, ellas ",
               "algunos, algunas ","mi ",
               "gente ","agarrar-tomar ","fuera",
               "dentro de","solo ","ver ",
               "él como objeto ","tuyo ",
               "venir ",
               "podría,pudiera,pudiese","ahora ",
               "qué -para comparar adjetivos",
               "gustar ",
               "otro ","cómo ","entonces ","suyo de eso ",
               "nuestro ",
               "dos ","mas ","estos ","querer ",
               "camino,manera,forma ","mirar ",
               "primero ","tambíen ",
               "nuevo ","porque (explicacion) ","día ",
               "usar ","hombre ","encontrar ",
               "aqui ",
               "cosa ","dar ","muchos"];


    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "ellos ", "nosotros "];
    let pronoun = ["I ", "you ", "he ", "she ", "it ", "they ", "we "];

    let verbi = ["think ", "see ", "come ", "look "];
    let verbt = ["take ", "use ", "give ", "find ", "want "];

    let vi1 = ["pienso ", "veo ", "vengo ", "miro "];
    let vi2 = ["piensas ", "ves ", "vienes ", "miras "];
    let vi3 = ["piensa ", "ve ", "viene ", "mira "];
    let vi4 = ["piensan ", "ven ", "vienen ", "miran "];
    let vi5 = ["pensamos ", "vemos ", "venimos ", "miramos "];


    let vt1 = ["tomo ", "uso ", "doy ", "encuentro ", "quiero "];
    let vt2 = ["tomas ", "usas ", "das ", "encuentras ", "quieres "];
    let vt3 = ["toma ", "usa ", "da ", "encuentra ", "quiere "];
    let vt4 = ["toman ", "usan ", "dan ", "encuentran ", "quieren "];
    let vt5 = ["tomamos ", "usamos ", "damos ", "encontramos ", "queremos "];

    let adv = ["when ", "because ", "how ", "so "];
    let adve = ["cuando ", "porque ", "como ", "así que "];

    let prp = ["with ", "for ", "out of ", "into "];
    let prpo = ["con ", "para ", "fuera de ", "dentro de "];

    let obj = ["him ", "them ", "me ", "her ", "one ", "the time ", "the thing ", "us "];
    let objj = ["el ", "ellos ", "mi ", "ella ", "uno ", "el tiempo ", "la cosa ", "nosotros "];

    let plad = ["there ", "here ", "now ", "also ", "well ", "then "];
    let lugad = ["ahí ", "aquí ", "ahora ", "también ", "bien ", "entonces "];


    let nouns = ["years ", "days ", "men "];
    let sust = ["años ", "dias ", "hombres "];

    let adj = ["muchos ", "mas ", "dos ", "estos ", "nuestros ", "sus ", "otros ", "tus ", "nuevos ", "primeros ", "algunos ", "solo ", "cuales "];
    let adjeng = ["many ", "more ", "two ", "these ", "our ", "its ", "other ", "your ", "new ", "first ", "some ", "just ", "which "];
    
    var gene: String? = " "
    var gens: String? = " "
    
    var j = 0;
    
    var ob:String?
    var eng:String?
    
    public func vocab50a100(){
        if j == alleng.count {
            j = 0
        }
        ob = allsp[j]
        eng = alleng[j]
        j += 1
    }
    
    public func adjpro(){
        let n  =  Int.random(in: 0..<nouns.count);
        let a  =  Int.random(in: 0..<adj.count);
        
        gens = adj[a] + sust[n];
        gene = adjeng[a] + nouns[n];
    }
    
    public func adprotran(){
        let p  =  Int.random(in: 0..<pronombres.count);
        let iv  =  Int.random(in: 0..<vt1.count);
        let ad  =  Int.random(in: 0..<adv.count);
        
        var temp = pronombres[p];
        let iii = Int.random(in: 0..<2);
        
        switch temp{
        case "yo ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[0] + vt1[iv];
                gene = adv[ad] + pronoun[0] + verbt[iv];
                
            case 1:
                gens = adve[ad] + pronombres[0] + "no " + vt1[iv];
                gene = adv[ad] + pronoun[0] + "don't " + verbt[iv];
            default: break;
            }
        case "tú ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[1] + vt2[iv];
                gene = adv[ad] + pronoun[1] + verbt[iv];
                
            case 1:
                gens = adve[ad] + pronombres[1] + "no " + vt2[iv];
                gene = adv[ad] + pronoun[1] + "don't " + verbt[iv];
            default: break;
            }
        case "él ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[2] + vt3[iv];
                gene = adv[ad] + pronoun[2] + verbt[iv].trimmingCharacters(in: .whitespacesAndNewlines) + "s ";
                
            case 1:
                gens = adve[ad] + pronombres[2] + "no " + vt3[iv];
                gene = adv[ad] + pronoun[2] + "doesn't " + verbt[iv];
            default: break;
            }
        case "ella ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[3] + vt3[iv];
                gene = adv[ad] + pronoun[3] + verbt[iv].trimmingCharacters(in: .whitespacesAndNewlines) + "s ";
                
            case 1:
                gens = adve[ad] + pronombres[3] + "no " + vt3[iv];
                gene = adv[ad] + pronoun[3] + "doesn't " + verbt[iv];
            default: break;
            }
        case "eso ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[4] + vt3[iv];
                gene = adv[ad] + pronoun[4] + verbt[iv].trimmingCharacters(in: .whitespacesAndNewlines) + "s ";
                
            case 1:
                gens = adve[ad] + pronombres[4] + "no " + vt3[iv];
                gene = adv[ad] + pronoun[4] + "doesn't " + verbt[iv];
            default: break;
            }
        case "ellos ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[5] + vt4[iv];
                gene = adv[ad] + pronoun[5] + verbt[iv];
                
            case 1:
                gens = adve[ad] + pronombres[5] + "no " + vt4[iv];
                gene = adv[ad] + pronoun[5] + "don't " + verbt[iv];
            default: break;
            }
        case "nosotros ":
            switch iii{
            case 0:
                gens = adve[ad] + pronombres[6] + vt5[iv];
                gene = adv[ad] + pronoun[6] + verbt[iv];
                
            case 1:
                gens = adve[ad] + pronombres[6] + "no " + vt5[iv];
                gene = adv[ad] + pronoun[6] + "don't " + verbt[iv];
            default: break;
            }
        default:break;
        }
    }
    
    public func prpproob(){
        let i  =  Int.random(in: 0..<prp.count);
        let ii  =  Int.random(in: 0..<obj.count);
        
        gens = prpo[i] + objj[ii];
        gene = prp[i] + obj[ii];
    }
    
    public func intransvplacead(){
        let p  =  Int.random(in: 0..<pronombres.count);
        let iv  =  Int.random(in: 0..<vi1.count);
        let ad  =  Int.random(in: 0..<lugad.count);
        
        var temp = pronombres[p];
        let iii = Int.random(in: 0..<2);
        
        switch temp{
        case "yo ":
            switch iii{
            case 0:
                gens = pronombres[0] + vi1[iv] + lugad[ad];
                gene = pronoun[0] + verbt[iv] + plad[ad];
                
            case 1:
                gens = pronombres[0] + "no " + vi1[iv] + lugad[ad];
                gene = pronoun[0] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        case "tú ":
            switch iii{
            case 0:
                gens = pronombres[1] + vi2[iv] + lugad[ad];
                gene = pronoun[1] + verbt[iv] + plad[ad];
                
            case 1:
                gens = pronombres[1] + "no " + vi2[iv] + lugad[ad];
                gene = pronoun[1] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        case "él ":
            switch iii{
            case 0:
                gens = pronombres[2] + vi3[iv] + lugad[ad];
                gene = pronoun[2] + verbt[iv].trimmingCharacters(in: .whitespacesAndNewlines) + "s " + plad[ad];
                
            case 1:
                gens = pronombres[2] + "no " + vi3[iv] + lugad[ad];
                gene = pronoun[2] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        case "ella ":
            switch iii{
            case 0:
                gens = pronombres[3] + vi3[iv] + lugad[ad];
                gene = pronoun[3] + verbt[iv].trimmingCharacters(in: .whitespacesAndNewlines) + "s " + plad[ad];
                
            case 1:
                gens = pronombres[3] + "no " + vi3[iv] + lugad[ad];
                gene = pronoun[3] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        case "eso ":
            switch iii{
            case 0:
                gens = pronombres[4] + vi3[iv] + lugad[ad];
                gene = pronoun[4] + verbt[iv].trimmingCharacters(in: .whitespacesAndNewlines) + "s " + plad[ad];
                
            case 1:
                gens = pronombres[4] + "no " + vi3[iv] + lugad[ad];
                gene = pronoun[4] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        case "ellos ":
            switch iii{
            case 0:
                gens = pronombres[5] + vi4[iv] + lugad[ad];
                gene = pronoun[5] + verbt[iv] + plad[ad];
                
            case 1:
                gens = pronombres[5] + "no " + vi4[iv] + lugad[ad];
                gene = pronoun[5] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        case "nosotros ":
            switch iii{
            case 0:
                gens = pronombres[6] + vi5[iv] + lugad[ad];
                gene = pronoun[6] + verbt[iv] + plad[ad];
                
            case 1:
                gens = pronombres[6] + "no " + vi5[iv] + lugad[ad];
                gene = pronoun[6] + "don't " + verbt[iv] + plad[ad];
            default: break;
            }
        default:break;
        }
    }
    
}

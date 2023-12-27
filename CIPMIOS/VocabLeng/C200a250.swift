//
//  C200a250.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 27/12/23.
//

import Foundation

class C200a250{
    let alleng = [
        "goverment ","goverment ","run ","small ","number ","off ","always ","move ",
        "like ","night ","live ","mr ","point ","believe ","hold ","today ","bring ",
        "happen ","next ","without ","before ","large ","all ","million ","must ",
        "home ","under ","water ","room ","write ","mother ","area ","national ",
        "money ","story ","young ","fact ","month ","different ","lot ","right ",
        "study ","book ","eye ","job ","word ","though ","business ","issue ",
        "side ","kind "
    ];
    
    let allsp = [
        "gobierno ","gobierno ","correr ","pequeño ","número ","apagado ","siempre ","mover ",
        "como ","noche ","vivir ","señor ","apuntar ","creer ","aguantar ","hoy ","traer ",
        "pasar ","siguiente ","sin ","antes ", "grande ","todos ","millones ","debe ",
        "casa ","bajo ", "agua ","sala ","escribir ","madre ","área ","nacional ",
        "dinero ","cuento","joven ","hecho ","mes ","diferente ","lote ","correcto ",
        "estudio ","libro","ojo ","trabajo ","palabra ","aunque ","negocio ","tema ",
        "lado ","tipo "
    ];
    
    let pronoun = ["I ", "you ", "he ", "she ", "it ", "we ", "they "];
    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "nosotros ", "ellos "];
    
    let verb = ["play ", "run ", "move ", "live ", "point ", "hold ", "bring ",
                "believe ", "must ", "write ", "study "
    ];
    
    let verb3 = ["plays ", "runs ", "moves ", "lives ", "points ", "holds ", "brings ",
                 "believes ", "must ", "writes ", "studies "
    ];
    let verb3it = ["plays ", "runs ", "moves ", "lives ", "points ", "holds ", "brings ",
                   "believes ", "must ", "writes ", "studies ", "happens "
    ];
    
    let v1 = ["juego ", "corro ", "muevo ", "vivo ", "apunto ", "sostengo ", "traigo ",
              "creo ", "debo ", "escribo ", "estudio "
    ];
    let v1s = ["juegue ", "corra ", "mueva ", "viva ", "apunte ", "sostenga ", "traiga ",
               "crea ", "deba ", "escriba ", "estudie "
    ];
    let v2 = ["juegas ", "corres ", "mueves ", "vives ", "apuntas ", "sostienes ", "traes ",
              "crees ", "debes ", "escribes ", "estudias "
    ];
    let v2s = ["juegues ", "corras ", "muevas ", "vivas ", "apuntes ", "sostengas ", "traigas ",
               "creas ", "debas ", "escribas ", "estudies "
    ];
    let v3 = ["juega ", "corre ", "mueve ", "vive ", "apunta ", "sostiene ", "trae ",
              "cree ", "debe ", "escribe ", "estudia "
    ];
    let v3s = ["juegue ", "corra ", "mueva ", "viva ", "apunte ", "sostienga ", "traiga ",
               "crea ", "deba ", "escriba ", "estudie "
    ];
    let v3it = ["juegue ", "corra ", "mueva ", "viva ", "apunte ", "sostienga ", "traiga ",
                "crea ", "deba ", "escriba ", "estudie ", "suceda "
    ];
    
    let v4 = ["juegan ", "corren ", "mueven ", "viven ", "apuntan ", "sostienen ", "traen ",
              "creen ", "deben ", "escriben ", "estudian "
    ];
    let v4s = ["juegen ", "corran ", "muevan ", "vivan ", "apunten ", "sostengan ", "traigan ",
               "crean ", "deban ", "escriban ", "estudien "
    ];
    
    let v5 = ["jugamos ", "corremos ", "movemos ", "vivimos ", "apuntamos ", "sostenemos ", "traemos ",
              "creemos ", "debemos ", "escribimos ", "estudiamos "
    ];
    let v5s = ["jugemos ", "corramos ", "movamos ", "vivamos ", "apuntemos ", "sostengamos ", "traigamos ",
               "creamos ", "debamos ", "escribamos ", "estudiemos "
    ];
    let advs = ["though ", "after ", "before "];
    let adve = ["aun que ", "despues de que ", "antes de que "];
    
    let nouns = ["the government ", "the number ", "the night ", "today ", "the home ",
                 "the water ", "the room ", "the mother ", "the area ", "the money ", "the story ", "the fact ", "the month ", "the lot "
                 , "the right ", "the book ", "the eye ", "the job ", "the word ", "the business ",
                 "the issue ", "the side ", "the kind ", "the head ", "the house "
    ];
    let sust = ["el gobierno ", "el número ", "la noche ", "hoy ", "el hogar ",
                "el agua ", "el cuarto ", "la madre ", "el área ", "el dinero ", "el cuento ", "el hecho ", "el mes ", "el lote "
                , "el derecho ", "el libro ", "el ojo ", "el empleo ", "la palabra ", "el negocio ",
                "el problema ", "el lado ", "el tipo ", "la cabeza ", "la casa "
    ];
    let sustf = ["la noche ", "la madre ", "la palabra ", "la cabeza ", "la casa "];
    let sustfeng = ["night ", "mother ", "word ", "head ", "house "];
    let sustfpleng = ["nights ", "mothers ", "words ", "heads ", "houses ", "waters "];
    let sustfpl = ["noches ", "madres ", "palabras ", "cabezas ", "casas ", "aguas "];
    
    let sustm = ["el gobierno ", "el número ", "hoy ", "el hogar ",
                 "el agua ", "el cuarto ", "el área ", "el dinero ", "el cuento ", "el hecho ", "el mes ", "el lote "
                 , "el derecho ", "el libro ", "el ojo ", "el empleo ", "el negocio ",
                 "el problema ", "el lado ", "el tipo "
    ];
    let sustmeng = ["government ", "number ", "today ", "home ",
                    "water ", "room ", "area ", "money ", "story ", "fact ", "month ", "lot "
                    , "money ", "book ", "eye ", "job ", "business ",
                    "problem ", "side ", "kind "
    ];
    let sustmpl = ["gobiernos ", "números ", "hogares ", "cuartos ", "areas "];
    let nounmpl = ["governments ", "numbers ", "homes ", "rooms ", "areas "];
    
    
    let preps = ["next to ", "without ", "under ", "far from "];
    let prepo = ["al lado de ", "sin ", "debajo de ", "lejos de "];
    
    let adjsm = ["pequeño ", "nacional ", "joven ", "diferente ", "largo ", "negro ", "grande "];
    let adjsf = ["pequeña ", "nacional ", "joven ", "diferente ", "larga ", "negra ", "grande "];
    
    let adjen = ["small ", "national ", "young ", "diffrent ", "long ", "black ", "large "];
    
    let det = ["all ", "both ", "a million "];
    let detf = ["todas las ", "ambas ", "un millón de "];
    let detm = ["todos los ", "ambos ", "un millón de "];
    
    var gene: String? = " "
    var gens: String? = " "
    
    var j = 0;
    
    var ob:String?
    var eng:String?
    
    public func vocab200a250(){
        if j == alleng.count {
            j = 0
        }
        ob = allsp[j]
        eng = alleng[j]
        j += 1
    }
    
    public func verbgen(){
        let p  =  Int.random(in: 0..<pronombres.count);
        let v =  Int.random(in: 0..<verb.count);
        
        var temp = pronombres[p];
        
        switch temp {
            
        case "yo ":
            gens = pronombres[p] + v1[v];
            gene = pronoun[p] + verb[v];
            
        case "tú ":
            gens = pronombres[p] + v2[v];
            gene = pronoun[p] + verb[v];
            
        case "él ":
            gens = pronombres[p] + v3[v];
            gene = pronoun[p] + verb3[v];
            
            
        case "ella ":
            gens = pronombres[p] + v3[v];
            gene = pronoun[p] + verb3[v];
            
        case "eso ":
            gens = pronombres[p] + v3[v];
            gene = pronoun[p] + verb3[v];
            
        case "ellos ":
            gens = pronombres[p] + v4[v];
            gene = pronoun[p] + verb[v];
            
        case "nosotros ":
            gens = pronombres[p] + v5[v];
            gene = pronoun[p] + verb[v];
            
        default:break;
        }
    }
    
    public func advsverbsgen(){
        let p  =  Int.random(in: 0..<pronombres.count);
        let v =  Int.random(in: 0..<verb.count);
        let ad =  Int.random(in: 0..<adve.count);
        
        var temp = pronombres[p];
        
        switch temp {
            
        case "yo ":
            gens = adve[ad] + pronombres[p] + v1[v];
            gene = advs[ad] + pronoun[p] + verb[v];
            
        case "tú ":
            gens = adve[ad] + pronombres[p] + v2[v];
            gene = advs[ad] + pronoun[p] + verb[v];
            
        case "él ":
            gens = adve[ad] + pronombres[p] + v3[v];
            gene = advs[ad] + pronoun[p] + verb3[v];
            
            
        case "ella ":
            gens = adve[ad] + pronombres[p] + v3[v];
            gene = advs[ad] + pronoun[p] + verb3[v];
            
        case "eso ":
            gens = adve[ad] + pronombres[p] + v3[v];
            gene = advs[ad] + pronoun[p] + verb3[v];
            
        case "ellos ":
            gens = adve[ad] + pronombres[p] + v4[v];
            gene = advs[ad] + pronoun[p] + verb[v];
            
        case "nosotros ":
            gens = adve[ad] + pronombres[p] + v5[v];
            gene = advs[ad] + pronoun[p] + verb[v];
            
        default:break;
        }
    }
    
    public func prepnoun(){
        let p  =  Int.random(in: 0..<prepo.count);
        let n =  Int.random(in: 0..<nouns.count);
        
        gens = prepo[p] + sust[n];
        gene = preps[p] + nouns[n];
    }
    
    public func adjnounmale(){
        let n  =  Int.random(in: 0..<prepo.count);
        let a =  Int.random(in: 0..<nouns.count);
        
        gens = sustm[n] + adjsm[a];
        gene = "the " + adjen[a] + sustmeng[n];
    }
    
    public func adjnounfemale(){
        let n  =  Int.random(in: 0..<prepo.count);
        let a =  Int.random(in: 0..<nouns.count);
        
        gens = sustm[n] + adjsm[a];
        gene = "the " + adjen[a] + sustfeng[n];
    }
    
    public func detf200a250(){
        let d  =  Int.random(in: 0..<det.count);
        let n =  Int.random(in: 0..<sustfpl.count);
        
        gens = detf[d] + sustfpl[n];
        gene = det[d] + sustfpleng[n];
    }
    
    public func detm200a250(){
        let d  =  Int.random(in: 0..<det.count);
        let n =  Int.random(in: 0..<sustfpl.count);
        
        gens = detm[d] + sustmpl[n];
        gene = det[d] + nounmpl[n];
    }
}

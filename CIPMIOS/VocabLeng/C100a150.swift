//
//  C100a150.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 20/12/23.
//

import Foundation

//faltan funciones

class C100a150 {
    let alleng = ["only ","those ","to tell ","one ","very ","her ","even ",
                  "back ","any ","good ","woman ","through ","us ","life ","child ",
                  "there ","to work ","down ","may ","after ",
                  "should ","to call ","world ", "school ","still ","to try ",
                  "as ","last ","to ask ","to need ",
                  "too ","to feel ","three ","state ","never ","become ",
                  "between ",
                  "high ","really ","something ","most ","another ","much ",
                  "family ","own ","leave ","put"];
    let allsp = ["solo","esos,esas ","comentar","uno,una ", "muy ","ella como objeto","incluso ",
                 "atrás ","cualquier ","bien", "mujer ","a través de ","nosotros como objeto",
                 "vida ","niño, niña ", "ahí","trabajar ","abajo ","poder de posibilidad ",
                 "despues","deberia ","llamar ","mundo ", "escuela ","todavía ","intentar",
                 
                 "como (comparativo) ","ultimo ","preguntar "
                 ,"necesitar ", "demasiado ","sentir",
                 "tres ","estado ","nunca ","convertirse ",
                 "entre","alto ","realmente ","algo ","mas (superlativo) ",
                 "otro-singular ","mucho ","familia ",
                 "propio","abandonar,dejar "];
    
    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "ellos ", "nosotros "];
    let pronoun = ["I ", "you ", "he ", "she ", "it ", "they ", "we "];
    
    let verbs = ["tell ", "work ", "call ", "last ", "ask ", "need ", "feel ",
                 "leave ", "own ", "try "];
    
    let verbs3 = ["tells ", "works ", "calls ", "lasts ", "asks ", "needs ", "feels ",
                  "leaves ", "owns ", "tries "];
    
    let verbos = ["comentar ", "trabajar ", "llamar ", "durar ", "preguntar ",
                  "necesitar ", "sentir ", "dejar ", "poseer ", "intentar "];
    let verbsub1 = ["comente ", "trabaje ", "llame ", "dure ", "pregunte ", "necesite ", "sienta ", "deje ", "posea ", "intente "];
    let verbsub2 = ["comentes ", "trabajes ", "llames ", "dures ", "preguntes ", "necesites ", "sientas ", "dejes ", "poseas ", "intentes "];
    let verbsub3 = ["comente ", "trabaje ", "llame ", "dure ", "pregunte ", "necesite ", "sienta ", "deje ", "posea ", "intente "];
    let verbsub4 = ["comenten ", "trabajen ", "llamen ", "duren ", "pregunten ", "necesiten ", "sientan ", "dejen ", "posean ", "intenten "];
    let verbsub5 = ["comentemos ", "trabajemos ", "llamemos ", "duremos ", "preguntemos ", "necesitemos ", "sintamos ", "dejemos ", "poseamos ", "intentemos "];
    
    
    let verbos1 = ["comento ", "trabajo ", "llamo ", "duro ", "pregunto ",
                   "necesito ", "siento ", "dejo ", "poseo ", "intento "];
    
    let verbos2 = ["comentas ", "trabajas ", "llamas ", "duras ", "preguntas ",
                   "necesitas ", "sientes ", "dejas ", "posees ", "intentas "];
    
    let verbos3 = ["comenta ", "trabaja ", "llama ", "dura ", "pregunta ",
                   "necesita ", "siente ", "deja ", "posee ", "intenta "];
    
    let verbos4 = ["comentan ", "trabajan ", "llaman ", "duran ", "preguntan ",
                   "necesitan ", "sienten ", "dejan ", "poseen ", "intentan "];
    
    let verbos5 = ["comentamos ", "trabajamos ", "llamamos ", "duramos ", "preguntamos ",
                   "necesitamos ", "sentimos ", "dejamos ", "poseemos ", "intentamos "];
    
    let mod = ["may ", "should "];
    let deb = ["debería ", "deberías ", "debería ", "debería ", "deberían ", "deberíamos "];
    
    let adv = ["never ", "still ", "really "];
    let adve = ["nunca ", "todavia ", "realmente "];
    
    let bec = ["me convierto ", "te conviertes ", "se convierte ", "se convierte ", "se convierte ", "se convierten ", "nos convertimos"];
    let become = ["become ", "become ", "becomes ", "becomes ", "becomes ", "become ", "become "];
    
    let adveng = ["only ", "even ", "those ", "good ", "through ", "three ", "between "];
    let advsp = ["solamente ", "incluso ", "esas ", "buenas ", "mediante ", "tres ", "entre "];
    let advspm = ["solamente ", "incluso ", "esos ", "buenos ", "mediante ", "tres ", "entre "];
    let plurn = ["women ", "children ", "lives ", "worlds ", "states ", "schools ", "families "];
    let plurs = ["mujeres ", "niños ", "vidas ", "mundos ", "estados ", "escuelas ", "familias "];
    let prep = ["another ", "any "];
    let prepf = ["otro ", "cualquier "];
    let prepm = ["otra ", "cualquier "];
    let sp = ["woman ", "child ", "back ", "life ", "world ", "state ", "school ", "family "];
    let sps = ["mujer ", "niño ", "espalda ", "vida ", "mundo ", "estado ", "escuela ", "familia "];
    
    var gene: String? = " "
    var gens: String? = " "
    
    var j = 0;
    
    var ob:String?
    var eng:String?
    
    public func vocab100a150(){
        if j == alleng.count {
            j = 0
        }
        ob = allsp[j]
        eng = alleng[j]
        j += 1
    }
    
    public func verbhuntofif(){
        let i  =  Int.random(in: 0..<pronombres.count);
        let v  =  Int.random(in: 0..<verbos.count);
        let a  =  Int.random(in: 0..<adve.count);
        
        var temp = pronombres[i];
        
        switch temp {
        case "yo ":
            gens = pronombres[i] + adve[a] + verbos1[v];
            gene = pronoun[i] + adv[a] + verbs[v];
            
        case "tú ":
            gens = pronombres[i] + adve[a] + verbos2[v];
            gene = pronoun[i] + adv[a] + verbs[v];
            
        case "él ":
            gens = pronombres[i] + adve[a] + verbos3[v];
            gene = pronoun[i] + adv[a] + verbs3[v];
            
        case "ella ":
            gens = pronombres[i] + adve[a] + verbos3[v];
            gene = pronoun[i] + adv[a] + verbs3[v];
            
        case "eso ":
            gens = pronombres[i] + adve[a] + verbos3[v];
            gene = pronoun[i] + adv[a] + verbs3[v];
            
        case "ellos ":
            gens = pronombres[i] + adve[a] + verbos4[v];
            gene = pronoun[i] + adv[a] + verbs[v];
            
        case "nosotros ":
            gens = pronombres[i] + adve[a] + verbos5[v];
            gene = pronoun[i] + adv[a] + verbs[v];
            
        default:break;
        }
    }
    
    public func vocabbecome(){
        let p  =  Int.random(in: 0..<pronombres.count);
        
        gens = pronombres[p] + bec[p];
        gene = pronoun[p] + become[p];
    }
    
    public func maymeth(){
        let i  =  Int.random(in: 0..<pronombres.count);
        let v  =  Int.random(in: 0..<verbos.count);
        
        var temp = pronombres[i];
        switch temp {
        case "yo ":
            gens = "puede que " + pronombres[0] + verbsub1[v];
            gene = pronoun[i] + "may " + verbs[v];
            
        case "tú ":
            gens = "puede que " + pronombres[1] + verbsub2[v];
            gene = pronoun[i] + "may " + verbs[v];
            
        case "él ":
            gens = "puede que " + pronombres[2] + verbsub3[v];
            gene = pronoun[i] + "may " + verbs[v];
            
        case "ella ":
            gens = "puede que " + pronombres[3] + verbsub3[v];
            gene = pronoun[i] + "may " + verbs[v];
            
        case "eso ":
            gens = "puede que " + pronombres[4] + verbsub3[v];
            gene = pronoun[i] + "may " + verbs[v];
            
        case "ellos ":
            gens = "puede que " + pronombres[5] + verbsub4[v];
            gene = pronoun[i] + "may " + verbs[v];
            
        case "nosotros ":
            gens = "puede que " + pronombres[6] + verbsub5[v];
            gene = pronoun[i] + "may " + verbs[v];
        default:break;
        }
    }
    
    public func shouldmeth(){
        let i  =  Int.random(in: 0..<pronombres.count);
        let v  =  Int.random(in: 0..<verbos.count);
        
        var temp = pronombres[i];
        
        switch temp {
        case "yo ":
            gens = pronombres[i] + "debería " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
        case "tú ":
            gens = pronombres[i] + "deberías " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
            
        case "él ":
            gens = pronombres[i] + "debería " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
            
        case "ella ":
            gens = pronombres[i] + "debería " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
            
        case "eso ":
            gens = pronombres[i] + "debería " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
            
        case "ellos ":
            gens = pronombres[i] + "deberían " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
        case "nosotros ":
            gens = pronombres[i] + "deberíamos " + verbos[v];
            gene = pronoun[i] + "should " + verbs[v];
            
        default:break;
        }
    }
    
    public func advermeth(){
        let pn  =  Int.random(in: 0..<plurn.count);
        let ad =  Int.random(in: 0..<advsp.count);
        
        var temp = pronombres[pn];
        
        switch temp {
        case "women ":
            gens = advsp[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
            
            
        case "children ":
            gens = advspm[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
            
            
            
        case "lives ":
            gens = advsp[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
            
            
        case "worlds ":
            gens = advspm[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
            
            
        case "states ":
            gens = advspm[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
            
        case "schools ":
            gens = advsp[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
            
            
        case "families ":
            gens = advsp[ad] + plurs[pn];
            gene = adveng[ad] + plurn[pn];
            
        default: break;
        }
    }
    
    public func prepmeth(){
        let p  =  Int.random(in: 0..<prep.count);
        let s =  Int.random(in: 0..<sp.count);
        
        var temp = sp[s];
        
        switch temp{
        case "woman ":
            gens = prepm[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "child ":
            gens = prepf[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "back ":
            gens = prepm[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "life ":
            gens = prepm[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "world ":
            gens = prepf[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "state ":
            gens = prepf[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "school ":
            gens = prepm[p] + sps[s];
            gene = prep[p] + sp[s];
            
            
        case "family ":
            gens = prepm[p] + sps[s];
            gene = prep[p] + sp[s];
            
        default:break;
        }
    }
}

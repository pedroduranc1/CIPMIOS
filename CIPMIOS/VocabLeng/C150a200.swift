//
//  C150a200.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 21/12/23.
//

import Foundation

class C150a200{
    let alleng = [
        "old ","while ","to mean ","on ","to keep ","student ","why ",
        "to let ","great ","same ","big ","group ","begin ","to seem ",
        "country ","to help ","to talk ","to turn ","problem ",
        "every ","start ","hand ","might ","american ","to show ",
        "part ","about ","against ","place ","over ","such ",
        "again ","few ","case ","week ","company ",
        "system ","each ","right ","program ","to hear ",
        "question ","during ","work ","to play "
    ];
    
    let allsp = [
        "viejo ", "mientras ", "significar ", "sobre (superficie) ", "mantener ", "estudiante ", "por qué ",
        "dejar", "grandioso ", "igual", "grande ", "grupo ", "comenzar ", "parecer ",
        "país ", "ayuda ", "hablar ",  "girar ", "problema ",
        "cada ", "inicio ", "mano ", "quizá que se usa como modal ", "americano ", "mostrar ",
        "parte ", "acerca de ", "contra ", "lugar ", "sobre por encima ", "tal ",
        "otra vez ", "pocos ", "caso ",  "semana ", "empresa ",
        "sistema ", "cada uno ", "derecho ", "programa ", "escuchar ",
        "pregunta ", "durante ", "trabajo como sustantivo", "jugar "
    ];
    
    let pronoun = ["I ", "you ", "he ", "she ", "it ", "we ", "they "];
    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "nosotros ", "ellos "];
    
    let verb = ["put ", "keep ", "let ", "begin ", "seem ", "help ", "talk ",
                "turn ", "start ", "show ", "start ", "place ", "hear ",
                "work ", "play "
    ];
    let verb3 = ["puts ", "keeps ", "lets ", "begins ", "seems ", "helps ", "talks ",
                 "turns ", "starts ", "shows ", "starts ", "places ", "hears ",
                 "works ", "plays "
    ];
    
    let v1 = ["pongo ", "mantengo ", "dejo ", "comienzo ", "parezco ", "ayudo ", "platico ",
              "volteo ", "empiezo ", "muestro ", "empiezo ", "coloco ", "oigo ",
              "trabajo ", "juego "
    ];
    
    let v2 = ["pones ", "mantienes ", "dejas ", "comienzas ", "pareces ", "ayudas ", "platicas ",
              "volteas ", "empiezas ", "muestras ", "empiezas ", "colocas ", "oyes ",
              "trabajas ", "juegas "
    ];
    
    
    let v3 = ["pone ", "mantiene ", "deja ", "comienza ", "parece ", "ayuda ", "platica ",
              "voltea ", "empieza ", "muestra ", "empieza ", "coloca ", "oye ",
              "trabaja ", "juega "
    ];
    let v4 = ["ponen ", "mantienen ", "dejan ", "comienzan ", "parecen ", "ayudan ", "platican ",
              "voltean ", "empiezan ", "muestran ", "empiezan ", "colocan ", "oyen ",
              "trabajan ", "juegan "
    ];
    
    let v5 = ["ponemos ", "mantenemos ", "dejamos ", "comenzamos ", "parecemos ", "ayudamos ", "platicamos ",
              "volteamos ", "empezamos ", "mostramos ", "empezamos ", "colocamos ", "oímos ",
              "trabajamos ", "jugamos "
    ];
    let adj = ["old ", "great ", "big ", "american ",];
    let adjm = ["viejos ", "grandiosos ", "grandes ", "americanos "];
    let adjf = ["viejas ", "grandiosas ", "grandes ", "americanas "];
    let ne = ["students ", "groups ", "countries ",
              "problems ", "parts ", "hands ", "cases ", "weeks ",
              "companies ", "systems ", "governments "];
    
    let nsp = ["los estudiantes ", "los grupos ", "los países ", "los problemas ", "las partes ", "las manos ", "los casos ",
               "las semanas ", "las compañía ", "los sistemas ", "los gobiernos "
    ];
    
    let ns = ["el estudiante ", "el grupo ", "el país ", "el problema ", "la parte ", "la mano ", "el caso ",
              "la semana ", "la compañia ", "el sistema ", "el gobierno "
    ];
    
    let nes = ["the student ", "the group ", "the country ", "the problem ", "the part ",
               "the hand ", "the case ", "the week ",
               "the company ", "the system ", "the government "
    ];
    let nse = ["student ", "group ", "country ", "problem ", "part ", "hand ", "case ", "week ",
               "company ", "system ", "government "];
    let nss = ["estudiante ", "grupo ", "país ", "problema ", "parte ", "mano ", "caso ", "semana ",
               "compañia ", "sistema ", "gobierno "];
    let nssp = ["estudiantes ", "grupos ", "países ", "problemas ", "partes ", "manos ", "casos ", "semanas ",
                "compañía ", "sistemas ", "gobiernos "];
    let adv = ["why ", "where ", "while "];
    let advsp = ["la razon por la cual ", "donde ", "mientras "];
    let det = ["such ", "most ", "few "];
    let dete = ["tales ", "la mayoría de ", "pocos "];
    let prpe = ["on ", "about ", "against "];
    let prep = ["sobre ", "acerca de ", "en contra de "];
    let se = ["the same ", "few ", "such "];
    let ss = ["los mismos ", "pocos ", "tales "];
    let ssf = ["las mismas ", "pocas ", "tales "];
    let e = ["every ", "most "];
    let em = ["todos ", "la mayoría de "];
    let ef = ["todas ", "la mayoría de "];
    let nspm = ["los estudiantes ", "los grupos ", "los países ", "los problemas ", "los casos ", "los sistemas ", "los gobiernos "];
    let nspf = ["las partes ", "las manos ", "las semanas ", "las compañía "];
    
    var gene: String? = " "
    var gens: String? = " "
    
    var j = 0;
    
    var ob:String?
    var eng:String?
    
    public func vocab150a200(){
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
    
    public func adjn(){
        let ad  =  Int.random(in: 0..<adj.count);
        let nen =  Int.random(in: 0..<ne.count);
        
        var temp = ne[nen];
        
        switch temp{
        case "students ":
            gens = "los estudiantes " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "groups ":
            gens = "los grupos " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "countries ":
            gens = "los países " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "problems ":
            gens = "los problemas " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "parts ":
            gens = "las partes " + adjf[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "hands ":
            gens = "las manos " + adjf[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "cases ":
            gens = "los casos " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "weeks ":
            gens = "las semanas " + adjf[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "companies ":
            gens = "las compañía " + adjf[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "systems ":
            gens = "los sistemas " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
            
        case "governments ":
            gens = "los gobiernos " + adjm[ad];
            gene = "the " + adj[ad] + ne[nen];
            
        default:break;
        }
    }
    
    public func verbsgenadv(){
        let p  =  Int.random(in: 0..<pronombres.count);
        let v =  Int.random(in: 0..<verb.count);
        let ad =  Int.random(in: 0..<adv.count);
        
        var temp = pronombres[p];
        
        switch temp{
            
        case "yo ":
            gens = advsp[ad] + pronombres[p] + v1[v];
            gene = adv[ad] + pronoun[p] + verb[v];
            
        case "tú ":
            gens = advsp[ad] + pronombres[p] + v2[v];
            gene = adv[ad] + pronoun[p] + verb[v];
            
        case "él ":
            gens = advsp[ad] + pronombres[p] + v3[v];
            gene = adv[ad] + pronoun[p] + verb3[v];
            
            
        case "ella ":
            gens = advsp[ad] + pronombres[p] + v3[v];
            gene = adv[ad] + pronoun[p] + verb3[v];
            
        case "eso ":
            gens = advsp[ad] + pronombres[p] + v3[v];
            gene = adv[ad] + pronoun[p] + verb3[v];
            
        case "ellos ":
            gens = advsp[ad] + pronombres[p] + v4[v];
            gene = adv[ad] + pronoun[p] + verb[v];
            
        case "nosotros ":
            gens = advsp[ad] + pronombres[p] + v5[v];
            gene = adv[ad] + pronoun[p] + verb[v];
            
        default:break;
        }
    }
    
    public func detmeth(){
        let prp  =  Int.random(in: 0..<prpe.count);
        let n =  Int.random(in: 0..<ne.count);
        
        gens = prep[prp] + ns[n];
        gene = prpe[prp] + nes[n];
    }
    
    public func meth4(){
        let n  =  Int.random(in: 0..<nss.count);
        let s =  Int.random(in: 0..<ss.count);
        
        var temp = nssp[n];
        
        switch temp{
        case "estudiantes ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "grupos ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "países ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "problemas ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "partes ":
            gens = ssf[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "manos ":
            gens = ssf[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "casos ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "semanas ":
            gens = ssf[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "compañía ":
            gens = ssf[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "sistemas ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        case "gobiernos ":
            gens = ss[s] + nssp[n];
            gene = se[s] + ne[n];
            
        default:break;
        }
    }
    
    public func mostmeth(){
        let i  =  Int.random(in: 0..<nsp.count);
        
        gens = "la mayoría de " + nsp[i];
        gene = "most " + ne[i];
    }
    
    public func eachmeth(){
        let i  =  Int.random(in: 0..<nss.count);
        
        gens = "cada " + nss[i];
        gene = "each " + nse[i];
    }
}

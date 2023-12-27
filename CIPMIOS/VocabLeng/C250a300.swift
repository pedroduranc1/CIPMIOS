//
//  C250a300.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 27/12/23.
//

import Foundation

class C250a300{
    let alleng = [
        "four ","head ","far ","black ","long ","both ","little ","house ","yes ",
        "after ","since ","long ","provide ","service ","around ","friend ",
        "important ","father ","sit ","away ","until ","power ","hour ",
        "game ","often ","yet ","line ","political ","end ","among ","ever ","stand ",
        "bad ","lose ","however ","member ","pay ","law ","meet ","car ","city ",
        "almost ","include ","continue ","set ","later ","community ","much ","name "
    ];
    
    let allsp = [
        "cuatro ", "cabeza ", "lejos ", "negra ", "larga", "ambos ", "pequeña ", "casa ", "sí ",
        "después ", "desde ", "largo ", "proporcionar ", "servicio ", "alrededor ", "amigo ",
        "importante ", "padre ", "sentarse ", "lejos ", "hasta ", "poder ", "hora ",
        "juego ", "a menudo ", "todavía ", "línea ", "político ", "fin ", "entre ", "nunca ", "soportar ",
        "malo ", "perder ", "sin embargo ", "miembro ", "pagar ", "ley ", "conocer ", "coche ", "ciudad ",
        "casi ", "incluir ", "continuar ", "establecer ", "más tarde ", "comunidad ","mucho ","nombre "
    ];
    
    let pronoun = ["I ", "you ", "he ", "she ", "it ", "we ", "they " ];
    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "nosotros ", "ellos " ];
    
    let verb = ["provide ", "sit ", "stand ", "lose ",
                "pay ", "meet ", "continue ", "set ", "learn ",
                "change ", "include "
    ];
    let verb3 = ["provides ", "sits ", "stands ", "loses ",
                 "pays ", "meets ", "continues ", "sets ", "learns ",
                 "changes ", "includes "
    ];
    
    let v1 = ["proveo ", "me siento ", "me paro ", "pierdo ",
              "pago ", "conozco ", "continuo ", "establezco ", "aprendo ",
              "cambio ", "incluyo "
    ];
    
    let v2 = ["provees ", "te sientas ", "te paras ", "pierdes ",
              "pagas ", "conoces ", "continuas ", "estableces ", "aprendes ",
              "cambias ", "incluyes "
    ];
    let v3 = ["provee ", "se sienta ", "se para ", "pierde ",
              "paga ", "conoce ", "continua ", "establece ", "aprende ",
              "cambia ", "incluye "
    ];
    let v4 = ["proveen ", "se sientan ", "se paran ", "pierden ",
              "pagan ", "conocen ", "continuan ", "establecen ", "aprenden ",
              "cambian ", "incluyen "
    ];
    let v5 = ["proveemos ", "nos sentamos ", "nos paramos ", "perdemos ",
              "pagamos ", "conocemos ", "continuamos ", "establecemos ", "aprendemos ",
              "cambiamos ", "incluimos "
    ];
    
    let noun = ["the service ", "the friend ", "the father ", "the power ",
                "the hour ", "the game ", "the line ", "the end ", "the member ", "the law ",
                "the car ", "the city ", "the name ", "the team ", "the minute ", "the idea ",
                "the comunity ", "the president "
    ];
    let sust = ["el servicio ", "el amigo ", "el padre ", "el poder ", "la hora ",
                "el juego ", "la linea ", "el fin ", "el miembro ", "la ley ", "el carro ", "la ciudad ",
                "el nombre ", "el equipo ", "el minuto ", "la idea ", "la comunidad ", "el presidente "
    ];
    
    let prp = ["around ", "away from ", "among " ];
    let prep = ["al rededor de ", "lejos de ", "entre " ];
    
    let adv = ["often ", "almost ", "always " ];
    let adve = ["seguido ", "casi ", "siempre " ];
    
    let nounp = ["services ", "friends ", "powers ", "games" ];
    let nounpm = ["servicios ", "amigos ", "poderes ", "juegos " ];
    
    let adjm = ["los mejores ", "varios ", "cinco ", "importantes " ];
    let adjme = ["the best ", "several ", "five ", "important " ];
    
    let adjsp = ["politico ", "blanco ", "real ", "malo " ];
    let adjen = ["political ", "white ", "real ", "bad " ];
    
    var gene: String? = " "
    var gens: String? = " "
    
    var j = 0;
    
    var ob:String?
    var eng:String?
    
    public func verbsadvgen(){
        let p  =  Int.random(in: 0..<pronombres.count);
        let v =  Int.random(in: 0..<verb.count);
        let ad =  Int.random(in: 0..<adv.count);
        
        var temp = pronombres[p];
        
        switch temp {
            
        case "yo ":
            gens = pronombres[p] + adve[ad] + v1[v];
            gene = pronoun[p] + adv[ad] + verb[v];
            
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
            gens = pronombres[p] + adve[ad] + v1[v];
            gene = pronoun[p] + adv[ad] + verb[v];
            
        case "tú ":
            gens = pronombres[p] + adve[ad] + v2[v];
            gene = pronoun[p] + adv[ad] + verb[v];
            
        case "él ":
            gens = pronombres[p] + adve[ad] + v3[v];
            gene = pronoun[p] + adv[ad] + verb3[v];
            
            
        case "ella ":
            gens = pronombres[p] + adve[ad] + v3[v];
            gene = pronoun[p] + adv[ad] + verb3[v];
            
        case "eso ":
            gens = pronombres[p] + adve[ad] + v3[v];
            gene = pronoun[p] + adv[ad] + verb3[v];
            
        case "ellos ":
            gens = pronombres[p] + adve[ad] + v4[v];
            gene = pronoun[p] + adv[ad] + verb[v];
            
        case "nosotros ":
            gens = pronombres[p] + adve[ad] + v5[v];
            gene = pronoun[p] + adv[ad] + verb[v];
            
        default:break;
        }
    }
    
    public func prepn() {
        let p  =  Int.random(in: 0..<prep.count);
        let s =  Int.random(in: 0..<sust.count);
        gens = prep[p] + sust[s];
        gene = prp[p] + noun[s];
    }
    
    public func adjnm() {
        let a  =  Int.random(in: 0..<adjm.count);
        let p =  Int.random(in: 0..<nounp.count);
        
        gens = adjm[a] + nounpm[p];
        gene = adjme[a] + nounp[p];
    }
    
    public func least() {
        let a =  Int.random(in: 0..<adjsp.count);
        gens = "el menos " + adjsp[a];
        gene = "the least " + adjen[a];
    }
    
    
    
}

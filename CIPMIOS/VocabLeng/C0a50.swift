//
//  C0a50.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 19/12/23.
//

import Foundation

class C0a50{
    
    let alleng = ["the",  "to be", "and", "of", "a", "in ", "to "
                  ,"to have",  "it ", "I", "that ", "that ", "for ", "for " , "you ", "he ",
                  "with ", "on ",
                  "to do ", "to say", "this " , "they ", "at ", "but ", "we ", "his ",
                  "from ","from ","since",   "by ", "she ",
                  "or ", "as ", "as ", "what ", "what ", "to go ", "their ", "can ",
                  "who ", "to get ", "if ",
                  "would", "her ", "all ", "my ", "to make ", "about ", "about ",
                  "to know ", "will ", "up "
    ];
    
    let allsp = [
        "el, la, los o las", "ser o estar", "y ", "de ", "un o una", "en ", "a ",
        "tener o haber ", "eso ", "yo ", "eso ", "que, para conectar", "por ", "para ", "tu", "el ", "con ", "sobre ", "hacer ",
        "decir ", "esto ", "ellos ", "en " , "pero ", "nosotros" , "su de el ", "desde, para un lugar","de ","desde ", "por ", "ella ",
        "o ", "como ", "en lo que ", "que, para preguntar ", "lo que ", "ir " , "su de ellos", "poder ", "quien ", "obtener ", "si",
        "la terminacion ria en los verbos ", "su de ella", "todo ", "mi ", "hacer ", "acerca ", "acerca de ", "saber ", "el modal que hace futuro a un verbo ", "arriba"
    ];
    
    
    let articles = ["the ", "the ", "the ", "the ", "a ", "a ", "some ", "some "];
    let articulos = ["el ", "la ", "los ", "las ", "un ", "una ", "unos ", "unas "];
    
    let pronoun = ["I ", "you ", "he ", "she ", "it ", "they ", "we "];
    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "ellos ", "nosotros "];
    
    let adj = ["this ", "his ", "her ", "their ", "that "];
    let adje = ["este ", "su ", "su ", "su ", "ese "];
    
    
    let prep = ["of ", "in ", "to ", "for ", "with ", "on ", "from ", "about "];
    let prepsp = ["de ", "en ", "a ", "para ", "con ", "sobre ", "desde ", "acerca de "];
    
    //verbos base
    let vib = ["have ", "say ", "go ", "get ", "make ", "know "];
    let vib3 = ["has ", "says ", "goes ", "gets ", "makes ", "knows "];
    let verbos = ["tener ", "decir ", "ir ", "obtener ", "hacer ", "saber "];
    
    //presente
    let vib1 = ["tengo ", "digo ", "voy ", "obtengo ", "hago ", "sé "];
    let vib2 = ["tienes ", "dices ", "vas ", "obtienes ", "haces ", "sabes "];
    let vib3esp = ["tiene ", "dice ", "va ", "obtiene ", "hace ", "sabe "];
    let vib3p = ["tienen ", "dicen ", "van ", "obtienen ", "hacen ", "saben "];
    let vibnos = ["tenemos ", "decimos ", "vamos ", "obtenemos ", "hacemos ", "sabemos "];
    
    // hipotetico
    let verbo1hip = ["tendría ", "diría ", "iría ", "obtendría ", "haría ", "sabría "];
    let verbo2hip = ["tendrías ", "dirías ", "irías ", "obtendrías ", "harías ", "sabrías "];
    let verbo3hip = ["tendría ", "diría ", "iría ", "obtendría ", "haría ", "sabría "];
    let verbos4hip = ["tendrían ", "dirían ", "irían ", "obtendrían ", "harían ", "sabrían "];
    let verbos5hip = ["tendríamos ", "diríamos ", "iríamos ", "obtendríamos ", "haríamos ", "sabríamos "];
    
    //futuro
    let verbo1f = ["tendré ", "diré ", "iré ", "obtendré ", "haré ", "sabré "];
    let verbo2f = ["tendrás ", "dirás ", "irás ", "obtendrás ", "harás ", "sabrás "];
    let verbo3f = ["tendrá ", "dirá ", "irá ", "obtendrá ", "hará ", "sabrá "];
    let verbos4f = ["tendrán ", "dirán ", "irán ", "obtendrán ", "harán ", "sabrán "];
    let verbos5f = ["tendrémos ", "dirémos ", "irémos ", "obtendrémos ", "harémos ", "sabrémos "];
    
    //modales
    let modal = ["would ", "will ", "can ", "can ", "can ", "can ", "can ", "can ", "can "];
    let modales = [" ", " ", "puedo ", "puedes ", "puede ", "puede ", "puede ", "pueden ", "podemos "];
    
    //adverbs
    let adv = ["what ", "as ", "or ", "but "];
    let adver = ["lo que ", "como ", "o ", "pero "];
    
    
    //placeholder nouns
    let sofe = ["people ", "history ", "way ", "information"];
    let sofs = ["gente ", "historia ", "manera ", "información "];
    let pofs = ["mujeres ", "casas ", "maneras ", "cosas "];
    let pofe = ["women ", "houses ", "ways ", "things"];
    
    
    let soms = ["tiempo ", "año ", "niño "];
    let some = ["time ", "year ", "boy "];
    let poms = ["hombres ", "perros ", "objetos ", "libros "];
    let pome = ["men ", "dogs ", "objects ", "books "];
    let noun = ["car ", "money ", "friend ", "object ", "phone ", "time "];
    let sust = ["carro ", "dinero ", "amigo ", "objeto ", "telefono ", "tiempo"];
    
    // los del be
    let be = ["am ", "are ", "is ", "is ", "is ", "are ", "are "];
    let ser = ["soy ", "eres ", "es ", "es ", "son ", "somos "];
    let est = ["estoy ", "estas ", "está ", "está ", "está ", "están ", "estamos "];
    
    var j = 0
    var ob: String?
    var eng: String?
    var gens: String?
    var gene: String?
    
    func vocab0a50() {
        if j == alleng.count {
            j = 0
        }
        ob = allsp[j]
        eng = alleng[j]
        j += 1
    }
    
    func prepartob(){
        let i  =  Int.random(in: 0..<articles.count);
        let ii  =  Int.random(in: 0..<soms.count);
        var iii  =  Int.random(in: 0..<sofs.count);
        var iv  =  Int.random(in: 0..<poms.count);
        var v  =  Int.random(in: 0..<pofs.count);
        var vi  =  Int.random(in: 0..<prep.count);
        
        let temp = articulos[i];
        
        switch temp {
        case "el ":
            ob = prepsp[vi] + articulos[i] + soms[ii];
            eng = prep[vi] + articles[0] + some[ii];
        case "la ":
            ob = prepsp[vi] + articulos[i] + soms[iii];
            eng = prep[vi] + articles[1] + some[iii];
        case "los ":
            ob = prepsp[vi] + articulos[i] + soms[iv];
            eng = prep[vi] + articles[2] + some[iv];
        case "las ":
            ob = prepsp[vi] + articulos[i] + soms[v];
            eng = prep[vi] + articles[3] + some[v];
        case "un ":
            ob = prepsp[vi] + articulos[i] + soms[ii];
            eng = prep[vi] + articles[4] + some[ii];
        case "una ":
            ob = prepsp[vi] + articulos[i] + soms[iii];
            eng = prep[vi] + articles[5] + some[iii];
        case "unos ":
            ob = prepsp[vi] + articulos[i] + soms[iv];
            eng = prep[vi] + articles[6] + some[iv];
        case "unas ":
            ob = prepsp[vi] + articulos[i] + soms[v];
            eng = prep[vi] + articles[7] + some[v];
        default: break;
        }
    }
    
    func pronverb(){
        var i  =  Int.random(in: 0..<pronombres.count);
        var iv  =  Int.random(in: 0..<vib.count);
        var temp1 = pronombres[i];
        let iii = Int.random(in: 0..<2)
        
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + vib1[iv];
                gene = pronoun[0] + vib[iv];
            case 1:
                gens = pronombres[0] + "no " + vib1[iv];
                gene = pronoun[0] + "don't " + vib[iv];
            default: break;
            }
        case  "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + vib1[iv];
                gene = pronoun[1] + vib[iv];
            case 1:
                gens = pronombres[1] + "no " + vib1[iv];
                gene = pronoun[1] + "don't " + vib[iv];
            default: break
            }
        case  "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + vib1[iv];
                gene = pronoun[2] + vib[iv];
            case 1:
                gens = pronombres[2] + "no " + vib1[iv];
                gene = pronoun[2] + "don't " + vib[iv];
            default: break
            }
        case  "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + vib1[iv];
                gene = pronoun[3] + vib[iv];
            case 1:
                gens = pronombres[3] + "no " + vib1[iv];
                gene = pronoun[3] + "don't " + vib[iv];
            default: break
            }
        case  "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + vib1[iv];
                gene = pronoun[4] + vib[iv];
            case 1:
                gens = pronombres[4] + "no " + vib1[iv];
                gene = pronoun[4] + "don't " + vib[iv];
            default: break
            }
        case  "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + vib1[iv];
                gene = pronoun[5] + vib[iv];
            case 1:
                gens = pronombres[5] + "no " + vib1[iv];
                gene = pronoun[5] + "don't " + vib[iv];
            default: break
            }
        case  "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + vib1[iv];
                gene = pronoun[6] + vib[iv];
            case 1:
                gens = pronombres[6] + "no " + vib1[iv];
                gene = pronoun[6] + "don't " + vib[iv];
            default: break
            }
        default: break;
        }
    }
    
    func adjmethod(){
        var adjt  =  Int.random(in: 0..<adj.count);
        var i  =  Int.random(in: 0..<sust.count);
        var tempadj = pronombres[adjt];
        
        switch tempadj {
        case "this ":
            gens = adje[adjt] + sust[i];
            gene = adj[adjt] + noun[i];
        case "his ":
            gens = adje[adjt] + sust[i] + "(de el)";
            gene = adj[adjt] + noun[i];
        case "her ":
            gens = adje[adjt] + sust[i] + "(de ella)";
            gene = adj[adjt] + noun[i];
        case "their ":
            gens = adje[adjt] + sust[i] + "(de ellos)";
            gene = adj[adjt] + noun[i];
        case "that ":
            gens = adje[adjt] + sust[i] + "(de el)";
            gene = adj[adjt] + noun[i];
        default: break;
        }
    }
    
    func advpronverb(){
        var i  =  Int.random(in: 0..<pronombres.count);
        var iv  =  Int.random(in: 0..<vib.count);
        var ii = Int.random(in: 0..<adv.count);
        var temp1 = pronombres[i];
        let iii = Int.random(in: 0..<2);
        
        switch temp1{
        case "yo ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[0] + vib1[iv];
                gene = adv[ii] + pronoun[0] + vib[iv];
                
            case 1:
                gens = adver[ii] + pronombres[0] + "no " + vib1[iv];
                gene = adv[ii] + pronoun[0] + "don't " + vib[iv];
            default: break;
            }
        case "tú ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[1] + vib2[iv];
                gene = adv[ii] + pronoun[1] + vib[iv];
                
            case 1:
                gens = adver[ii] + pronombres[1] + "no " + vib2[iv];
                gene = adv[ii] + pronoun[1] + "don't " + vib[iv];
            default: break;
            }
        case "él ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[2] + vib3esp[iv];
                gene = adv[ii] + pronoun[2] + vib3[iv];
                
            case 1:
                gens = adver[ii] + pronombres[2] + "no " + vib3esp[iv];
                gene = adv[ii] + pronoun[2] + "doesn't " + vib3[iv];
            default: break;
            }
        case "ella ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[3] + vib3esp[iv];
                gene = adv[ii] + pronoun[3] + vib3[iv];
                
            case 1:
                gens = adver[ii] + pronombres[3] + "no " + vib3esp[iv];
                gene = adv[ii] + pronoun[3] + "doesn't " + vib3[iv];
            default: break;
            }
        case "eso ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[4] + vib3esp[iv];
                gene = adv[ii] + pronoun[4] + vib3[iv];
                
            case 1:
                gens = adver[ii] + pronombres[4] + "no " + vib3esp[iv];
                gene = adv[ii] + pronoun[4] + "doesn't " + vib3[iv];
            default: break;
            }
        case "ellos ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[3] + vib3p[iv];
                gene = adv[ii] + pronoun[3] + vib[iv];
                
            case 1:
                gens = adver[ii] + pronombres[3] + "no " + vib3p[iv];
                gene = adv[ii] + pronoun[3] + "don't " + vib[iv];
            default: break;
            }
        case "nosotros ":
            switch iii{
            case 0:
                gens = adver[ii] + pronombres[3] + vibnos[iv];
                gene = adv[ii] + pronoun[3] + vib[iv];
                
            case 1:
                gens = adver[ii] + pronombres[3] + "no " + vibnos[iv];
                gene = adv[ii] + pronoun[3] + "don't " + vib[iv];
            default: break;
            }
        default: break;
        }
    }
    
    func pronverbwill(){
        var i  =  Int.random(in: 0..<pronombres.count);
        var iv  =  Int.random(in: 0..<vib.count);
        var temp1 = pronombres[i];
        let iii = Int.random(in: 0..<2);
        
        switch temp1{
        case "yo ":
            switch iii{
            case 0:
                gens = pronombres[0] + verbo1f[iv];
                gene = pronoun[0] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[0] + "no " + verbo1f[iv];
                gene = pronoun[0] + "won't " + vib[iv];
            default: break;
            }
        case "tú ":
            switch iii{
            case 0:
                gens = pronombres[1] + verbo2f[iv];
                gene = pronoun[1] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[1] + "no " + verbo2f[iv];
                gene = pronoun[1] + "won't " + vib[iv];
            default: break;
            }
        case "él ":
            switch iii{
            case 0:
                gens = pronombres[2] + verbo3f[iv];
                gene = pronoun[2] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[2] + "no " + verbo3f[iv];
                gene = pronoun[2] + "won't " + vib[iv];
            default: break;
            }
        case "ella ":
            switch iii{
            case 0:
                gens = pronombres[3] + verbo3f[iv];
                gene = pronoun[3] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[3] + "no " + verbo3f[iv];
                gene = pronoun[3] + "won't " + vib[iv];
            default: break;
            }
        case "eso ":
            switch iii{
            case 0:
                gens = pronombres[4] + verbo3f[iv];
                gene = pronoun[4] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[4] + "no " + verbo3f[iv];
                gene = pronoun[4] + "won't " + vib[iv];
            default: break;
            }
        case "ellos ":
            switch iii{
            case 0:
                gens = pronombres[5] + verbos4f[iv];
                gene = pronoun[5] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[5] + "no " + verbos4f[iv];
                gene = pronoun[5] + "won't " + vib[iv];
            default: break;
            }
        case "nosotros ":
            switch iii{
            case 0:
                gens = pronombres[6] + verbos5f[iv];
                gene = pronoun[6] + "will " + vib[iv];
                
            case 1:
                gens = pronombres[6] + "no " + verbos5f[iv];
                gene = pronoun[6] + "won't " + vib[iv];
            default: break;
            }
        default: break;
        }
    }
    
    func pronverbwould(){
        var i  =  Int.random(in: 0..<pronombres.count);
        var iv  =  Int.random(in: 0..<vib.count);
        var ii = Int.random(in: 0..<adv.count);
        var temp1 = pronombres[i];
        let iii = Int.random(in: 0..<2);
        
        switch temp1{
        case "yo ":
            switch iii{
            case 0:
                gens = pronombres[0] + verbo1hip[iv];
                gene = pronoun[0] + "would " + vib[iv];
                
            case 1:
                gens = pronombres[0] + "no " + verbo1hip[iv];
                gene = pronoun[0] + "wouldn't " + vib[iv];
            default: break;
            }
        case "tú ":
            switch iii{
            case 0:
                gens = pronombres[1] + verbo2hip[iv];
                gene = pronoun[1] + "would " + vib[iv];
                
            case 1:
                gens = pronombres[1] + "no " + verbo2hip[iv];
                gene = pronoun[1] + "wouldn't " + vib[iv];
            default: break;
            }
        case "él ":
            switch iii{
            case 0:
                gens = pronombres[2] + verbo3hip[iv];
                gene = pronoun[2] + "would " + vib[iv];
                
            case 1:
                gens = pronombres[2] + "no " + verbo3hip[iv];
                gene = pronoun[2] + "wouldn't " + vib[iv];
            default: break;
            }
        case "ella ":
            switch iii{
            case 0:
                gens = pronombres[3] + verbo3hip[iv];
                gene = pronoun[3] + "would " + vib[iv];
                
            case 1:
                gens = pronombres[3] + "no " + verbo3hip[iv];
                gene = pronoun[3] + "wouldn't " + vib[iv];
            default: break;
            }
        case "eso ":
            switch iii{
            case 0:
                gens = pronombres[4] + verbo3hip[iv];
                gene = pronoun[4] + "would " + vib[iv];
                
            case 1:
                gens = pronombres[4] + "no " + verbo3hip[iv];
                gene = pronoun[4] + "wouldn't " + vib[iv];
            default: break;
            }
        case "ellos ":
            switch iii{
            case 0:
                gens = pronombres[5] + verbos4hip[iv];
                gene = pronoun[5] + "would " + vib[iv];
                
            case 1:
                gens = pronombres[5] + "no " + verbos4hip[iv];
                gene = pronoun[5] + "wouldn't " + vib[iv];
            default: break;
            }
        case "nosotros ":
            switch iii{
            case 0:
                gens = pronombres[6] + verbos5hip[iv];
                gene = pronoun[6] + vib[iv];
                
            case 1:
                gens = pronombres[6] + "no " + verbos5hip[iv];
                gene = pronoun[6] + "don't " + vib[iv];
            default: break;
            }
        default: break;
        }
    }
    
    func pronverbcan(){
        var i  =  Int.random(in: 0..<pronombres.count);
        var iv  =  Int.random(in: 0..<vib.count);
        var temp1 = pronombres[i];
        let iii = Int.random(in: 0..<2);
        
        switch temp1{
        case "yo ":
            switch iii{
            case 0:
                gens = pronombres[0] + "puedo " + verbos[iv];
                gene = pronoun[0] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[0] + "no puedo " + verbos[iv];
                gene = pronoun[0] + "can't " + vib[iv];
            default: break;
            }
        case "tú ":
            switch iii{
            case 0:
                gens = pronombres[1] + "puedes " + verbos[iv];
                gene = pronoun[1] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[1] + "no puedes " + verbos[iv];
                gene = pronoun[1] + "can't " + vib[iv];
            default: break;
            }
        case "él ":
            switch iii{
            case 0:
                gens = pronombres[2] + "puede " + verbos[iv];
                gene = pronoun[2] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[2] + "no puede " + verbos[iv];
                gene = pronoun[2] + "can't " + vib[iv];
            default: break;
            }
        case "ella ":
            switch iii{
            case 0:
                gens = pronombres[3] + "puede " + verbos[iv];
                gene = pronoun[3] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[3] + "no puede " + verbos[iv];
                gene = pronoun[3] + "can't " + vib[iv];
            default: break;
            }
        case "eso ":
            switch iii{
            case 0:
                gens = pronombres[4] + "puede " + verbos[iv];
                gene = pronoun[4] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[4] + "no puede " + verbos[iv];
                gene = pronoun[4] + "can't " + vib[iv];
            default: break;
            }
        case "ellos ":
            switch iii{
            case 0:
                gens = pronombres[5] + "pueden " + verbos[iv];
                gene = pronoun[5] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[5] + "no pueden " + verbos[iv];
                gene = pronoun[5] + "can't " + vib[iv];
            default: break;
            }
        case "nosotros ":
            switch iii{
            case 0:
                gens = pronombres[6] + "podemos " + verbos[iv];
                gene = pronoun[6] + "can " + vib[iv];
                
            case 1:
                gens = pronombres[6] + "no podemos " + verbos[iv];
                gene = pronoun[6] + "can't " + vib[iv];
            default: break;
            }
        default: break;
        }
    }
    
    func tobe(){
        var t  =  Int.random(in: 0..<pronombres.count);
        var tempt = pronombres[t];
        
        switch tempt{
        case "yo ":
            gens = "yo soy";
            gene = "I am";
        case "tú ":
            gens = "tú eres";
            gene = "you are";
        case "él ":
            gens = "él es";
            gene = "he is";
        case "ella ":
            gens = "ella es";
            gene = "she is";
        case "eso ":
            gens = "eso es";
            gene = "it is";
        case "ellos ":
            gens = "nosotros somos";
            gene = "we are";
        case "nosotros ":
            gens = "ellos son";
            gene = "they are";
        default: break;
        }
    }
}

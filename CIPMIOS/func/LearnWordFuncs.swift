//
//  LearnWordFuncs.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import Foundation

let subjectsEnglish = ["I ", "You ", "He ", "She ", "We ", "They "]



func ActivarPalabraVocab(_ functionName: String,TxtEng: inout String, TxtSpa: inout String) {
    let gen = CeroToFifty();
    let gen1 = Generator();
    let n = Nobles()
    let nouns = NewNounClass()
    let newVerb = NewVerbClass()
    
    let rv = Int.random(in: 0..<subjectsEnglish.count)
    let pronoun = subjectsEnglish[rv]
    
    let complemento: String
    let complement: String
    
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
        
    case "that":
        gen.adjmethod(adjective: "that ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "for":
        gen.prepartob(pos: 3)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "you":
        gen.pronverb(pronom: "tú ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "he":
        gen.pronverb(pronom: "él ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "with":
        gen.prepartob(pos: 4)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "on":
        gen.prepartob(pos: 5)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "do":
        gen.pronverb(verpos: 4)
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        
        break
        
    case "´s":
        //No esta lista
        break
        
    case "say":
        gen.pronverb(verpos: 1)
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "they":
        gen.pronverb(pronom: "ellos ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "this":
        gen.adjmethod(adjective: "this ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "but":
        gen.advpronverb(advPos: 3)
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "at":
        gen.atmeth(pos: 8)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "we":
        gen.pronverb(pronom: "nosotros ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "his":
        gen.adjmethod(adjective: "his ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "from":
        gen.atmeth(pos: 6)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "that (determiner)":
        gen.adjmethod(adjective: "that ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "by":
        gen.atmeth(pos: 9)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "or":
        //TODO: FALTA POR DESARROLLAR
        
        break
        
    case "she":
        gen.pronverb(pronom: "she ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "as(conjunction)":
        //TODO: FALTA POR HACER
        
        break
        
    case "what(determiner)":
        //TODO: FALTA POR HACER
        
        break
        
    case "go":
        gen.pronverb(verpos: 2)
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "their":
        gen.adjmethod(adjective: "their ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "will":
        gen.pronverbwill()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "who":
        gen.genWho()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "can":
        gen.pronverbcan()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "get":
        gen.pronverb(verpos: 3)
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "if":
        //TODO: FALTA POR HACER
        
        break
        
    case "all":
        //TODO: FALTA POR HACER
        
        break
        
    case "would":
        gen.pronverbwould()
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "her":
        gen.adjmethod(adjective: "her ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "make":
        //TODO: FALTA POR HACER
        
        break
        
    case "about":
        gen.prepartob(pos: 7)
        
        TxtEng = gen.eng
        TxtSpa = gen.ob
        break
        
    case "my":
        gen.adjmethod(adjective: "my ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "as(preposition)":
        //TODO: FALTA POR HACER
        break
        
    case "there":
        newVerb.GenThereBe()
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "one":
        nouns.genPronoun(pronounParm: "one ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "up":
        newVerb.GenPresSimpPrepasAdv(preposition: "up ", preposicion: "hacia arriba")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "time":
        nouns.nounGen(engNoun: "the time ", spNoun: "el tiempo ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "year":
        nouns.nounGen(engNoun: "the year ",spNoun: "el año ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "so":
        nouns.adjAdv(adverbEng: "so ",adverbioEsp: "tan ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "think":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 7)
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "see":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 8)
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "which":
        //TODO: FALTA POR HACER
        break
        
    case "when":
        newVerb.GenPresSimpAdverbs3(adverb: "when ", adverbio: "cuando ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "some":
        nouns.genPronoun(pronounParm: "someone ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "them":
        nouns.genPronoun(pronounParm: "anything ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "people":
        nouns.nounGen(engNoun: "the people ",spNoun: "la gente ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "take":
        newVerb.GenPresSimp(pronounparm: pronoun,verbpos: 9)
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "me":
        nouns.genPronoun(pronounParm: "me ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "out":
        newVerb.GenPresSimpPrepasAdv(preposition: "out ", preposicion: "hacia afuera ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "into":
        nouns.genPreps(prep: "into")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "just":
        newVerb.GenPresSimpAdverbs(adverb: "just ", adverbio: "solo ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "him":
        nouns.genPronoun(pronounParm: "him ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "come":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 10)
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "your":
        gen.adjmethod(adjective: "your ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "now":
        newVerb.GenPresSimpAdverbs2(adverb: "now ", adverbio: "ahora ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "could":
        newVerb.genPresSimpModals(modalEng: "could ", modalSp1: "podría ", modalSp2: "podrías ", modalSp3: "podría ", modalSp4: "podríamos ", modalSp5: "podrían ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "than":
        //TODO: FALTAN POR HACER
        break
        
    case "like":
        nouns.genPreps(prep: "like")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "other":
        nouns.adjectiveGen(adjParamEng: "other ",adjParamSpM: "otro ",adjParamSpF: "otra ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "then":
        newVerb.GenPresSimpAdverbs2(adverb: "then ",adverbio: "entonces ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "how":
        //NO EXISTE METOOD EN ANDROID
        break
        
    case "its":
        gen.adjmethod(adjective: "its ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "two":
        gen.adjmethodP(adjective: "two ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "our":
        gen.adjmethod(adjective: "our ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "more":
        newVerb.GenPresSimpAdverbs2(adverb: "more ", adverbio: "mas ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "these":
        gen.adjmethodP(adjective: "these ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "want":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 11);
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "way":
        nouns.nounGen(engNoun: "the way ", spNoun: "el camino ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "no":
        gen.adjmethod(adjective: "no ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "look":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 12);

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "first":
        gen.adjmethod(adjective: "first ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "also":
        newVerb.GenPresSimpAdverbs2(adverb: "also ", adverbio: "también ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "new":
        nouns.adjectiveGen(adjParamEng: "new ", adjParamSpM: "nuevo ", adjParamSpF: "nueva ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "because":
        newVerb.genConj(conjunction: "because ", conector: "por que ")
        gen1.GenPresSimp2()
        
        complemento = gen1.gens
        complement = gen1.gene
        
        TxtEng = newVerb.gene + " " + complement
        TxtSpa = newVerb.gens + " " + complemento
        
        break
        
    case "day":
        nouns.nounGen(engNoun: "the day ", spNoun: "el día ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "use":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 13);
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "man":
        nouns.nounGen(engNoun: "the man ", spNoun: "el hombre ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "here":
        newVerb.GenPresSimpAdverbs2(adverb: "here ", adverbio: "aquí ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "find":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 14);
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "give":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 15);
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "thing":
        nouns.nounGen(engNoun: "the thing ", spNoun: "la cosa ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "well":
        newVerb.GenPresSimpAdverbs2(adverb: "well ", adverbio: "bien ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "many":
        gen.adjmethodP(adjective: "many ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "only":
        newVerb.GenPresSimpAdverbs(adverb: "only ", adverbio: "solamente ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "those":
        gen.adjmethodP(adjective: "those ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "tell":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 16);

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "very":
        nouns.adjAdv(adverbEng: "very ", adverbioEsp: "muy ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "even":
        newVerb.GenPresSimpAdverbs(adverb: "even ", adverbio: "incluso ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "back":
        newVerb.GenPresSimpPrepasAdv(preposition: "back", preposicion: "hacia atras");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "any":
        gen.adjmethod(adjective: "any ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "good":
        nouns.adjectiveGen(adjParamEng: "good ", adjParamSpM: "buen ", adjParamSpF: "buena ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "us":
        nouns.genPronoun(pronounParm: "us ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "through":
        nouns.genPreps(prep: "through");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "woman":
        nouns.nounGen(engNoun: "the woman ", spNoun: "la mujer ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "life":
        nouns.nounGen(engNoun: "life ", spNoun: "la vida ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "child":
        nouns.nounGen(engNoun: "the child ", spNoun: "el niño ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "down":
        newVerb.GenPresSimpPrepasAdv(preposition: "down ", preposicion: "hacia abajo");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "work":
        nouns.nounGen(engNoun: "the work ", spNoun: "el trabajo ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "after":
        nouns.genPreps(prep: "after");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "call":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 18);

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "may":
        newVerb.GenMay(modalEng: "may ", modalSp: "puede que ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "world":
        nouns.nounGen(engNoun: "the world ", spNoun: "el mundo ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "over":
        nouns.genPreps(prep: "over");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "should":
//        newVerb.GenPresSimpModals("should ", "debería ", "deberías ", "debería ", "deberíamos ", "deberían ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "still":
        newVerb.GenPresSimpAdverbs(adverb: "still ", adverbio: "aún ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "try":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 19);

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "school":
        nouns.nounGen(engNoun: "the school ", spNoun: "la escuela ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "as":
        newVerb.GenPresSimpAdverbs3(adverb: "as ", adverbio: "En la manera en que ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    default:
        print("No matching function found for \(functionName)")
    }
}

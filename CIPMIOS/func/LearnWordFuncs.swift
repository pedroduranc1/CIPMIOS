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
    let newVerb2 = NewVerbClass()
    
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
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "´s":
        //No esta lista
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "she":
        gen.pronverb(pronom: "she ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "as(conjunction)":
        //TODO: FALTA POR HACER
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "what(determiner)":
        //TODO: FALTA POR HACER
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "all":
        //TODO: FALTA POR HACER
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "there":
        newVerb.GenThereBe()
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        TxtEng = gen.gene
        TxtSpa = gen.gens
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
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "way":
        nouns.nounGen(engNoun: "the way ", spNoun: "el camino ")
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "no":
        gen.adjmethod(adjective: "no ")
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "look":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 12);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "first":
        gen.adjmethod(adjective: "first ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "also":
        newVerb.GenPresSimpAdverbs2(adverb: "also ", adverbio: "también ")
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "new":
        nouns.adjectiveGen(adjParamEng: "new ", adjParamSpM: "nuevo ", adjParamSpF: "nueva ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
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
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "use":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 13);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "man":
        nouns.nounGen(engNoun: "the man ", spNoun: "el hombre ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "here":
        newVerb.GenPresSimpAdverbs2(adverb: "here ", adverbio: "aquí ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "find":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 14);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "give":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 15);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "thing":
        nouns.nounGen(engNoun: "the thing ", spNoun: "la cosa ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "well":
        newVerb.GenPresSimpAdverbs2(adverb: "well ", adverbio: "bien ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "many":
        gen.adjmethodP(adjective: "many ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "only":
        newVerb.GenPresSimpAdverbs(adverb: "only ", adverbio: "solamente ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "those":
        gen.adjmethodP(adjective: "those ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "tell":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 16);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "very":
        nouns.adjAdv(adverbEng: "very ", adverbioEsp: "muy ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "even":
        newVerb.GenPresSimpAdverbs(adverb: "even ", adverbio: "incluso ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "back":
        newVerb.GenPresSimpPrepasAdv(preposition: "back", preposicion: "hacia atras");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "any":
        gen.adjmethod(adjective: "any ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "good":
        nouns.adjectiveGen(adjParamEng: "good ", adjParamSpM: "buen ", adjParamSpF: "buena ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "us":
        nouns.genPronoun(pronounParm: "us ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "through":
        nouns.genPreps(prep: "through");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "woman":
        nouns.nounGen(engNoun: "the woman ", spNoun: "la mujer ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "life":
        nouns.nounGen(engNoun: "life ", spNoun: "la vida ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "child":
        nouns.nounGen(engNoun: "the child ", spNoun: "el niño ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "down":
        newVerb.GenPresSimpPrepasAdv(preposition: "down ", preposicion: "hacia abajo");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "work":
        nouns.nounGen(engNoun: "the work ", spNoun: "el trabajo ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "after":
        nouns.genPreps(prep: "after");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "call":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 18);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "may":
        newVerb.GenMay(modalEng: "may ", modalSp: "puede que ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "world":
        nouns.nounGen(engNoun: "the world ", spNoun: "el mundo ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "over":
        nouns.genPreps(prep: "over");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "should":
        //        newVerb.GenPresSimpModals("should ", "debería ", "deberías ", "debería ", "deberíamos ", "deberían ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "still":
        newVerb.GenPresSimpAdverbs(adverb: "still ", adverbio: "aún ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "try":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 19);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "school":
        nouns.nounGen(engNoun: "the school ", spNoun: "la escuela ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "as":
        newVerb.GenPresSimpAdverbs3(adverb: "as ", adverbio: "En la manera en que ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "last":
        gen.adjmethod(adjective: "last ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "ask":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 20);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "too":
        newVerb.GenPresSimpAdverbs2(adverb: "too ", adverbio: "tambien ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "need":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 21);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "three":
        gen.adjmethodP(adjective: "three ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "feel":                                                              newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 22);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "become":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 23);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "state":
        nouns.nounGen(engNoun: "the state ", spNoun: "el estado ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "never":
        newVerb.GenPresSimpAdverbs(adverb: "never ", adverbio: "nunca ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "between":
        nouns.genPreps(prep: "between");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "high":
        nouns.adjectiveGen(adjParamEng: "high ", adjParamSpM: "alto ", adjParamSpF: "alta ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "something":
        nouns.genPronoun(pronounParm: "something ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "really":
        newVerb.GenPresSimpAdverbs(adverb: "really ", adverbio: "realmente ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "most":
        nouns.adjAdv2(adverbEng: "the most ", adverbioEsp: "el mas ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "another":
        gen.adjmethod(adjective: "another ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "much":
        newVerb.GenPresSimpAdverbs2(adverb: "much ",adverbio: "mucho ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "own":
        gen.adjmethod(adjective: "own ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "family":
        nouns.nounGen(engNoun: "the family ", spNoun: "la familia ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "house":
        nouns.nounGen(engNoun: "the house ", spNoun: "la casa ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "leave":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 24);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "put":
        //TODO: POR GENERAR
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "old":
        nouns.adjectiveGen(adjParamEng: "old ", adjParamSpM: "viejo ", adjParamSpF: "vieja ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "while":
        //TODO: FALTA POR HACER
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "mean":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 26);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "let":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 27);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "why":
        newVerb.GenPresSimpAdverbs3(adverb: "why ", adverbio: "la razón por la cual ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "president":
        nouns.nounGen(engNoun: "the president ", spNoun: "el presidente ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "keep":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 28);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "same":
        nouns.adjectiveGen(adjParamEng: "same ", adjParamSpM: "mismo ", adjParamSpF: "misma ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "great":
        nouns.adjectiveGen(adjParamEng: "great ", adjParamSpM: "grandioso ", adjParamSpF: "grandiosa ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "begin":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 29);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "big":
        nouns.adjectiveGen(adjParamEng: "big ", adjParamSpM: "gran ", adjParamSpF: "gran ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "seem":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 30);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "group":
        nouns.nounGen(engNoun: "the group ", spNoun: "el grupo ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "country":
        nouns.nounGen(engNoun: "the country ", spNoun: "el país ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "talk":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 31);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "problem":
        nouns.nounGen(engNoun: "the problem ", spNoun: "el problema ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "where":
        newVerb.genConj(conjunction: "where ", conector: "donde ");
        newVerb2.GenPresSimp()
        
        complemento = newVerb2.gens
        complement = newVerb2.gene
        
        TxtEng = newVerb.gene + " " + complement
        TxtSpa = newVerb.gens + " " + complemento
        break
        
    case "turn":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 32);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "student":
        nouns.nounGen(engNoun: "the student ", spNoun: "el estudiante ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "every":
        gen.adjmethod(adjective: "every ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "hand":
        nouns.nounGen(engNoun: "the hand ", spNoun: "la mano ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "help":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 33);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "against":
        nouns.genPreps(prep: "against");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "start":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 34);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "american":
        nouns.adjectiveGen2(adjParamEng: "american ", adjParamSpM: "americano ", adjParamSpF: "americana ");
        
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "part":
        nouns.nounGen(engNoun: "the part ", spNoun: "la parte ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "show":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 35);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "might":
        newVerb.GenPresSimpSubjunctive(modalEng: "might ", modalSp: "quiza ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "such":
        gen.adjmethod(adjective: "such ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "place":                                                              
        nouns.nounGen(engNoun: "the place ", spNoun: "el lugar ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "again":                                                              
        newVerb.GenPresSimpAdverbs2(adverb: "again ", adverbio: "otra vez ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "city":
        nouns.nounGen(engNoun: "the city ", spNoun: "la ciudad ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "case":
        nouns.nounGen(engNoun: "the case ", spNoun: "el caso ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "few":                                                              
        gen.adjmethodP(adjective: "most ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "system":                                                              
        nouns.nounGen(engNoun: "the system ", spNoun: "el sistema ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "week":
        nouns.nounGen(engNoun: "the week ", spNoun: "la semana ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "company":                                                              
        newVerb.GenPresSimpAdverbs3(adverb: "where ", adverbio: "En donde ");
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "each":                                                              
        gen.adjmethod(adjective: "each ");
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "percent":                                                              
        nouns.nounGen(engNoun: "the percent ", spNoun: "el porcentaje ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "hear":                                                              
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 36);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "during":                                                              
        nouns.genPreps(prep: "during");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "question":                                                              
        nouns.nounGen(engNoun: "the question ", spNoun: "la pregunta ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "right":
        nouns.nounGen(engNoun: "the right ", spNoun: "el derecho ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "program":
        nouns.nounGen(engNoun: "the program ", spNoun: "el programa ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "run":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 37);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "number":
        nouns.nounGen(engNoun: "the number ", spNoun: "el número ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "small":
        nouns.adjectiveGen(adjParamEng: "small ", adjParamSpM: "pequeño ", adjParamSpF: "pequeña ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "government":
        nouns.nounGen(engNoun: "the government ", spNoun: "el gobierno ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "play":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 38);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "off":
        newVerb.GenOff();

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "move":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 39);
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "always":
        newVerb.GenPresSimpAdverbs(adverb: "always ", adverbio: "siempre ");

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "night":
        nouns.nounGen(engNoun: "the night ", spNoun: "la noche ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "believe":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 41);

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "today":
        newVerb.GenPresSimpAdverbs2(adverb: "today ", adverbio: "hoy ");

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "hold":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 42);

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "point":
        nouns.nounGen(engNoun: "the point ", spNoun: "el punto ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "live":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 43);

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "happen":
        newVerb.genHappen();
        
        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "bring":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 44);

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "next":
        gen.adjmethod(adjective: "next ");

        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
        
    case "without":
        nouns.genPreps(prep: "without");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "before":
        nouns.genPreps(prep: "before");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "large":
        nouns.adjectiveGen2(adjParamEng: "large ", adjParamSpM: "grande ", adjParamSpF: "gran ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "must":
        newVerb.genPresSimpModals(modalEng: "must ", modalSp1: "debo ", modalSp2: "debes ", modalSp3: "debe ", modalSp4: "debemos ", modalSp5: "deben ");

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "war":
        nouns.nounGen(engNoun: "the war ", spNoun: "la guerra ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "home":
        nouns.nounGen(engNoun: "the home ", spNoun: "el hogar ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "under":
        nouns.genPreps(prep: "under");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "room":
        nouns.nounGen(engNoun: "the room ", spNoun: "el cuarto ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "fact":
        nouns.nounGen(engNoun: "the fact ", spNoun: "el hecho ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "area":
        nouns.nounGen(engNoun: "the area ", spNoun: "la zona ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "national":
        nouns.adjectiveGen2(adjParamEng: "national ", adjParamSpM: "nacional ", adjParamSpF: "nacional ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "write":
        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 45);

        TxtEng = newVerb.gene
        TxtSpa = newVerb.gens
        break
        
    case "money":
        nouns.nounGen(engNoun: "the money ", spNoun: "el dinero ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
        
    case "story":
        nouns.nounGen(engNoun: "the story ", spNoun: "la historia ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "water":
        nouns.nounGen(engNoun: "the water ", spNoun: "el agua ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "mother":
        nouns.nounGen(engNoun: "the mother ", spNoun: "la madre ");
        
        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "different":
        nouns.adjectiveGen2(adjParamEng: "different ", adjParamSpM: "diferente ", adjParamSpF: "diferente ");

        TxtEng = nouns.gene
        TxtSpa = nouns.gens
        break
        
    case "":
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    default:
        print("No matching function found for \(functionName)")
    }
}

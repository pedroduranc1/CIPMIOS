//
//  LearnToConectFuncs.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 28/8/24.
//

import Foundation

func ActivarPalabraToConect(_ functionName: String,TxtEng: inout String, TxtSpa: inout String) {
    let gen = CeroToFifty();
    let gen1 = Generator();
    let n = Nobles()
    let nouns = NewNounClass()
    let newVerb = NewVerbClass()
    let newVerb2 = NewVerbClass()
    let negator = AuxModalNegator();
    
    let rv = Int.random(in: 0..<subjectsEnglish.count)
    let pronoun = subjectsEnglish[rv]
    let r = Int.random(in: 0..<2)
    
    var complemento: String = ""
    var complement: String = ""
    
    var oracionsp: String = "";
    var oracioneng: String = "";
    
    switch functionName {
    case "the":
        newVerb.genConj(conjunction: "and", conector: "y");
        
        switch (r) {
            
        case 0:
            newVerb2.GenPresSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            break;
            
        case 1:
            gen1.GenPresSimp2();
            complemento = gen1.gens;
            complement = gen1.gene;
            break;
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        
        TxtEng = newVerb.gene + " " + complement
        TxtSpa = newVerb.gens + " " + complemento
        break
    case "be":
        n.genRelativeClauses1New()
        
        TxtEng = n.gene
        TxtSpa = n.gens
        break
    case "and":
        newVerb.genConj(conjunction: "but", conector: "pero");
        switch (r) {
        case 0:
            newVerb2.GenPresSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            break;
            
        case 1:
            gen1.GenPresSimp2();
            complemento = gen1.gens;
            complement = gen1.gene;
            break;
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        
        TxtEng = newVerb.gene + " " + complement
        TxtSpa = newVerb.gens + " " + complemento
    
        break
    case "of":
        newVerb.genConj(conjunction: "or", conector: "o");
        
        switch (r) {
        case 0:
            newVerb2.GenPresSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            break;
            
        case 1:
            gen1.GenPresSimp2();
            complemento = gen1.gens;
            complement = gen1.gene;
            break;
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        
        TxtEng = gen.gene + " " + complement
        TxtSpa = gen.gens + " " + complemento
        break
    case "a":
        let pos1 = Int.random(in: 0..<6)
        n.genPresSimpAs(subject: pos1);
        switch (r) {
        case 0:
            newVerb2.GenPresSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            break;
            
        case 1:
            gen1.GenPresSimp2();
            complemento = gen1.gens;
            complement = gen1.gene;
            break;
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        TxtEng = gen.eng + " " + complement
        TxtSpa = gen.ob + " " + complemento
        break
    case "in":
        newVerb.genConjFuture(conjunction: "if ", conector: "si ");
        newVerb2.GenPresSimp();
        oracionsp = newVerb.gens;
        oracioneng = newVerb.gene;
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
//    case "to(infinitive)":
//        //TODO: FALTA ESA FUNCION
//        //gen1.GenInfinitives(pos: 0)
//        
//        TxtEng = gen.eng
//        TxtSpa = gen.ob
//        break
//    case "have":
//        //SE TIENE QUE ACTUALIZAR LA FUNCION
//        //n.genpress()
//        
//        TxtEng = gen.eng
//        TxtSpa = gen.ob
//        break
    case "to":
        newVerb.genConj(conjunction: "while ", conector: "mientras que ");
        newVerb2.GenPresSimp();
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        oracionsp = newVerb.gens;
        oracioneng = newVerb.gene;
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
        
    case "it":
        newVerb.genConjFuture(conjunction: "where ", conector: "donde ");
        newVerb2.GenPresSimpSubjunctive();
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        oracionsp = newVerb.gens;
        oracioneng = newVerb.gene;
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
        
    case "I":
        switch (r) {
        case 0:
            newVerb.GenPastSimp();
            newVerb2.GenPresSimpAdverbs3(adverb: "so ", adverbio: "asi que ");
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb.GenPresSimp();
            newVerb2.GenPresSimpAdverbs3(adverb: "so ", adverbio: "asi que ");
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        break
        
    case "that":
        switch (r) {
        case 0:
            newVerb.GenPastSimp();
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            newVerb2.GenPastSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb.GenPastSimp();
            oracionsp = negator.negateSentenceSpanish(sentence: newVerb.gens);
            
            oracioneng = negator.negatePastSimple(sentence: newVerb.gene2);
            newVerb2.GenPastSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            
            break;
            
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        break
        
    case "for":
        switch (r) {
        case 0:
            newVerb.genConjFuture(conjunction: "after ", conector: "después de que ");
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            newVerb2.GenPresSimpSubjunctive();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            
            break;
            
        case 1:
            newVerb.GenPastSimp();
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            newVerb2.GenPastSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
            
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        break
        
    case "you":
        switch (r) {
        case 0:
            newVerb.genPerfectTenses(eng1: "have ", eng2: "has ", sp1: "he ", sp2: "has ", sp3: "ha ", sp4: "hemos ", sp5: "han ");
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            newVerb2.genContTenses(eng1: "was ", eng2: "were ", eng3: "was ", sp1: "estaba ", sp2: "estabas ", sp3: "estaba ", sp4: "estabamos ", sp5: "estaban ");
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb.genPerfectTenses(eng1: "had ", eng2: "had ", sp1: "había ", sp2: "habías ", sp3: "había ", sp4: "habíamos ", sp5: "habían ");
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            
            newVerb2.genContTenses(eng1: "was ", eng2: "were ", eng3: "was ", sp1: "estaba ", sp2: "estabas ", sp3: "estaba ", sp4: "estabamos ", sp5: "estaban ");
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
            
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        break
        
    case "he":
        switch (r) {
        case 0:
            newVerb2.genContTenses(eng1: "was ", eng2: "were ", eng3: "was ", sp1: "estaba ", sp2: "estabas ", sp3: "estaba ", sp4: "estabamos ", sp5: "estaban ");
            oracionsp = newVerb2.gens;
            oracioneng = newVerb2.gene;
            newVerb.GenPastSimp();
            complemento = newVerb.gens;
            complement = newVerb.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb2.genContTenses(eng1: "was ", eng2: "were ", eng3: "was ", sp1: "estaba ", sp2: "estabas ", sp3: "estaba ", sp4: "estabamos ", sp5: "estaban ");
            oracionsp = newVerb2.gens;
            oracioneng = newVerb2.gene;
            newVerb.GenPvppPast();
            complemento = newVerb.gens;
            complement = newVerb.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
            
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        break
        
    case "with":
        newVerb.genConjFuture(conjunction: "whether", conector: "ya sea que");
        newVerb2.GenPresSimpSubjunctive();
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
        
    case "on":
        switch (r) {
        case 0:
            newVerb.GenPastSimp();
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            newVerb2.GenPastSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb.GenPastSimp();
            oracionsp = negator.negateSentenceSpanish(sentence: newVerb.gens);
            oracioneng = negator.negatePastSimple(sentence: newVerb.gene2);
            newVerb2.GenPastSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            
            break;
        default:
            complemento = "no object activated";
            complement = "no object activated";
            break;
        }
        break
        
    case "do":
        switch (r) {
        case 0:
            newVerb.genConj(conjunction: "even if ", conector: "incluso si ");
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            newVerb2.GenPresSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb.genConjFuture(conjunction: "even if ", conector: "incluso si ");
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            newVerb2.GenPresSimp();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        default:
            complemento = "no object activated";
            complement = "no object activated";
        }
        
        break
        
    case "´s":
        newVerb.genConjFuture(conjunction: "once ", conector: "una vez que ");
        oracionsp = newVerb.gens;
        oracioneng = newVerb.gene;
        newVerb2.GenPresSimpSubjunctive();
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
        
    case "say":
        newVerb.genConjFuture2(conjunction: "unless ", conector: "a menos que ");
        oracionsp = negator.negateSentenceSpanish(sentence: newVerb.gens);
        oracioneng = negator.negateFirstAuxOrModal(input: newVerb.gene);
        newVerb2.GenPresSimpSubjunctive();
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
        
    case "they":
        newVerb.genConjFuture(conjunction: "now that ", conector: " ahora que ");
        oracionsp = negator.negateSentenceSpanish(sentence: newVerb.gens);
        oracioneng = negator.negateFirstAuxOrModalContracted(input: newVerb.gene);
        newVerb2.GenPastSimp();
        complemento = newVerb2.gens;
        complement = newVerb2.gene;
        
        TxtEng = oracioneng + " " + complement
        TxtSpa = oracionsp + " " + complemento
        break
        
    case "this":
        switch (r) {
        case 0:
            newVerb.genConjFuture(conjunction: "as long as ", conector: "siempre y cuando ");
            oracionsp = newVerb.gens;
            oracioneng = newVerb.gene;
            newVerb2.GenPresSimpSubjunctive();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
            
        case 1:
            newVerb.genConjFuture(conjunction: "as long as ", conector: "siempre y cuando ");
            oracionsp = negator.negateSentenceSpanish(sentence: newVerb.gens);
            oracioneng = negator.negateFirstAuxOrModal(input: newVerb.gene);
            newVerb2.GenPresSimpSubjunctive();
            complemento = newVerb2.gens;
            complement = newVerb2.gene;
            
            TxtEng = oracioneng + " " + complement
            TxtSpa = oracionsp + " " + complemento
            break;
        default:
            complemento = "";
            complement = "";
        }
        break
        
//    case "but":
//        gen.advpronverb(advPos: 3)
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
        
//    case "at":
//        gen.atmeth(pos: 8)
//        
//        TxtEng = gen.eng
//        TxtSpa = gen.ob
//        break
//        
//    case "we":
//        gen.pronverb(pronom: "nosotros ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "his":
//        gen.adjmethod(adjective: "his ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "from":
//        gen.atmeth(pos: 6)
//        
//        TxtEng = gen.eng
//        TxtSpa = gen.ob
//        break
//        
//    case "that (determiner)":
//        gen.adjmethod(adjective: "that ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "by":
//        gen.atmeth(pos: 9)
//        
//        TxtEng = gen.eng
//        TxtSpa = gen.ob
//        break
//        
//    case "or":
//        newVerb.genConj(conjunction: "or", conector: "o");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "she":
//        gen.pronverb(pronom: "she ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
    case "as(conjunction)":
        var pos1 = Int.random(in: 0..<6)
        n.genPresSimpAs(subject: pos1)

        switch r {
            case 0:
                newVerb2.GenPresSimp()
                complemento = newVerb2.gens
                complement = newVerb2.gene

            case 1:
                gen1.GenPresSimp2()
                complemento = gen1.gens
                complement = gen1.gene

            default:
                complemento = "no object activated"
                complement = "no object activated"
        }
        
        TxtEng = n.gene + " " + gen.gene
        TxtSpa = n.gens + " " + gen.gens
        break
        
//    case "what(determiner)":
//        var pos1 = Int.random(in: 0..<6)
//        n.genPresSimpWhat(subject: pos1)
//        
//        TxtEng = n.gene
//        TxtSpa = n.gens
//        break
//        
//    case "go":
//        gen.pronverb(verpos: 2)
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "their":
//        gen.adjmethod(adjective: "their ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "will":
//        gen.pronverbwill()
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "who":
//        gen.genWho()
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "can":
//        gen.pronverbcan()
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "get":
//        gen.pronverb(verpos: 3)
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "if":
//        //TODO: FALTA POR HACER, FUNCION
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "all":
//        //TODO: FALTA POR HACER FUNCION
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "would":
//        gen.pronverbwould()
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "her":
//        gen.adjmethod(adjective: "her ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "make":
//        //TODO: FALTA POR HACER FUNCION
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "about":
//        gen.prepartob(pos: 7)
//        
//        TxtEng = gen.eng
//        TxtSpa = gen.ob
//        break
//        
//    case "my":
//        gen.adjmethod(adjective: "my ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "as(preposition)":
//        //TODO: FALTA POR HACER FUNCION
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "there":
//        newVerb.GenThereBe()
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "one":
//        nouns.genPronoun(pronounParm: "one ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "up":
//        newVerb.GenPresSimpPrepasAdv(preposition: "up ", preposicion: "hacia arriba")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "time":
//        nouns.nounGen(engNoun: "the time ", spNoun: "el tiempo ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "year":
//        nouns.nounGen(engNoun: "the year ",spNoun: "el año ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "so":
//        nouns.adjAdv(adverbEng: "so ",adverbioEsp: "tan ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "think":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 7)
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "see":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 8)
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "which":
//        var pos1 = Int.random(in: 0..<6)
//        n.genPresSimpWhich(subject: pos1)
//        
//        TxtEng = n.gene
//        TxtSpa = n.gens
//        break
//        
//    case "when":
//        newVerb.GenPresSimpAdverbs3(adverb: "when ", adverbio: "cuando ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "some":
//        nouns.genPronoun(pronounParm: "someone ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "them":
//        nouns.genPronoun(pronounParm: "anything ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "people":
//        nouns.nounGen(engNoun: "the people ",spNoun: "la gente ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "take":
//        newVerb.GenPresSimp(pronounparm: pronoun,verbpos: 9)
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "me":
//        nouns.genPronoun(pronounParm: "me ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "out":
//        newVerb.GenPresSimpPrepasAdv(preposition: "out ", preposicion: "hacia afuera ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "into":
//        nouns.genPreps(prep: "into")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "just":
//        newVerb.GenPresSimpAdverbs(adverb: "just ", adverbio: "solo ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "him":
//        nouns.genPronoun(pronounParm: "him ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "come":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 10)
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "your":
//        gen.adjmethod(adjective: "your ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "now":
//        newVerb.GenPresSimpAdverbs2(adverb: "now ", adverbio: "ahora ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "could":
//        newVerb.genPresSimpModals(modalEng: "could ", modalSp1: "podría ", modalSp2: "podrías ", modalSp3: "podría ", modalSp4: "podríamos ", modalSp5: "podrían ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "than":
//        //TODO: FALTAN POR HACER FUNCION
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "like":
//        nouns.genPreps(prep: "like")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "other":
//        nouns.adjectiveGen(adjParamEng: "other ",adjParamSpM: "otro ",adjParamSpF: "otra ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "then":
//        newVerb.GenPresSimpAdverbs2(adverb: "then ",adverbio: "entonces ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "how":
//        //NO EXISTE METOOD EN ANDROID
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "its":
//        gen.adjmethod(adjective: "its ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "two":
//        gen.adjmethodP(adjective: "two ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "our":
//        gen.adjmethod(adjective: "our ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "more":
//        newVerb.GenPresSimpAdverbs2(adverb: "more ", adverbio: "mas ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "these":
//        gen.adjmethodP(adjective: "these ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "want":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 11);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "way":
//        nouns.nounGen(engNoun: "the way ", spNoun: "el camino ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "no":
//        gen.adjmethod(adjective: "no ")
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "look":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 12);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "first":
//        gen.adjmethod(adjective: "first ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "also":
//        newVerb.GenPresSimpAdverbs2(adverb: "also ", adverbio: "también ")
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "new":
//        nouns.adjectiveGen(adjParamEng: "new ", adjParamSpM: "nuevo ", adjParamSpF: "nueva ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "because":
//        newVerb.genConj(conjunction: "because ", conector: "por que ")
//        gen1.GenPresSimp2()
//        
//        complemento = gen1.gens
//        complement = gen1.gene
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//        
//    case "day":
//        nouns.nounGen(engNoun: "the day ", spNoun: "el día ")
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "use":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 13);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "man":
//        nouns.nounGen(engNoun: "the man ", spNoun: "el hombre ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "here":
//        newVerb.GenPresSimpAdverbs2(adverb: "here ", adverbio: "aquí ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "find":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 14);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "give":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 15);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "thing":
//        nouns.nounGen(engNoun: "the thing ", spNoun: "la cosa ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "well":
//        newVerb.GenPresSimpAdverbs2(adverb: "well ", adverbio: "bien ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "many":
//        gen.adjmethodP(adjective: "many ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "only":
//        newVerb.GenPresSimpAdverbs(adverb: "only ", adverbio: "solamente ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "those":
//        gen.adjmethodP(adjective: "those ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "tell":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 16);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "very":
//        nouns.adjAdv(adverbEng: "very ", adverbioEsp: "muy ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "even":
//        newVerb.GenPresSimpAdverbs(adverb: "even ", adverbio: "incluso ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "back":
//        newVerb.GenPresSimpPrepasAdv(preposition: "back", preposicion: "hacia atras");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "any":
//        gen.adjmethod(adjective: "any ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "good":
//        nouns.adjectiveGen(adjParamEng: "good ", adjParamSpM: "buen ", adjParamSpF: "buena ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "us":
//        nouns.genPronoun(pronounParm: "us ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "through":
//        nouns.genPreps(prep: "through");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "woman":
//        nouns.nounGen(engNoun: "the woman ", spNoun: "la mujer ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "life":
//        nouns.nounGen(engNoun: "life ", spNoun: "la vida ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "child":
//        nouns.nounGen(engNoun: "the child ", spNoun: "el niño ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "down":
//        newVerb.GenPresSimpPrepasAdv(preposition: "down ", preposicion: "hacia abajo");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "work":
//        nouns.nounGen(engNoun: "the work ", spNoun: "el trabajo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "after":
//        nouns.genPreps(prep: "after");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "call":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 18);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "may":
//        newVerb.GenMay(modalEng: "may ", modalSp: "puede que ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "world":
//        nouns.nounGen(engNoun: "the world ", spNoun: "el mundo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "over":
//        nouns.genPreps(prep: "over");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "should":
//        //        newVerb.GenPresSimpModals("should ", "debería ", "deberías ", "debería ", "deberíamos ", "deberían ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "still":
//        newVerb.GenPresSimpAdverbs(adverb: "still ", adverbio: "aún ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "try":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 19);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "school":
//        nouns.nounGen(engNoun: "the school ", spNoun: "la escuela ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "as":
//        newVerb.GenPresSimpAdverbs3(adverb: "as ", adverbio: "En la manera en que ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "last":
//        gen.adjmethod(adjective: "last ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "ask":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 20);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "too":
//        newVerb.GenPresSimpAdverbs2(adverb: "too ", adverbio: "tambien ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "need":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 21);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "three":
//        gen.adjmethodP(adjective: "three ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "feel":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 22);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "become":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 23);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "state":
//        nouns.nounGen(engNoun: "the state ", spNoun: "el estado ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "never":
//        newVerb.GenPresSimpAdverbs(adverb: "never ", adverbio: "nunca ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "between":
//        nouns.genPreps(prep: "between");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "high":
//        nouns.adjectiveGen(adjParamEng: "high ", adjParamSpM: "alto ", adjParamSpF: "alta ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "something":
//        nouns.genPronoun(pronounParm: "something ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "really":
//        newVerb.GenPresSimpAdverbs(adverb: "really ", adverbio: "realmente ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "most":
//        nouns.adjAdv2(adverbEng: "the most ", adverbioEsp: "el mas ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "another":
//        gen.adjmethod(adjective: "another ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "much":
//        newVerb.GenPresSimpAdverbs2(adverb: "much ",adverbio: "mucho ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "own":
//        gen.adjmethod(adjective: "own ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "family":
//        nouns.nounGen(engNoun: "the family ", spNoun: "la familia ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "house":
//        nouns.nounGen(engNoun: "the house ", spNoun: "la casa ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "leave":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 24);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "put":
//        let intrans = Intrans()
//        let index = Int.random(in: 0..<intrans.at.count)
//        let atArraysp = intrans.aten[index]
//        let atArrayeng = intrans.at[index]
//        newVerb.GenPresSimp(pronounparm: "he", verbpos: 25)
//        
//        TxtEng = newVerb.gene + " " + atArrayeng
//        TxtSpa = newVerb.gens + " " + atArraysp
//        break
//        
//    case "old":
//        nouns.adjectiveGen(adjParamEng: "old ", adjParamSpM: "viejo ", adjParamSpF: "vieja ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "while":
//        newVerb.genConj(conjunction: "while ", conector: "mientras que ")
//        
//        
//        
//
//        switch r {
//            case 0:
//                newVerb2.GenPresSimp()
//                complemento = newVerb2.gens
//                complement = newVerb2.gene
//
//            case 1:
//                gen1.GenPresSimp2()
//                complemento = gen1.gens
//                complement = gen1.gene
//
//            default:
//                complemento = "no object activated"
//                complement = "no object activated"
//        }
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//        
//    case "mean":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 26);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "let":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 27);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "why":
//        newVerb.GenPresSimpAdverbs3(adverb: "why ", adverbio: "la razón por la cual ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "president":
//        nouns.nounGen(engNoun: "the president ", spNoun: "el presidente ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "keep":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 28);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "same":
//        nouns.adjectiveGen(adjParamEng: "same ", adjParamSpM: "mismo ", adjParamSpF: "misma ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "great":
//        nouns.adjectiveGen(adjParamEng: "great ", adjParamSpM: "grandioso ", adjParamSpF: "grandiosa ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "begin":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 29);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "big":
//        nouns.adjectiveGen(adjParamEng: "big ", adjParamSpM: "gran ", adjParamSpF: "gran ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "seem":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 30);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "group":
//        nouns.nounGen(engNoun: "the group ", spNoun: "el grupo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "country":
//        nouns.nounGen(engNoun: "the country ", spNoun: "el país ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "talk":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 31);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "problem":
//        nouns.nounGen(engNoun: "the problem ", spNoun: "el problema ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "where":
//        newVerb.genConj(conjunction: "where ", conector: "donde ");
//        newVerb2.GenPresSimp()
//        
//        complemento = newVerb2.gens
//        complement = newVerb2.gene
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//        
//    case "turn":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 32);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "student":
//        nouns.nounGen(engNoun: "the student ", spNoun: "el estudiante ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "every":
//        gen.adjmethod(adjective: "every ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "hand":
//        nouns.nounGen(engNoun: "the hand ", spNoun: "la mano ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "help":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 33);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "against":
//        nouns.genPreps(prep: "against");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "start":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 34);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "american":
//        nouns.adjectiveGen2(adjParamEng: "american ", adjParamSpM: "americano ", adjParamSpF: "americana ");
//        
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "part":
//        nouns.nounGen(engNoun: "the part ", spNoun: "la parte ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "show":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 35);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "might":
//        newVerb.GenPresSimpSubjunctive(modalEng: "might ", modalSp: "quiza ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "such":
//        gen.adjmethod(adjective: "such ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "place":
//        nouns.nounGen(engNoun: "the place ", spNoun: "el lugar ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "again":
//        newVerb.GenPresSimpAdverbs2(adverb: "again ", adverbio: "otra vez ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "city":
//        nouns.nounGen(engNoun: "the city ", spNoun: "la ciudad ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "case":
//        nouns.nounGen(engNoun: "the case ", spNoun: "el caso ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "few":
//        gen.adjmethodP(adjective: "most ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "system":
//        nouns.nounGen(engNoun: "the system ", spNoun: "el sistema ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "week":
//        nouns.nounGen(engNoun: "the week ", spNoun: "la semana ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "company":
//        newVerb.GenPresSimpAdverbs3(adverb: "where ", adverbio: "En donde ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "each":
//        gen.adjmethod(adjective: "each ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "percent":
//        nouns.nounGen(engNoun: "the percent ", spNoun: "el porcentaje ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "hear":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 36);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "during":
//        nouns.genPreps(prep: "during");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "question":
//        nouns.nounGen(engNoun: "the question ", spNoun: "la pregunta ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "right":
//        nouns.nounGen(engNoun: "the right ", spNoun: "el derecho ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "program":
//        nouns.nounGen(engNoun: "the program ", spNoun: "el programa ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "run":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 37);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "number":
//        nouns.nounGen(engNoun: "the number ", spNoun: "el número ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "small":
//        nouns.adjectiveGen(adjParamEng: "small ", adjParamSpM: "pequeño ", adjParamSpF: "pequeña ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "government":
//        nouns.nounGen(engNoun: "the government ", spNoun: "el gobierno ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "play":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 38);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "off":
//        newVerb.GenOff();
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "move":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 39);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "always":
//        newVerb.GenPresSimpAdverbs(adverb: "always ", adverbio: "siempre ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "night":
//        nouns.nounGen(engNoun: "the night ", spNoun: "la noche ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "believe":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 41);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "today":
//        newVerb.GenPresSimpAdverbs2(adverb: "today ", adverbio: "hoy ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "hold":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 42);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "point":
//        nouns.nounGen(engNoun: "the point ", spNoun: "el punto ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "live":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 43);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "happen":
//        newVerb.genHappen();
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "bring":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 44);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "next":
//        gen.adjmethod(adjective: "next ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//        
//    case "without":
//        nouns.genPreps(prep: "without");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "before":
//        nouns.genPreps(prep: "before");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "large":
//        nouns.adjectiveGen2(adjParamEng: "large ", adjParamSpM: "grande ", adjParamSpF: "gran ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "must":
//        newVerb.genPresSimpModals(modalEng: "must ", modalSp1: "debo ", modalSp2: "debes ", modalSp3: "debe ", modalSp4: "debemos ", modalSp5: "deben ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "war":
//        nouns.nounGen(engNoun: "the war ", spNoun: "la guerra ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "home":
//        nouns.nounGen(engNoun: "the home ", spNoun: "el hogar ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "under":
//        nouns.genPreps(prep: "under");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "room":
//        nouns.nounGen(engNoun: "the room ", spNoun: "el cuarto ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "fact":
//        nouns.nounGen(engNoun: "the fact ", spNoun: "el hecho ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "area":
//        nouns.nounGen(engNoun: "the area ", spNoun: "la zona ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "national":
//        nouns.adjectiveGen2(adjParamEng: "national ", adjParamSpM: "nacional ", adjParamSpF: "nacional ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "write":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 45);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//        
//    case "money":
//        nouns.nounGen(engNoun: "the money ", spNoun: "el dinero ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//        
//    case "story":
//        nouns.nounGen(engNoun: "the story ", spNoun: "la historia ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "water":
//        nouns.nounGen(engNoun: "the water ", spNoun: "el agua ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "mother":
//        nouns.nounGen(engNoun: "the mother ", spNoun: "la madre ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "different":
//        nouns.adjectiveGen2(adjParamEng: "different ", adjParamSpM: "diferente ", adjParamSpF: "diferente ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "young":
//        nouns.adjectiveGen2(adjParamEng: "young ", adjParamSpM: "joven ", adjParamSpF: "joven ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "month":
//        nouns.nounGen(engNoun: "the month ", spNoun: "el mes ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "lot":
//        nouns.nounGen(engNoun: "the lot ", spNoun: "el lote ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "book":
//        nouns.nounGen(engNoun: "the book ", spNoun: "el libro ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "eye":
//        nouns.nounGen(engNoun: "the eye ", spNoun: "el ojo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "study":
//        nouns.nounGen(engNoun: "the study ", spNoun: "el estudio ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "job":
//        nouns.nounGen(engNoun: "the job ", spNoun: "el trabajo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "kind":
//        nouns.nounGen(engNoun: "the kind ", spNoun: "el tipo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "word":
//        nouns.nounGen(engNoun: "the kind ", spNoun: "el tipo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "issue":
//        nouns.nounGen(engNoun: "the issue ", spNoun: "el tema ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "side":
//        nouns.nounGen(engNoun: "the side ", spNoun: "el lado ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "four":
//        gen.adjmethodP(adjective: "four ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "business":
//        nouns.nounGen(engNoun: "the business ", spNoun: "el negocio ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "though":
//        newVerb.genConjFuture(conjunction: "though", conector: "aún que");
//        newVerb2.GenPresSimpSubjunctive();
//        
//        complemento = newVerb2.gens;
//        complement = newVerb2.gene;
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//    case "head":
//        nouns.nounGen(engNoun: "the head ", spNoun: "la cabeza ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "far":
//        newVerb.GenPresSimpPrepasAdv(preposition: "far ", preposicion: "lejos ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "long":
//        nouns.adjectiveGen2(adjParamEng: "long ", adjParamSpM: "largo ", adjParamSpF: "larga ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "black":
//        nouns.adjectiveGen2(adjParamEng: "black ", adjParamSpM: "negro ", adjParamSpF: "negra ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "million":
//        gen.adjmethodP(adjective: "million");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "both":
//        gen.adjmethodP(adjective: "both ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "little":
//        nouns.adjectiveGen2(adjParamEng: "little ", adjParamSpM: "chiquito ", adjParamSpF: "chiquita ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "yes":
//        TxtEng = "yes"
//        TxtSpa = "si "
//        break
//    case "since":
//        newVerb.genConj(conjunction: "since ", conector: "ya que ");
//        newVerb2.GenPresSimp();
//        
//        complemento = newVerb.gens;
//        complement = newVerb2.gene;
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//    case "around":
//        nouns.genPreps(prep: "around");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "provide":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 46);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "service":
//        nouns.nounGen(engNoun: "the service ", spNoun: "el servicio ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "important":
//        nouns.adjectiveGen(adjParamEng: "important ", adjParamSpM: "importante ", adjParamSpF: "importante ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "sit":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 47);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "away":
//        newVerb.GenPresSimpPrepasAdv(preposition: "away ", preposicion: "lejos ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "friend":
//        nouns.nounGen(engNoun: "the friend ", spNoun: "el amigo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "however":
//        newVerb.GenPresSimpAdverbs3(adverb: "however ", adverbio: "como sea que ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "power":
//        nouns.nounGen(engNoun: "the power ", spNoun: "el poder ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "yet":
//        //TODO: FALTA FUNCION
//        //Nobles.genpresperf
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "father":
//        nouns.nounGen(engNoun: "the father ", spNoun: "el padre ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "hour":
//        nouns.nounGen(engNoun: "the hour ", spNoun: "la hora ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "often":
//        newVerb.GenPresSimpAdverbs2(adverb: "often ", adverbio: "seguido ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "until":
//        newVerb.genConjFuture(conjunction: "until", conector: "hasta que");
//        newVerb2.GenPresSimpSubjunctive();
//        
//        complemento = newVerb2.gens;
//        complement = newVerb2.gene;
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//    case "political":
//        nouns.adjectiveGen(adjParamEng: "political ", adjParamSpM: "politico ", adjParamSpF: "politica ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "line":
//        nouns.nounGen(engNoun: "the line ", spNoun: "la linea ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "end":
//        nouns.nounGen(engNoun: "the end ", spNoun: "el fin ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "stand":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 48);
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "among":
//        nouns.genPreps(prep: "among");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "game":
//        nouns.nounGen(engNoun: "the game ", spNoun: "el juego ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "ever":
//        //TODO: FALTA FUNCION EN NOBLES
//        //nob2.GenPresPerfVocab("ever ", "nunca ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "lose":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 49);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "bad":
//        nouns.adjectiveGen2(adjParamEng: "bad ", adjParamSpM: "mal ", adjParamSpF: "mala ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "member":
//        nouns.nounGen(engNoun: "the member ", spNoun: "el miembro ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "meet":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 50);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "pay":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 51);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "law":
//        nouns.nounGen(engNoun: "the law ", spNoun: "la ley ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "almost":
//        newVerb.GenAlmost(almost: "almost ", casi: "casi ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "car":
//        nouns.nounGen(engNoun: "the car ", spNoun: "el carro ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "later":
//        newVerb.GenPresSimpAdverbs2(adverb: "later ", adverbio: "mas tarde ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "name":
//        nouns.nounGen(engNoun: "the name ", spNoun: "el nombre ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "include":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 52);
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "five":
//        gen.adjmethodP(adjective: "five ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "center":
//        nouns.nounGen(engNoun: "the center ", spNoun: "el centro ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "once":
//        newVerb.GenPresSimpAdverbs2(adverb: "once ", adverbio: "una vez ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "university":
//        nouns.nounGen(engNoun: "the university ", spNoun: "la universidad ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "continue":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 53);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "least":
//        nouns.adjAdv(adverbEng: "the least ", adverbioEsp: "el menos ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "real":
//        nouns.adjectiveGen2(adjParamEng: "real ", adjParamSpM: "real ", adjParamSpF: "real ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "white":
//        nouns.adjectiveGen2(adjParamEng: "white ", adjParamSpM: "blanco ", adjParamSpF: "blanca ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "change":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 54);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "set":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 55);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "several":
//        gen.adjmethodP(adjective: "several ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "ago":
//        newVerb.genAgo();
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "information":
//        nouns.nounGen(engNoun: "the information ", spNoun: "la información ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "nothing":
//        nouns.genPronoun(pronounParm: "nothing ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "community":
//        nouns.nounGen(engNoun: "the community ", spNoun: "la comunidad ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "best":
//        nouns.adjectiveGen(adjParamEng: "best ", adjParamSpM: "mejor ", adjParamSpF: "mejor ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "idea":
//        nouns.nounGen(engNoun: "the idea ", spNoun: "la idea ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "lead":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 56);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "body":
//        nouns.nounGen(engNoun: "the body ", spNoun: "el cuerpo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "learn":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 57);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "kid":
//        nouns.nounGen(engNoun: "the kid ", spNoun: "el niño ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "minute":
//        nouns.nounGen(engNoun: "the minute ", spNoun: "el minuto ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "table":
//        nouns.nounGen(engNoun: "the table ", spNoun: "la mesa ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "whether":
//        newVerb.genConjFuture(conjunction: "whether", conector: "ya sea que");
//        newVerb2.GenPresSimpSubjunctive();
//        
//        complemento = newVerb2.gens;
//        complement = newVerb2.gene;
//        
//        TxtEng = newVerb.gene + " " + complement
//        TxtSpa = newVerb.gens + " " + complemento
//        break
//    case "understand":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 58);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "team":
//        nouns.nounGen(engNoun: "the team ", spNoun: "el equipo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "watch":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 59);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "together":
//        newVerb.GenPresSimpAdverbs2(adverb: "together ", adverbio: "juntos ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "follow":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 60);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "stop":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 61);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "face":
//        nouns.nounGen(engNoun: "the face ", spNoun: "la cara ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "anything":
//        nouns.genPronoun(pronounParm: "anything ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "public":
//        nouns.adjectiveGen2(adjParamEng: "public ", adjParamSpM: "publico ", adjParamSpF: "publica ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "social":
//        nouns.adjectiveGen2(adjParamEng: "social ", adjParamSpM: "social ", adjParamSpF: "social ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "already":
//        gen1.GenPastSimp1();
//        
//        TxtEng = gen1.gene
//        TxtSpa = gen1.gens
//        break
//    case "parent":
//        nouns.nounGen(engNoun: "the parent ", spNoun: "el padre ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "speak":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 62);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "create":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 63);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "office":
//        nouns.nounGen(engNoun: "the office ", spNoun: "la oficina ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "allow":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 64);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "level":
//        nouns.nounGen(engNoun: "the level ", spNoun: "el nivel ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "read":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 65);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "spend":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 66);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "person":
//        nouns.nounGen(engNoun: "the person ", spNoun: "la persona ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "door":
//        nouns.nounGen(engNoun: "the door ", spNoun: "la puerta ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "sure":
//        nouns.adjectiveGen(adjParamEng: "sure ", adjParamSpM: "seguro ", adjParamSpF: "segura ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "add":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 67);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "street":
//        nouns.nounGen(engNoun: "the street ", spNoun: "la calle ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "history":
//        nouns.nounGen(engNoun: "the history ", spNoun: "la historia ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "party":
//        nouns.nounGen(engNoun: "the party ", spNoun: "la fiesta ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "grow":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 68);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "reason":
//        nouns.nounGen(engNoun: "the reason ", spNoun: "la razón ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "morning":
//        nouns.nounGen(engNoun: "the morning ", spNoun: "la mañana ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "open":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 69);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "within":
//        nouns.genPreps(prep: "within");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "although":
//        newVerb.genConjFuture(conjunction: "although", conector: "aún que");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "walk":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 70);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "news":
//        nouns.nounGen(engNoun: "the news ", spNoun: "las noticias ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "health":
//        nouns.nounGen(engNoun: "the health ", spNoun: "la salud ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "court":
//        nouns.nounGen(engNoun: "the court ", spNoun: "la corte ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "force":
//        nouns.nounGen(engNoun: "the force ", spNoun: "la fuerza ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "early":
//        nouns.adjectiveGen(adjParamEng: "early ", adjParamSpM: "temprano ", adjParamSpF: "temprana ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "himself":
//        nouns.genPronoun(pronounParm: "himself ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "air":
//        nouns.nounGen(engNoun: "the air ", spNoun: "el aire ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "low":
//        nouns.adjectiveGen(adjParamEng: "low ", adjParamSpM: "bajo ", adjParamSpF: "baja ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "art":
//        nouns.nounGen(engNoun: "the art ", spNoun: "el arte ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "result":
//        nouns.nounGen(engNoun: "the result ", spNoun: "el resultado ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "moment":
//        nouns.nounGen(engNoun: "the moment ", spNoun: "el momento ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "offer":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 71);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "remember":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 72);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "research":
//        nouns.nounGen(engNoun: "the research ", spNoun: "la investigación ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "enough":
//        newVerb.GenPresSimpAdverbs2NoObject(adverb: "enough ", adverbio: "suficiente ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "girl":
//        nouns.nounGen(engNoun: "the girl ", spNoun: "la niña ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "boy":
//        nouns.nounGen(engNoun: "the boy ", spNoun: "el   niño ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "win":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 73);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "food":
//        nouns.nounGen(engNoun: "the food ", spNoun: "la comida ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "across":
//        nouns.genPreps(prep: "across");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "guy":
//        nouns.nounGen(engNoun: "the guy ", spNoun: "el tipo ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "second":
//        gen.adjmethod(adjective: "second ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "able":
//        nouns.adjectiveGen(adjParamEng: "able ", adjParamSpM: "capaz ", adjParamSpF: "capaz ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "toward":
//        nouns.genPreps(prep: "toward");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "maybe":
//        newVerb.GenPresSimpAdverbs(adverb: "maybe ", adverbio: "quizá ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "process":
//        nouns.nounGen(engNoun: "the process ", spNoun: "el proceso ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "everything":
//        nouns.genPronoun(pronounParm: "everything ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "appear":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 74);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "age":
//        nouns.nounGen(engNoun: "the age ", spNoun: "la edad ");
//        
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "policy":
//        nouns.nounGen(engNoun: "the policy ", spNoun: "la politica ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "consider":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 75);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "including":
//        nouns.genPreps(prep: "including");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "probably":
//        newVerb.GenPresSimpAdverbs(adverb: "probably ", adverbio: "probablemente ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "education":
//        nouns.nounGen(engNoun: "the education ", spNoun: "la educación ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "love":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 76);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "actually":
//        newVerb.GenPresSimpAdverbs(adverb: "actually ", adverbio: "de hecho ");
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "buy":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 77);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "wait":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 78);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "die":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 79);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "human":
//        nouns.adjectiveGen2(adjParamEng: "human ", adjParamSpM: "humano ", adjParamSpF: "humana ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "send":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 80);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "fee":
//        nouns.nounGen(engNoun: "the fee ", spNoun: "la multa ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "expect":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 81);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "serve":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 82);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "sense":
//        nouns.nounGen(engNoun: "the sense ", spNoun: "el sentido ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "teacher":
//        nouns.nounGen(engNoun: "the teacher ", spNoun: "el maestro ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "market":
//        nouns.nounGen(engNoun: "the market ", spNoun: "el mercado ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "stay":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 83);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "build":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 84);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "nation":
//        nouns.nounGen(engNoun: "the nation ", spNoun: "la nación ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "fall":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 85);
//        
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "oh":
//        TxtEng = "oh"
//        TxtSpa = "oh"
//        break
//    case "death":
//        nouns.nounGen(engNoun: "the death ", spNoun: "la muerte ");
//        
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "plan":
//        nouns.nounGen(engNoun: "the plan ", spNoun: "el plan ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "interest":
//        nouns.nounGen(engNoun: "the interest ", spNoun: "el interes ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "someone":
//        nouns.genPronoun(pronounParm: "someone ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "experience":
//        nouns.nounGen(engNoun: "the experience ", spNoun: "la experiencia ");
//
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "cut":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 86);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "kill":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 87);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "behind":
//        nouns.genPreps(prep: "behind");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "reach":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 88);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "six":
//        gen.adjmethodP(adjective: "six ");
//
//        TxtEng = gen.gene
//        TxtSpa = gen.gens
//        break
//    case "local":
//        nouns.adjectiveGen2(adjParamEng: "local ", adjParamSpM: "local ", adjParamSpF: "local ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "remain":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 89);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "effect":
//        nouns.nounGen(engNoun: "the effect ", spNoun: "el efecto ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "suggest":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 90);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "control":
//        nouns.nounGen(engNoun: "the control ", spNoun: "el control ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "perhaps":
//        newVerb.GenPresSimpAdverbs(adverb: "perhaps ", adverbio: "tal vez ");
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "raise":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 91);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "class":
//        nouns.nounGen(engNoun: "the class ", spNoun: "la clase ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "late":
//        nouns.adjectiveGen(adjParamEng: "late ", adjParamSpM: "tardado ", adjParamSpF: "tardada ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "major":
//        nouns.adjectiveGen(adjParamEng: "major ", adjParamSpM: "mayor ", adjParamSpF: "mayor ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "yeah":
//        TxtEng = "yeah"
//        TxtSpa = "yeah"
//        break
//    case "else":
//        newVerb.genElse();
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "pass":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 92);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "photo":
//        nouns.nounGen(engNoun: "the photo ", spNoun: "la foto ");
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "sell":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 93);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "themselves":
//        nouns.genPronoun(pronounParm: "themselves ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "field":
//        nouns.nounGen(engNoun: "the field ", spNoun: "el campo ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "college":
//        nouns.nounGen(engNoun: "the college ", spNoun: "la universidad ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "sometimes":
//        newVerb.GenPresSimpAdverbs2(adverb: "sometimes ", adverbio: "aveces ");
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "former":
//        nouns.adjectiveGen2(adjParamEng: "former ", adjParamSpM: "anterior ", adjParamSpF: "anterior ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "development":
//        nouns.nounGen(engNoun: "the development ", spNoun: "el desarrollo ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "require":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 94);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "along":
//        nouns.genPreps(prep: "along");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "decide":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 95);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "security":
//        nouns.nounGen(engNoun: "the security ", spNoun: "la seguridad ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "possible":
//        nouns.adjectiveGen(adjParamEng: "possible ", adjParamSpM: "posible ", adjParamSpF: "posible ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "effort":
//        nouns.nounGen(engNoun: "the effort ", spNoun: "el esfuerzo ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "role":
//        nouns.nounGen(engNoun: "the role ", spNoun: "el papel ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "better":
//        nouns.adjectiveGen(adjParamEng: "better ", adjParamSpM: "mejor ", adjParamSpF: "mejor ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "rate":
//        nouns.nounGen(engNoun: "the rate ", spNoun: "la tarifa ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "strong":
//        nouns.adjectiveGen(adjParamEng: "strong ", adjParamSpM: "fuerte ", adjParamSpF: "fuerte ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "music":
//        nouns.nounGen(engNoun: "the music ", spNoun: "la música ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "report":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 96);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//    case "leader":
//        nouns.nounGen(engNoun: "the leader ", spNoun: "el líder ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "light":
//        nouns.nounGen(engNoun: "the light ", spNoun: "la luz ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "whole":
//        nouns.adjectiveGen(adjParamEng: "whole ", adjParamSpM: "completo ", adjParamSpF: "completa ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "voice":
//        nouns.nounGen(engNoun: "the voice ", spNoun: "la voz ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "color":
//        nouns.nounGen(engNoun: "the color ", spNoun: "el color ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "heart":
//        nouns.nounGen(engNoun: "the heart ", spNoun: "el corazón ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "care":
//        nouns.nounGen(engNoun: "the care ", spNoun: "el cuidado ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "police":
//        nouns.nounGen(engNoun: "the police ", spNoun: "la policia ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "economic":
//        nouns.adjectiveGen2(adjParamEng: "economic ", adjParamSpM: "economico ", adjParamSpF: "economica ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//    case "wife":
//        nouns.nounGen(engNoun: "the wife ", spNoun: "la esposa ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//        
//    case "mind":
//        nouns.nounGen(engNoun: "the mind ", spNoun: "la mente ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "finally":
//        newVerb.GenPresSimpAdverbs(adverb: "finally ", adverbio: "finalmente ");
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "drug":
//        nouns.nounGen(engNoun: "the drug ", spNoun: "la droga ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "less":
//        newVerb.GenPresSimpAdverbs2NoObject(adverb: "less ", adverbio: "menos ");
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "return":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 97);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "according":
//        nouns.genPreps(prep: "according to");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "pull":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 98);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "decision":
//        nouns.nounGen(engNoun: "the decision ", spNoun: "la decisión ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "explain":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 99);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "carry":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 100);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "develop":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 101);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "view":
//        nouns.nounGen(engNoun: "the view ", spNoun: "la vista ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "free":
//        nouns.adjectiveGen(adjParamEng: "free ", adjParamSpM: "libre ", adjParamSpF: "libre ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "hope":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 102);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "drive":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 103);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
//
//    case "son":
//        nouns.nounGen(engNoun: "the son ", spNoun: "el hijo ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "arm":
//        nouns.nounGen(engNoun: "the arm ", spNoun: "el brazo ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "department":
//        nouns.nounGen(engNoun: "the department ", spNoun: "el departamento ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "true":
//        nouns.adjectiveGen(adjParamEng: "true ", adjParamSpM: "verdadero ", adjParamSpF: "verdadera ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "price":
//        nouns.nounGen(engNoun: "the price ", spNoun: "el precio ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "military":
//        nouns.adjectiveGen2(adjParamEng: "military ", adjParamSpM: "militar ", adjParamSpF: "militar ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "federal":
//        nouns.adjectiveGen2(adjParamEng: "federal ", adjParamSpM: "federal ", adjParamSpF: "federal ");
//
//        TxtEng = nouns.gene
//        TxtSpa = nouns.gens
//        break
//
//    case "break":
//        newVerb.GenPresSimp(pronounparm: pronoun, verbpos: 104);
//
//        TxtEng = newVerb.gene
//        TxtSpa = newVerb.gens
//        break
        
    case "":
        
        TxtEng = gen.gene
        TxtSpa = gen.gens
        break
    default:
        print("No matching function found for \(functionName)")
    }
}

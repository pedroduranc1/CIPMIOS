//
//  NewVerbClass.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 15/7/24.
//

import Foundation

class NewVerbClass {
    //DEFINICIONES
    let cero = CeroToFifty()
    
    var gens = ""
    var gene = ""
    var gene2 = ""
    var gene3 = ""
    var gens2 = ""
    
    //FUNCIONES
    
    func genAgo() -> (String, String) {
        let el = Int.random(in: 0..<phrasesBeforeAgo.count)
        let gens = "hace " + phrasesBeforeAgoSpanish[el]
        let gene = phrasesBeforeAgo[el] + " ago"
        
        return (gens, gene)
    }
    
    func genElse() -> (String, String) {
        let el = Int.random(in: 0..<questionWordsWithElse.count)
        let gens = questionWordsWithElseSpanish[el]
        let gene = questionWordsWithElse[el]
        
        return (gens, gene)
    }
    
    func genVerbosJuntos() -> (String, String, String) {
        
        let v = Int.random(in: 0..<verbsVJ.count)
        let ve = Int.random(in: 0..<verbs.count)
        let p = Int.random(in: 0..<subjectsEnglish.count)
        let pronoun = subjectsEnglish[p]
        let v2 = Int.random(in: 0..<verbObjects[ve].count)
        
        var gens = ""
        var gene = ""
        var gene2 = ""
        
        switch pronoun {
        case "I ":
            gene = "I " + verbsVJ[v] + "to " + verbs[ve] + verbObjects[ve][v2]
            gene2 = "I " + verbsVJ[v] + verbsIng[ve] + verbObjects[ve][v2]
            gens = "Yo " + verbsFirstPersonSingularSpanishVJ[v] + verbsSpanish[ve] + verbObjectsSpanish[ve][v2]
        case "You ":
            gene = "You " + verbsVJ[v] + "to " + verbs[ve] + verbObjects[ve][v2]
            gene2 = "You " + verbsVJ[v] + verbsIng[ve] + verbObjects[ve][v2]
            gens = "Tú " + verbsSecondPersonSingularSpanishVJ[v] + verbsSpanish[ve] + verbObjectsSpanish[ve][v2]
        case "He ":
            gene = "He " + verbsThirdPersonSingularVJ[v] + "to " + verbs[ve] + verbObjects[ve][v2]
            gene2 = "He " + verbsThirdPersonSingularVJ[v] + verbsIng[ve] + verbObjects[ve][v2]
            gens = "Él " + verbsThirdPersonSingularSpanishVJ[v] + verbsSpanish[ve] + verbObjectsSpanish[ve][v2]
        case "She ":
            gene = "She " + verbsThirdPersonSingularVJ[v] + "to " + verbs[ve] + verbObjects[ve][v2]
            gene2 = "She " + verbsThirdPersonSingularVJ[v] + verbsIng[ve] + verbObjects[ve][v2]
            gens = "Ella " + verbsThirdPersonSingularSpanishVJ[v] + verbsSpanish[ve] + verbObjectsSpanish[ve][v2]
        case "We ":
            gene = "We " + verbsVJ[v] + "to " + verbs[ve] + verbObjects[ve][v2]
            gene2 = "We " + verbsVJ[v] + verbsIng[ve] + verbObjects[ve][v2]
            gens = "Nosotros " + verbsFirstPersonPluralSpanishVJ[v] + verbsSpanish[ve] + verbObjectsSpanish[ve][v2]
        case "They ":
            gene = "They " + verbsVJ[v] + "to " + verbs[ve] + verbObjects[ve][v2]
            gene2 = "They " + verbsVJ[v] + verbsIng[ve] + verbObjects[ve][v2]
            gens = "Ellos " + verbsThirdPersonPluralSpanishVJ[v] + verbsSpanish[ve] + verbObjectsSpanish[ve][v2]
        default:
            break
        }
        
        return (gens, gene, gene2)
    }
    
    func genCausatives() -> (String, String, String) {
        let p = Int.random(in: 0..<subjectsEnglish.count)
        let ob1 = Int.random(in: 0..<objectPronouns1.count)
        let ob2 = Int.random(in: 0..<objectPronouns2.count)
        let ob3 = Int.random(in: 0..<objectPronouns3.count)
        let ob4 = Int.random(in: 0..<objectPronouns4.count)
        let ob5 = Int.random(in: 0..<objectPronouns5.count)
        let v = Int.random(in: 0..<verbs.count)
        let v2 = Int.random(in: 0..<verbObjects[v].count)
        let pronoun = subjectsEnglish[p]
        let get = Int.random(in: 0..<2)
        
        var gens = ""
        var gene = ""
        var gene2 = ""
        
        if get == 0 {
            switch pronoun {
            case "I ":
                gene = "I have " + objectPronouns1[ob1] + verbs[v] + verbObjects[v][v2]
                gens = "yo " + objectPronouns1Sp[ob1] + "pongo a " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns1[ob1] == "him " {
                    gene2 = "I have it " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns1[ob1] == "it " {
                    gene2 = "I have him " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "You ":
                gene = "you have " + objectPronouns2[ob2] + verbs[v] + verbObjects[v][v2]
                gens = "tú " + objectPronouns2Sp[ob2] + "pones a " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns2[ob2] == "him " {
                    gene2 = "You have it " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns2[ob2] == "it " {
                    gene2 = "You have him " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "He ":
                gene = "he has " + objectPronouns3[ob3] + verbs[v] + verbObjects[v][v2]
                gens = "él " + objectPronouns3Sp[ob3] + "pone a " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns3[ob3] == "him " {
                    gene2 = "He has it " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns3[ob3] == "it " {
                    gene2 = "He has him " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "She ":
                gene = "she has " + objectPronouns4[ob4] + verbs[v] + verbObjects[v][v2]
                gens = "ella " + objectPronouns4Sp[ob4] + "pone a " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns4[ob4] == "him " {
                    gene2 = "She has it " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns4[ob4] == "it " {
                    gene2 = "She has him " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "We ":
                gene = "we have " + objectPronouns5[ob5] + verbs[v] + verbObjects[v][v2]
                gens = "nosotros " + objectPronouns5sp[ob5] + "ponemos a " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns5[ob5] == "him " {
                    gene2 = "We have it " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns5[ob5] == "it " {
                    gene2 = "We have him " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "They ":
                gene = "they have " + objectPronouns5[ob5] + verbs[v] + verbObjects[v][v2]
                gens = "ellos " + objectPronouns5sp[ob5] + "ponen a " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns5[ob5] == "him " {
                    gene2 = "They have it " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns5[ob5] == "it " {
                    gene2 = "They have him " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            default:
                break
            }
        } else {
            switch pronoun {
            case "I ":
                gene = "I get " + objectPronouns1[ob1] + "to " + verbs[v] + verbObjects[v][v2]
                gens = "yo " + objectPronouns1Sp[ob1] + "hago que " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns1[ob1] == "him " {
                    gene2 = "I get it " + "to " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns1[ob1] == "it " {
                    gene2 = "I get him " + "to " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "You ":
                gene = "you get " + objectPronouns2[ob2] + "to " + verbs[v] + verbObjects[v][v2]
                gens = "tú " + objectPronouns2Sp[ob2] + "haces que " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns2[ob2] == "him " {
                    gene2 = "You get it " + "to " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns2[ob2] == "it " {
                    gene2 = "You get him " + "to " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "He ":
                gene = "he gets " + objectPronouns3[ob3] + "to " + verbs[v] + verbObjects[v][v2]
                gens = "él " + objectPronouns3Sp[ob3] + "hace que " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns3[ob3] == "him " {
                    gene2 = "He gets it " + "to " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns3[ob3] == "it " {
                    gene2 = "He gets him " + "to " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "She ":
                gene = "she gets " + objectPronouns4[ob4] + "to " + verbs[v] + verbObjects[v][v2]
                gens = "ella " + objectPronouns4Sp[ob4] + "hace que " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns4[ob4] == "him " {
                    gene2 = "She gets it " + "to " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns4[ob4] == "it " {
                    gene2 = "She gets him " + "to " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "We ":
                gene = "we get " + objectPronouns5[ob5] + "to " + verbs[v] + verbObjects[v][v2]
                gens = "nosotros " + objectPronouns5sp[ob5] + "hacemos que " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns5[ob5] == "him " {
                    gene2 = "We get it " + "to " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns5[ob5] == "it " {
                    gene2 = "We get him " + "to " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            case "They ":
                gene = "they get " + objectPronouns5[ob5] + "to " + verbs[v] + verbObjects[v][v2]
                gens = "ellos " + objectPronouns5sp[ob5] + "hacen que " + verbsSpanish[v] + verbObjectsSpanish[v][v2]
                if objectPronouns5[ob5] == "him " {
                    gene2 = "They get it " + "to " + verbs[v] + verbObjects[v][v2]
                } else if objectPronouns5[ob5] == "it " {
                    gene2 = "They get him " + "to " + verbs[v] + verbObjects[v][v2]
                } else {
                    gene2 = "."
                }
            default:
                break
            }
        }
        
        return (gens, gene, gene2)
    }
    
    func genReflexives() -> (String, String) {
        
        let p = Int.random(in: 0..<subjectsEnglish.count)
        let v = Int.random(in: 0..<reflexiveVerbsSpanishSecondPerson.count)
        let pronoun = subjectsEnglish[p]
        
        var gens = ""
        var gene = ""
        
        switch pronoun {
        case "I ":
            gens = "yo " + reflexiveVerbsSpanish1[v] + "a mí mismo"
            gene = "I " + reflexiveVerbs[v] + "myself"
        case "You ":
            gens = "tú " + reflexiveVerbsSpanishSecondPerson[v] + "a ti mismo"
            gene = "you " + reflexiveVerbs[v] + "yourself"
        case "He ":
            gens = "él " + reflexiveVerbsSpanishThirdPersonSingular[v] + "a sí mismo"
            gene = "he " + reflexiveVerbs[v] + "himself"
        case "She ":
            gens = "ella " + reflexiveVerbsSpanishThirdPersonSingular[v] + "a sí misma"
            gene = "she " + reflexiveVerbs[v] + "herself"
        case "We ":
            gens = "nosotros " + reflexiveVerbsSpanishPlural4[v] + "a nosotros mismos"
            gene = "we " + reflexiveVerbs[v] + "ourselves"
        case "They ":
            gens = "ellos " + reflexiveVerbsSpanishThirdPersonPlural[v] + "a ellos mismos"
            gene = "they " + reflexiveVerbs[v] + "themselves"
        default:
            break
        }
        
        return (gens, gene)
    }
    
    func genGetStructures() -> (String, String, String?) {
        
        let p = Int.random(in: 0..<subjectsSpanish.count)
        let adj = Int.random(in: 0..<combinedAdjectivesSpanishMasculinePlural.count)
        let r = Int.random(in: 0..<3)
        let r2 = Int.random(in: 0..<2)
        
        let pronoun = subjectsSpanish[p]
        let englishPronoun = subjectsEnglish[p]
        let mascPlural = combinedAdjectivesSpanishMasculinePlural[adj]
        let englishAdj = combinedAdjectivesEnglishShort[adj]
        let spanishMaleSingular = combinedAdjectivesSpanishMasculine[adj]
        let spanishFemaleSingular = combinedAdjectivesSpanishFeminine[adj]
        
        var spBody = ""
        var engBody = "get "
        var gens = ""
        var gene = ""
        var gene2: String? = nil
        
        if r2 == 0 {
            switch pronoun {
            case "Yo ":
                switch r {
                case 0:
                    spBody = "me hago " + spanishMaleSingular
                case 1:
                    spBody = "me vuelvo " + spanishMaleSingular
                case 2:
                    spBody = "me pongo " + spanishMaleSingular
                default:
                    break
                }
            case "Tú ":
                switch r {
                case 0:
                    spBody = "te haces " + spanishMaleSingular
                case 1:
                    spBody = "te vuelves " + spanishMaleSingular
                case 2:
                    spBody = "te pones " + spanishMaleSingular
                default:
                    break
                }
            case "Él ":
                switch r {
                case 0:
                    spBody = "se hace " + spanishMaleSingular
                case 1:
                    spBody = "se vuelve " + spanishMaleSingular
                case 2:
                    spBody = "se pone " + spanishMaleSingular
                default:
                    break
                }
            case "Ella ":
                switch r {
                case 0:
                    spBody = "se hace " + spanishFemaleSingular
                case 1:
                    spBody = "se vuelve " + spanishFemaleSingular
                case 2:
                    spBody = "se pone " + spanishFemaleSingular
                default:
                    break
                }
            case "Nosotros ":
                switch r {
                case 0:
                    spBody = "nos hacemos " + mascPlural
                case 1:
                    spBody = "nos volvemos " + mascPlural
                case 2:
                    spBody = "nos ponemos " + mascPlural
                default:
                    break
                }
            case "Ellos ":
                switch r {
                case 0:
                    spBody = "se hacen " + mascPlural
                case 1:
                    spBody = "se vuelven " + mascPlural
                case 2:
                    spBody = "se ponen " + mascPlural
                default:
                    break
                }
            default:
                break
            }
            
            if englishPronoun == "He " || englishPronoun == "She " {
                engBody = "gets "
            }
            
            gens = pronoun + spBody
            gene = englishPronoun + engBody + englishAdj
        } else {
            let getr = Int.random(in: 0..<getSpanish1.count)
            
            switch pronoun {
            case "Yo ":
                gens = "yo " + getSpanish1[getr]
                gene = "I get " + getEnglishVerbs[getr]
            case "Tú ":
                gens = "tú " + getSpanish2[getr]
                gene = "you get " + getEnglishVerbs[getr]
            case "Él ":
                gens = "él " + getSpanish3[getr]
                gene = "he gets " + getEnglishVerbs[getr]
                gene2 = "she gets " + getEnglishVerbs[getr]
            case "Ella ":
                gens = "ella " + getSpanish3[getr]
                gene = "she gets " + getEnglishVerbs[getr]
                gene2 = "he gets " + getEnglishVerbs[getr]
            case "Nosotros ":
                gens = "nosotros " + getSpanish4[getr]
                gene = "we get " + getEnglishVerbs[getr]
            case "Ellos ":
                gens = "ellos " + getSpanish5[getr]
                gene = "they get " + getEnglishVerbs[getr]
            default:
                break
            }
        }
        
        return (gens, gene, gene2)
    }
    
    func genSupposedTo(isPast: Bool) -> (String, String, String?, String?) {
        
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbrand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects[verbrand].count)
        
        let pronoun = subjectsEnglish[pronounRand]
        
        var gene = ""
        var gens = ""
        var gens2: String? = nil
        var gens3: String? = nil
        
        switch pronoun {
        case "I ":
            if !isPast {
                gene = "I am supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que yo tengo que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que yo debo " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que yo voy a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            } else {
                gene = "I was supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que yo tenía que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que yo debía " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que yo iba a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            }
        case "You ":
            if !isPast {
                gene = "you are supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que tú tienes que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que tú debes " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que tú vas a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            } else {
                gene = "you were supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que tú tenías que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que tú debías " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que tú ibas a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            }
        case "He ":
            if !isPast {
                gene = "he is supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que él tiene que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que él debe " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que él va a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            } else {
                gene = "he was supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que él tenía que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que él debía " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que él iba a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            }
        case "She ":
            if !isPast {
                gene = "she is supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que ella tiene que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que ella debe " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que ella va a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            } else {
                gene = "she was supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que ella tenía que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que ella debía " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que ella iba a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            }
        case "We ":
            if !isPast {
                gene = "we are supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que nosotros tenemos que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que nosotros debemos " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que nosotros vamos a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            } else {
                gene = "we were supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que nosotros teníamos que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que nosotros debíamos " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que nosotros íbamos a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            }
        case "They ":
            if !isPast {
                gene = "they are supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que ellos tienen que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que ellos deben " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que ellos van a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            } else {
                gene = "they were supposed to " + verbs[verbrand] + verbObjects[verbrand][objRand]
                gens = "se supone que ellos tenían que " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens2 = "se supone que ellos debían " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
                gens3 = "se supone que ellos iban a " + verbsSpanish[verbrand] + verbObjectsSpanish[verbrand][objRand]
            }
        default:
            break
        }
        
        return (gene, gens, gens2, gens3)
    }
    
    func genPvpp() -> (String, String, String?) {
        
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<pvppVerbsThirdPerson.count)
        let pronoun = subjectsEnglish[pronounRand]
        let pp = Int.random(in: 0..<objectPronouns1.count)
        let pp3 = Int.random(in: 0..<objectPronouns3.count)
        let ppnos = Int.random(in: 0..<objectPronouns5.count)
        
        var gene = ""
        var gens = ""
        var gene2: String? = nil
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + pvppVerbs[verbRand] + objectPronouns1[pp]
            gens = subjectsSpanish[0] + objectPronouns1Sp[pp] + firstPersonSingularPvppSpanish[verbRand]
            if objectPronouns1[pp] == "him " {
                gene2 = subjectsEnglish[0] + pvppVerbs[verbRand] + "it "
            } else if objectPronouns1[pp] == "it " {
                gene2 = subjectsEnglish[0] + pvppVerbs[verbRand] + "him "
            } else {
                gene2 = "."
            }
        case "You ":
            gene = subjectsEnglish[1] + pvppVerbs[verbRand] + objectPronouns2[pp]
            gens = subjectsSpanish[1] + objectPronouns2Sp[pp] + secondPersonSingularPvppSpanish[verbRand]
            if objectPronouns2[pp] == "him " {
                gene2 = subjectsEnglish[1] + pvppVerbs[verbRand] + "it "
            } else if objectPronouns2[pp] == "it " {
                gene2 = subjectsEnglish[1] + pvppVerbs[verbRand] + "him "
            } else {
                gene2 = "."
            }
        case "He ":
            gene = subjectsEnglish[2] + pvppVerbsThirdPerson[verbRand] + objectPronouns3[pp3]
            gens = subjectsSpanish[2] + objectPronouns3Sp[pp3] + thirdPersonSingularPvppSpanish[verbRand]
            if objectPronouns3[pp3] == "it " {
                gene2 = subjectsEnglish[2] + pvppVerbsThirdPerson[verbRand] + "him "
            } else if objectPronouns3[pp3] == "him " {
                gene2 = subjectsEnglish[2] + pvppVerbsThirdPerson[verbRand] + "it "
            } else {
                gene2 = "."
            }
        case "She ":
            gene = subjectsEnglish[3] + pvppVerbsThirdPerson[verbRand] + objectPronouns4[pp3]
            gens = subjectsSpanish[3] + objectPronouns4Sp[pp3] + thirdPersonSingularPvppSpanish[verbRand]
            if objectPronouns4[pp3] == "him " {
                gene2 = subjectsEnglish[3] + pvppVerbsThirdPerson[verbRand] + "it "
            } else if objectPronouns4[pp3] == "it " {
                gene2 = subjectsEnglish[3] + pvppVerbsThirdPerson[verbRand] + "him "
            } else {
                gene2 = "."
            }
        case "We ":
            gene = subjectsEnglish[4] + pvppVerbs[verbRand] + objectPronouns5[ppnos]
            gens = subjectsSpanish[4] + objectPronouns5sp[ppnos] + firstPersonPluralPvppSpanish[verbRand]
            if objectPronouns5[ppnos] == "him " {
                gene2 = subjectsEnglish[4] + pvppVerbs[verbRand] + "it "
            } else if objectPronouns5[ppnos] == "it " {
                gene2 = subjectsEnglish[4] + pvppVerbs[verbRand] + "him "
            } else {
                gene2 = "."
            }
        case "They ":
            gene = subjectsEnglish[5] + pvppVerbs[verbRand] + objectPronouns6[pp]
            gens = subjectsSpanish[5] + objectPronouns6Sp[pp] + thirdPersonPluralPvppSpanish[verbRand]
            if objectPronouns6[pp] == "him " {
                gene2 = subjectsEnglish[5] + pvppVerbs[verbRand] + "it "
            } else if objectPronouns6[pp] == "it " {
                gene2 = subjectsEnglish[5] + pvppVerbs[verbRand] + "him "
            } else {
                gene2 = "."
            }
        default:
            break
        }
        
        return (gene, gens, gene2)
    }
    
    func GenPvppPast() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<pvppVerbsThirdPerson.count)
        let ob2 = Int.random(in: 0..<pvppVerbsComplements[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        let pp = Int.random(in: 0..<objectPronouns1.count)
        let pp3 = Int.random(in: 0..<objectPronouns3.count)
        let ppnos = Int.random(in: 0..<objectPronouns5.count)
        let spanishObject = pvppVerbsComplementosSpanish[verbRand][ob2]
        let englishObject = pvppVerbsComplements[verbRand][ob2]
        
        switch pronoun {
        case "I ":
            gene = "\(subjectsEnglish[0])\(pvppVerbsPastTense[verbRand])\(objectPronouns1[pp])\(englishObject)"
            gens = "\(subjectsSpanish[0])\(objectPronouns1Sp[pp])\(firstPersonSingularPvppSpanishPast[verbRand])\(spanishObject)"
            if objectPronouns1[pp] == "him " {
                gene2 = "\(subjectsEnglish[0])\(pvppVerbsPastTense[verbRand])it \(englishObject)"
            } else if objectPronouns1[pp] == "it " {
                gene2 = "\(subjectsEnglish[0])\(pvppVerbsPastTense[verbRand])him \(englishObject)"
            } else {
                gene2 = "."
            }
        case "You ":
            gene = "\(subjectsEnglish[1])\(pvppVerbsPastTense[verbRand])\(objectPronouns2[pp])\(englishObject)"
            gens = "\(subjectsSpanish[1])\(objectPronouns2Sp[pp])\(secondPersonSingularPvppSpanishPreterito[verbRand])\(spanishObject)"
            if objectPronouns2[pp] == "him " {
                gene2 = "\(subjectsEnglish[1])\(pvppVerbsPastTense[verbRand])it \(englishObject)"
            } else if objectPronouns2[pp] == "it " {
                gene2 = "\(subjectsEnglish[1])\(pvppVerbsPastTense[verbRand])him \(englishObject)"
            } else {
                gene2 = "."
            }
        case "He ":
            gene = "\(subjectsEnglish[2])\(pvppVerbsPastTense[verbRand])\(objectPronouns3[pp3])\(englishObject)"
            gens = "\(subjectsSpanish[2])\(objectPronouns3Sp[pp3])\(thirdPersonSingularPvppSpanishPreterito[verbRand])\(spanishObject)"
            if objectPronouns3[pp3] == "it " {
                gene2 = "\(subjectsEnglish[2])\(pvppVerbsPastTense[verbRand])him \(englishObject)"
            } else if objectPronouns3[pp3] == "him " {
                gene2 = "\(subjectsEnglish[2])\(pvppVerbsPastTense[verbRand])it \(englishObject)"
            } else {
                gene2 = "."
            }
        case "She ":
            gene = "\(subjectsEnglish[3])\(pvppVerbsPastTense[verbRand])\(objectPronouns4[pp3])\(englishObject)"
            gens = "\(subjectsSpanish[3])\(objectPronouns4Sp[pp3])\(thirdPersonSingularPvppSpanishPreterito[verbRand])\(spanishObject)"
            if objectPronouns4[pp3] == "him " {
                gene2 = "\(subjectsEnglish[3])\(pvppVerbsPastTense[verbRand])it \(englishObject)"
            } else if objectPronouns4[pp3] == "it " {
                gene2 = "\(subjectsEnglish[3])\(pvppVerbsPastTense[verbRand])him \(englishObject)"
            } else {
                gene2 = "."
            }
        case "We ":
            gens = "\(subjectsSpanish[4])\(objectPronouns5sp[ppnos])\(firstPersonPluralPvppSpanishPreterito[verbRand])\(spanishObject)"
            gene = "\(subjectsEnglish[4])\(pvppVerbsPastTense[verbRand])\(objectPronouns5[ppnos])\(englishObject)"
            if objectPronouns5[ppnos] == "him " {
                gene2 = "\(subjectsEnglish[4])\(pvppVerbsPastTense[verbRand])it \(englishObject)"
            } else if objectPronouns5[ppnos] == "it " {
                gene2 = "\(subjectsEnglish[4])\(pvppVerbsPastTense[verbRand])him \(englishObject)"
            } else {
                gene2 = "."
            }
        case "They ":
            gene = "\(subjectsEnglish[5])\(pvppVerbsPastTense[verbRand])\(objectPronouns6[pp])\(englishObject)"
            gens = "\(subjectsSpanish[5])\(objectPronouns6Sp[pp])\(thirdPersonPluralPvppSpanishPreterito[verbRand])"
            if objectPronouns6[pp] == "him " {
                gene2 = "\(subjectsEnglish[5])\(pvppVerbsPastTense[verbRand])it "
            } else if objectPronouns6[pp] == "it " {
                gene2 = "\(subjectsEnglish[5])\(pvppVerbsPastTense[verbRand])him "
            } else {
                gene2 = "."
            }
        default:
            break
        }
    }
    
    func GenOff() {
        let off = Int.random(in: 0..<verbsWithOff.count)
        gens = verbsWithOffSpanish[off]
        gene = verbsWithOff[off]
    }
    
    func GenThereBe() {
        let t = Int.random(in: 0..<thereBeVariations.count)
        let c = Int.random(in: 0..<cero.sustP.count)
        let cs = Int.random(in: 0..<cero.sust.count)
        let sustantivotagged = cero.sustTagged[cs]
        let gender = sustantivotagged.last!
        let temp = thereBeVariationsEnglishSpanish[t]
        
        if temp.starts(with: "P") {
            let temp2 = temp.dropFirst()
            let parts = temp2.split(separator: " - ")
            if parts.count == 2 {
                let englishPart = parts[0].trimmingCharacters(in: .whitespaces)
                let spanishPart = parts[1].trimmingCharacters(in: .whitespaces)
                gens = "\(spanishPart) \(cero.sustP[c])"
                gene = "\(englishPart) \(cero.nounP[c])"
            }
        } else {
            let parts = temp.split(separator: " - ")
            if parts.count == 2 {
                let englishPart = parts[0].trimmingCharacters(in: .whitespaces)
                let spanishPart = parts[1].trimmingCharacters(in: .whitespaces)
                if gender == "M" {
                    gens = "\(spanishPart) un \(cero.sust[cs])"
                    gene = "\(englishPart) a \(cero.noun[cs])"
                } else {
                    gens = "\(spanishPart) una \(cero.sust[cs])"
                    gene = "\(englishPart) a \(cero.noun[cs])"
                }
            }
        }
    }
    
    func genHappen() {
        let h = Int.random(in: 0..<objetosHappen.count)
        let o = Int.random(in: 0..<phrarsesHappen.count)
        gens = "\(objetosHappen[h]) sucede \(phrarsesHappen[o])"
        gene = "\(objectsBeforeHappen[h]) happens \(phrasesAfterHappen[o])"
    }
    
    func genLong() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let pronoun = subjectsEnglish[pronounRand]
        let v = Int.random(in: 0..<verbsWithLong.count)

        switch pronoun {
        case "I ":
            gens = "yo \(firstPersonSingular[v]) mucho tiempo "
            gene = "I \(verbsWithLong[v]) long "
        case "You ":
            gene = "you \(verbsWithLong[v]) long "
            gens = "tú \(secondPersonSingular[v]) mucho tiempo "
        case "He ":
            gene = "he \(verbsWithLongThirdPerson[v]) long "
            gens = "él \(thirdPersonSingular[v]) mucho tiempo "
        case "She ":
            gene = "she \(verbsWithLongThirdPerson[v]) long "
            gens = "ella \(thirdPersonSingular[v]) mucho tiempo "
        case "We ":
            gens = "Nosotros \(firstPersonPlural[v]) mucho tiempo "
            gene = "We \(verbsWithLong[v]) long "
        case "They ":
            gene = "They \(verbsWithLong[v]) long "
            gens = "ellos \(thirdPersonPlural[v]) mucho tiempo "
        default:
            break
        }
    }

    func genAbout() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let pronoun = subjectsEnglish[pronounRand]
        let v = Int.random(in: 0..<verbsAbout.count)

        switch pronoun {
        case "I ":
            gens = "yo \(firstPersonSingularAbout[v]) alrededor "
            gene = "I \(verbsAbout[v]) about "
        case "You ":
            gene = "you \(verbsAbout[v]) about "
            gens = "tú \(secondPersonSingularAbout[v]) alrededor "
        case "He ":
            gene = "he \(verbsAbout[v]) about "
            gens = "él \(thirdPersonSingularAbout[v]) alrededor "
        case "She ":
            gene = "she \(verbsAbout[v]) about "
            gens = "ella \(thirdPersonSingularAbout[v]) alrededor "
        case "We ":
            gens = "Nosotros \(firstPersonPluralAbout[v]) alrededor "
            gene = "We \(verbsAbout[v]) about "
        case "They ":
            gene = "They \(verbsAbout[v]) about "
            gens = "ellos \(thirdPersonPluralAbout[v]) alrededor "
        default:
            break
        }
    }
    
    func genOver() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let pronoun = subjectsEnglish[pronounRand]
        let v = Int.random(in: 0..<verbsWithOver.count)

        switch pronoun {
        case "I ":
            gens = "yo \(firstPersonSingularSpanish[v])"
            gene = "I \(verbsWithOver[v])"
        case "You ":
            gene = "you \(verbsWithOver[v])"
            gens = "tú \(secondPersonSingularSpanish[v])"
        case "He ":
            gene = "he \(verbsWithOverThirdPerson[v])"
            gens = "él \(thirdPersonSingularSpanish[v])"
        case "She ":
            gene = "she \(verbsWithOverThirdPerson[v])"
            gens = "ella \(thirdPersonSingularSpanish[v])"
        case "We ":
            gens = "Nosotros \(firstPersonPluralSpanish[v])"
            gene = "We \(verbsWithOver[v])"
        case "They ":
            gene = "They \(verbsWithOver[v])"
            gens = "ellos \(thirdPersonPluralSpanish[v])"
        default:
            break
        }
    }

    func GenPresSimp() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = "\(subjectsEnglish[0]) \(verbs[verbRand]) \(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[0]) \(verbsSpanishFirstPerson[verbRand]) \(verbObjectsSpanish[verbRand][ob2])"
        case "You ":
            gene = "\(subjectsEnglish[1]) \(verbs[verbRand]) \(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[1]) \(verbsSpanishSecondPerson[verbRand]) \(verbObjectsSpanish[verbRand][ob2])"
        case "He ":
            gene = "\(subjectsEnglish[2]) \(verbsThirdPerson[verbRand]) \(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[2]) \(verbsSpanishThirdPerson[verbRand]) \(verbObjectsSpanish[verbRand][ob2])"
        case "She ":
            gene = "\(subjectsEnglish[3]) \(verbsThirdPerson[verbRand]) \(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[3]) \(verbsSpanishThirdPerson[verbRand]) \(verbObjectsSpanish[verbRand][ob2])"
        case "We ":
            gens = "\(subjectsSpanish[4]) \(verbsSpanishFirstPersonPlural[verbRand]) \(verbObjectsSpanish[verbRand][ob2])"
            gene = "\(subjectsEnglish[4]) \(verbs[verbRand]) \(verbObjects[verbRand][ob2])"
        case "They ":
            gene = "\(subjectsEnglish[5]) \(verbs[verbRand]) \(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[5]) \(verbsSpanishThirdPersonPlural[verbRand]) \(verbObjectsSpanish[verbRand][ob2])"
        default:
            break
        }
    }

    func GenPresSimpNoS(pronounRand: Int, verbRand: Int, ob2: Int, pronoun: String) {
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenPresSimp(pronounRand: Int, verbRand: Int, ob2: Int, pronoun: String) {
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func GenPastSimp() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbsPastTense.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[0] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPersonPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[0] + verbsSpanishFirstPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[1] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPersonSingularPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[1] + verbsSpanishSecondPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[2] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPersonSingularPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[2] + verbsSpanishThirdPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[3] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPersonSingularPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[3] + verbsSpanishThirdPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[4] + verbsSpanishFirstPersonPluralPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[4] + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[5] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[5] + verbsSpanishThirdPersonPluralPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func GenPastSimp(pronounRand: Int, verbRand: Int, ob2: Int, pronoun: String) {
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[0] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPersonPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[1] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPersonSingularPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[2] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPersonSingularPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[3] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPersonSingularPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[4] + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gene2 = subjectsEnglish[5] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralPast[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenPresSimpPhrasalVerbs() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<phrasalVerbs.count)
        let ob2 = Int.random(in: 0..<phrasalVerbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        let taggedVerb = phrasalVerbs[verbRand]
        let taggedVerb3 = phrasalVerbsThirdPerson[verbRand]

        if taggedVerb.starts(with: "U") {
            let verb = taggedVerb.trimmingCharacters(in: .whitespaces).dropFirst()
            let verb3 = taggedVerb3.trimmingCharacters(in: .whitespaces).dropFirst()
            switch pronoun {
            case "I ":
                gene = subjectsEnglish[0] + verb + " " + phrasalVerbObjects[verbRand][ob2]
                gens = subjectsSpanish[0] + phrasalVerbsSpanishFirstPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "You ":
                gene = subjectsEnglish[1] + verb + " " + phrasalVerbObjects[verbRand][ob2]
                gens = subjectsSpanish[1] + phrasalVerbsSpanishSecondPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "He ":
                gene = subjectsEnglish[2] + verb3 + " " + phrasalVerbObjects[verbRand][ob2]
                gens = subjectsSpanish[2] + phrasalVerbsSpanishThirdPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "She ":
                gene = subjectsEnglish[3] + verb3 + " " + phrasalVerbObjects[verbRand][ob2]
                gens = subjectsSpanish[3] + phrasalVerbsSpanishThirdPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "We ":
                gens = subjectsSpanish[4] + phrasalVerbsSpanishFirstPersonPlural[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
                gene = subjectsEnglish[4] + verb + " " + phrasalVerbObjects[verbRand][ob2]
            case "They ":
                gene = subjectsEnglish[5] + verb + " " + phrasalVerbObjects[verbRand][ob2]
                gens = subjectsSpanish[5] + phrasalVerbsSpanishThirdPersonPlural[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            default:
                break
            }
        } else {
            let parts = taggedVerb.trimmingCharacters(in: .whitespaces).split(separator: " ")
            let parts3 = taggedVerb3.trimmingCharacters(in: .whitespaces).split(separator: " ")
            let verb = String(parts[0])
            let particle = String(parts[1])
            let verb3 = String(parts3[0])
            let particle3 = String(parts3[1])

            switch pronoun {
            case "I ":
                gene = subjectsEnglish[0] + verb + " " + phrasalVerbObjects[verbRand][ob2] + particle
                gens = subjectsSpanish[0] + phrasalVerbsSpanishFirstPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "You ":
                gene = subjectsEnglish[1] + verb + " " + phrasalVerbObjects[verbRand][ob2] + particle
                gens = subjectsSpanish[1] + phrasalVerbsSpanishSecondPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "He ":
                gene = subjectsEnglish[2] + verb3 + " " + phrasalVerbObjects[verbRand][ob2] + particle3
                gens = subjectsSpanish[2] + phrasalVerbsSpanishThirdPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "She ":
                gene = subjectsEnglish[3] + verb3 + " " + phrasalVerbObjects[verbRand][ob2] + particle3
                gens = subjectsSpanish[3] + phrasalVerbsSpanishThirdPerson[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            case "We ":
                gens = subjectsSpanish[4] + phrasalVerbsSpanishFirstPersonPlural[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
                gene = subjectsEnglish[4] + verb + " " + phrasalVerbObjects[verbRand][ob2] + particle
            case "They ":
                gene = subjectsEnglish[5] + verb + " " + phrasalVerbObjects[verbRand][ob2] + particle
                gens = subjectsSpanish[5] + phrasalVerbsSpanishThirdPersonPlural[verbRand] + phrasalVerbObjectsSpanish[verbRand][ob2]
            default:
                break
            }
        }
    }

    func GenAlmost(almost: String, casi: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + almost + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + casi + verbsSpanishFirstPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + almost + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + casi + verbsSpanishSecondPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + almost + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + casi + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + almost + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + casi + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + casi + verbsSpanishFirstPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + almost + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + almost + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + casi + verbsSpanishThirdPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenPresSimpSubjunctive() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenPastSimpSubjunctive() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbsPastTense.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPersonPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + verbsPastTense[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralPastSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenPresSimpSubjunctive(modalEng: String, modalSp: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + modalSp + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + modalSp + verbsSpanishSecondPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + modalSp + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + modalSp + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + modalSp + verbsSpanishFirstPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + modalSp + verbsSpanishThirdPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenForTo() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = "for me to " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = "para que yo " + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = "for you to " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = "para que tú " + verbsSpanishSecondPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = "for him to " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = "para que él " + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = "for her to " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = "para que ella " + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = "para que nosotros " + verbsSpanishFirstPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = "for us to " + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = "for them to " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = "para que ellos " + verbsSpanishThirdPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func GenMay(modalEng: String, modalSp: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = modalSp + subjectsSpanish[0] + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = modalSp + subjectsSpanish[1] + verbsSpanishSecondPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = modalSp + subjectsSpanish[2] + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = modalSp + subjectsSpanish[3] + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = modalSp + subjectsSpanish[4] + verbsSpanishFirstPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = modalSp + subjectsSpanish[5] + verbsSpanishThirdPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func genPerfectTenses(eng1: String, eng2: String, sp1: String, sp2: String, sp3: String, sp4: String, sp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbsParticiple.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = "I "

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + eng1 + verbsParticiple[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + sp1 + verbsParticipleSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + eng1 + verbsParticiple[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + sp2 + verbsParticipleSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + eng2 + verbsParticiple[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + sp3 + verbsParticipleSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + eng2 + verbsParticiple[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + sp3 + verbsParticipleSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + eng1 + verbsParticipleSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + sp4 + verbs[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + eng1 + verbsParticiple[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + sp5 + verbsParticipleSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func genContTenses(eng1: String, eng2: String, eng3: String, sp1: String, sp2: String, sp3: String, sp4: String, sp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbsParticiple.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + eng1 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + sp1 + verbosConGerundio[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + eng2 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + sp2 + verbosConGerundio[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + eng3 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + sp3 + verbosConGerundio[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + eng3 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + sp3 + verbosConGerundio[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gens = subjectsSpanish[4] + sp4 + verbosConGerundio[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gene = subjectsEnglish[4] + eng2 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + eng2 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + sp5 + verbosConGerundio[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func genConj(conjunction: String, conector: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            gens = subjectsSpanish[0] + verbsSpanishFirstPerson[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
        case "You ":
            gene = subjectsEnglish[1] + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            gens = subjectsSpanish[1] + verbsSpanishSecondPerson[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
        case "He ":
            gene = subjectsEnglish[2] + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2] + conjunction
            gens = subjectsSpanish[2] + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
        case "She ":
            gene = subjectsEnglish[3] + verbsThirdPerson[verbRand] + verbObjects[verbRand][ob2] + conjunction
            gens = subjectsSpanish[3] + verbsSpanishThirdPerson[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
        case "We ":
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            gene = subjectsEnglish[4] + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
        case "They ":
            gene = subjectsEnglish[5] + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPlural[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
        default:
            break
        }
    }

    func genConjFuture(conjunction: String, conector: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        let rand = Int.random(in: 0..<2)

        if rand == 0 {
            switch pronoun {
            case "I ":
                gene = subjectsEnglish[0] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[0] + verbsSpanishFirstPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "You ":
                gene = subjectsEnglish[1] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[1] + verbsSpanishSecondPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "He ":
                gene = subjectsEnglish[2] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[2] + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "She ":
                gene = subjectsEnglish[3] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[3] + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "We ":
                gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
                gene = subjectsEnglish[4] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            case "They ":
                gene = subjectsEnglish[5] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            default:
                break
            }
        } else {
            switch pronoun {
            case "I ":
                gene = subjectsEnglish[0] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[0] + "no " + verbsSpanishFirstPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "You ":
                gene = subjectsEnglish[1] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[1] + "no " + verbsSpanishSecondPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "He ":
                gene = subjectsEnglish[2] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[2] + "no " + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "She ":
                gene = subjectsEnglish[3] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[3] + "no " + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "We ":
                gens = subjectsSpanish[4] + "no " + verbsSpanishFirstPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
                gene = subjectsEnglish[4] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            case "They ":
                gene = subjectsEnglish[5] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[5] + "no " + verbsSpanishThirdPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            default:
                break
            }
        }
    }

    func genConjFuture2(conjunction: String, conector: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        let rand = 0

        if rand == 0 {
            switch pronoun {
            case "I ":
                gene = subjectsEnglish[0] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[0] + verbsSpanishFirstPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "You ":
                gene = subjectsEnglish[1] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[1] + verbsSpanishSecondPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "He ":
                gene = subjectsEnglish[2] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[2] + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "She ":
                gene = subjectsEnglish[3] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[3] + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "We ":
                gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
                gene = subjectsEnglish[4] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            case "They ":
                gene = subjectsEnglish[5] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            default:
                break
            }
        } else {
            switch pronoun {
            case "I ":
                gene = subjectsEnglish[0] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[0] + "no " + verbsSpanishFirstPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "You ":
                gene = subjectsEnglish[1] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[1] + "no " + verbsSpanishSecondPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "He ":
                gene = subjectsEnglish[2] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[2] + "no " + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "She ":
                gene = subjectsEnglish[3] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[3] + "no " + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            case "We ":
                gens = subjectsSpanish[4] + "no " + verbsSpanishFirstPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
                gene = subjectsEnglish[4] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
            case "They ":
                gene = subjectsEnglish[5] + "won't " + verbs[verbRand] + verbObjects[verbRand][ob2] + conjunction
                gens = subjectsSpanish[5] + "no " + verbsSpanishThirdPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2] + conector
            default:
                break
            }
        }
    }
    
    func genFuture() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishFirstPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishSecondPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishThirdPersonFuture[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + verbsSpanishFirstPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + "will " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishThirdPersonPluralFuture[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func genWould() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbsSpanishHypothetical.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + "would " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + verbsSpanishHypothetical[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[0] + verbsSpanishFirstPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + "would " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + verbsSpanishHypotheticalSecondPerson[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[1] + verbsSpanishSecondPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + "would " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + verbsSpanishHypothetical[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[2] + verbsSpanishThirdPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + "would " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + verbsSpanishHypothetical[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[3] + verbsSpanishThirdPersonSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + "would " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + verbsSpanishHypotheticalFirstPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[4] + verbsSpanishFirstPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + "would " + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + verbsSpanishHypotheticalThirdPlural[verbRand] + verbObjectsSpanish[verbRand][ob2]
            gens2 = subjectsSpanish[5] + verbsSpanishThirdPersonPluralSubjunctive[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func genPresSimpModals(modalEng: String, modalSp1: String, modalSp2: String, modalSp3: String, modalSp4: String, modalSp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + modalSp1 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + modalSp2 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + modalSp4 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + modalSp5 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func genHaveTo(modalEng: String, modalEng3: String, modalSp1: String, modalSp2: String, modalSp3: String, modalSp4: String, modalSp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + modalSp1 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + modalSp2 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng3 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng3 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + modalSp4 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + modalSp5 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func genGoingTo(modalEng1: String, modalEng2: String, modalEng3: String, modalSp1: String, modalSp2: String, modalSp3: String, modalSp4: String, modalSp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng1 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + modalSp1 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng2 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + modalSp2 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng3 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng3 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + modalEng2 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + modalSp4 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng2 + verbs[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + modalSp5 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }


    func genFeelLike(modalEng1: String, modalEng2: String, modalEng3: String, modalSp1: String, modalSp2: String, modalSp3: String, modalSp4: String, modalSp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng1 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + modalSp1 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng2 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + modalSp2 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng3 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng3 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + modalEng1 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + modalSp4 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng1 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + modalSp5 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }

    func genBeUsedTo(modalEng1: String, modalEng2: String, modalEng3: String, modalEng4: String, modalSp1: String, modalSp2: String, modalSp3: String, modalSp3f: String, modalSp4: String, modalSp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let ob2 = Int.random(in: 0..<verbObjects[verbRand].count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + modalEng1 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[0] + modalSp1 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "You ":
            gene = subjectsEnglish[1] + modalEng2 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[1] + modalSp2 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "He ":
            gene = subjectsEnglish[2] + modalEng3 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[2] + modalSp3 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "She ":
            gene = subjectsEnglish[3] + modalEng3 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[3] + modalSp3f + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "We ":
            gene = subjectsEnglish[4] + modalEng4 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[4] + modalSp4 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        case "They ":
            gene = subjectsEnglish[5] + modalEng4 + verbsIng[verbRand] + verbObjects[verbRand][ob2]
            gens = subjectsSpanish[5] + modalSp5 + verbsSpanish[verbRand] + verbObjectsSpanish[verbRand][ob2]
        default:
            break
        }
    }
    
    func GenPresSimpPrepasAdv(preposition: String, preposicion: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbsWithPrepositionsSecondPersonSingular.count)
        let pronoun = subjectsEnglish[pronounRand]
        
        switch pronoun {
        case "I ":
            gene = subjectsEnglish[0] + verbsWithPrepositions[verbRand] + preposition
            gens = subjectsSpanish[0] + verbsWithPrepositionsFirstPersonSingular[verbRand] + preposicion
        case "You ":
            gene = subjectsEnglish[1] + verbsWithPrepositions[verbRand] + preposition
            gens = subjectsSpanish[1] + verbsWithPrepositionsSecondPersonSingular[verbRand] + preposicion
        case "He ":
            gene = subjectsEnglish[2] + verbsWithPrepositionsThirdPerson[verbRand] + preposition
            gens = subjectsSpanish[2] + verbsWithPrepositionsThirdPersonSingular[verbRand] + preposicion
        case "She ":
            gene = subjectsEnglish[3] + verbsWithPrepositionsThirdPerson[verbRand] + preposition
            gens = subjectsSpanish[3] + verbsWithPrepositionsThirdPersonSingular[verbRand] + preposicion
        case "We ":
            gene = subjectsEnglish[4] + verbsWithPrepositions[verbRand] + preposition
            gens = subjectsSpanish[4] + verbsWithPrepositionsFirstPersonPlural[verbRand] + preposicion
        case "They ":
            gene = subjectsEnglish[5] + verbsWithPrepositions[verbRand] + preposition
            gens = subjectsSpanish[5] + verbsWithPrepositionsThirdPersonPlural[verbRand] + preposicion
        default:
            break
        }
    }

    func GenPresSimpAdverbs(adverb: String, adverbio: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = "\(subjectsEnglish[0])\(adverb)\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[0])\(adverbio)\(verbsSpanishFirstPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "You ":
            gene = "\(subjectsEnglish[1])\(adverb)\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[1])\(adverbio)\(verbsSpanishSecondPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "He ":
            gene = "\(subjectsEnglish[2])\(adverb)\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[2])\(adverbio)\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "She ":
            gene = "\(subjectsEnglish[3])\(adverb)\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[3])\(adverbio)\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "We ":
            gene = "\(subjectsEnglish[4])\(adverb)\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[4])\(adverbio)\(verbsSpanishFirstPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "They ":
            gene = "\(subjectsEnglish[5])\(adverb)\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(subjectsSpanish[5])\(adverbio)\(verbsSpanishThirdPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        default:
            break
        }
    }

    func GenPresSimpAdverbs2(adverb: String, adverbio: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        if adverb != "together " {
            switch pronoun {
            case "I ":
                gene = "\(subjectsEnglish[0])\(verbs[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
                gens = "\(subjectsSpanish[0])\(verbsSpanishFirstPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
            case "You ":
                gene = "\(subjectsEnglish[1])\(verbs[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
                gens = "\(subjectsSpanish[1])\(verbsSpanishSecondPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
            case "He ":
                gene = "\(subjectsEnglish[2])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
                gens = "\(subjectsSpanish[2])\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
            case "She ":
                gene = "\(subjectsEnglish[3])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
                gens = "\(subjectsSpanish[3])\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
            case "We ":
                gene = "\(subjectsEnglish[4])\(verbs[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
                gens = "\(subjectsSpanish[4])\(verbsSpanishFirstPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
            case "They ":
                gene = "\(subjectsEnglish[5])\(verbs[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
                gens = "\(subjectsSpanish[5])\(verbsSpanishThirdPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
            default:
                break
            }
        } else {
            gene = "they \(verbs[verbRand])\(verbObjects[verbRand][ob2])\(adverb)"
            gens = "ellos \(verbsSpanishThirdPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
        }
    }

    func GenPresSimpAdverbs2NoObject(adverb: String, adverbio: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let pronoun = subjectsEnglish[pronounRand]
        
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)


        if adverb != "together " {
            switch pronoun {
            case "I ":
                gene = "\(subjectsEnglish[0])\(verbs[verbRand])\(adverb)"
                gens = "\(subjectsSpanish[0])\(verbsSpanishFirstPerson[verbRand])\(adverbio)"
            case "You ":
                gene = "\(subjectsEnglish[1])\(verbs[verbRand])\(adverb)"
                gens = "\(subjectsSpanish[1])\(verbsSpanishSecondPerson[verbRand])\(adverbio)"
            case "He ":
                gene = "\(subjectsEnglish[2])\(verbsThirdPerson[verbRand])\(adverb)"
                gens = "\(subjectsSpanish[2])\(verbsSpanishThirdPerson[verbRand])\(adverbio)"
            case "She ":
                gene = "\(subjectsEnglish[3])\(verbsThirdPerson[verbRand])\(adverb)"
                gens = "\(subjectsSpanish[3])\(verbsSpanishThirdPerson[verbRand])\(adverbio)"
            case "We ":
                gene = "\(subjectsEnglish[4])\(verbs[verbRand])\(adverb)"
                gens = "\(subjectsSpanish[4])\(verbsSpanishFirstPersonPlural[verbRand])\(adverbio)"
            case "They ":
                gene = "\(subjectsEnglish[5])\(verbs[verbRand])\(adverb)"
                gens = "\(subjectsSpanish[5])\(verbsSpanishThirdPersonPlural[verbRand])\(adverbio)"
            default:
                break
            }
        } else {
            gene = "they \(verbs[verbRand])\(verbObjects[objRand][ob2])\(adverb)"
            gens = "ellos \(verbsSpanishThirdPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])\(adverbio)"
        }
    }

    func GenPresSimpAdverbs3(adverb: String, adverbio: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = "\(adverb)\(subjectsEnglish[0])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(adverbio)\(subjectsSpanish[0])\(verbsSpanishFirstPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "You ":
            gene = "\(adverb)\(subjectsEnglish[1])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(adverbio)\(subjectsSpanish[1])\(verbsSpanishSecondPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "He ":
            gene = "\(adverb)\(subjectsEnglish[2])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(adverbio)\(subjectsSpanish[2])\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "She ":
            gene = "\(adverb)\(subjectsEnglish[3])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(adverbio)\(subjectsSpanish[3])\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "We ":
            gene = "\(adverb)\(subjectsEnglish[4])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(adverbio)\(subjectsSpanish[4])\(verbsSpanishFirstPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "They ":
            gene = "\(adverb)\(subjectsEnglish[5])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(adverbio)\(subjectsSpanish[5])\(verbsSpanishThirdPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        default:
            break
        }
    }

    func GenIntPorSujeto() {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = "\(subjectsEnglish[0])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gene2 = "."
            gens = "\(verbsSpanishFirstPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "You ":
            gene = "\(subjectsEnglish[1])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gene2 = "."
            gens = "\(verbsSpanishSecondPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "He ":
            gene = "\(subjectsEnglish[2])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gene2 = "\(subjectsEnglish[3])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "She ":
            gene = "\(subjectsEnglish[3])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gene2 = "\(subjectsEnglish[2])\(verbsThirdPerson[verbRand])\(verbObjects[verbRand][ob2])"
            gens = "\(verbsSpanishThirdPerson[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        case "We ":
            gens = "\(verbsSpanishFirstPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
            gene = "\(subjectsEnglish[4])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gene2 = "."
        case "They ":
            gene = "\(subjectsEnglish[5])\(verbs[verbRand])\(verbObjects[verbRand][ob2])"
            gene2 = "."
            gens = "\(verbsSpanishThirdPersonPlural[verbRand])\(verbObjectsSpanish[verbRand][ob2])"
        default:
            break
        }
    }

    func GenPresSimp(pronounparm: String, verbpos: Int) {
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = pronounparm

        switch pronoun {
        case "I ":
            gene = "\(subjectsEnglish[0])\(verbs[verbpos])\(verbObjects[verbpos][ob2])"
            gens = "\(subjectsSpanish[0])\(verbsSpanishFirstPerson[verbpos])\(verbObjectsSpanish[verbpos][ob2])"
        case "You ":
            gene = "\(subjectsEnglish[1])\(verbs[verbpos])\(verbObjects[verbpos][ob2])"
            gens = "\(subjectsSpanish[1])\(verbsSpanishSecondPerson[verbpos])\(verbObjectsSpanish[verbpos][ob2])"
        case "He ":
            gene = "\(subjectsEnglish[2])\(verbsThirdPerson[verbpos])\(verbObjects[verbpos][ob2])"
            gens = "\(subjectsSpanish[2])\(verbsSpanishThirdPerson[verbpos])\(verbObjectsSpanish[verbpos][ob2])"
        case "She ":
            gene = "\(subjectsEnglish[3])\(verbsThirdPerson[verbpos])\(verbObjects[verbpos][ob2])"
            gens = "\(subjectsSpanish[3])\(verbsSpanishThirdPerson[verbpos])\(verbObjectsSpanish[verbpos][ob2])"
        case "We ":
            gens = "\(subjectsSpanish[4])\(verbsSpanishFirstPersonPlural[verbpos])\(verbObjectsSpanish[verbpos][ob2])"
            gene = "\(subjectsEnglish[4])\(verbs[verbpos])\(verbObjects[verbpos][ob2])"
        case "They ":
            gene = "\(subjectsEnglish[5])\(verbs[verbpos])\(verbObjects[verbpos][ob2])"
            gens = "\(subjectsSpanish[5])\(verbsSpanishThirdPersonPlural[verbpos])\(verbObjectsSpanish[verbpos][ob2])"
        default:
            break
        }
    }

    func genVerbAndObject(object: String, objeto: String) {
        let r = Int.random(in: 0..<verbsSpanishThirdPerson.count)
        let ob2 = Int.random(in: 0..<verbObjects[r].count)

        if object == "the news " {
            gens = "\(objeto)\(verbsSpanishThirdPersonPlural[r])\(verbObjectsSpanish[r][ob2])"
            gene = "\(object)\(verbs[r])\(verbObjects[r][ob2])"
        } else if object == "the people " {
            gens = "\(objeto)\(verbsSpanishThirdPerson[r])\(verbObjectsSpanish[r][ob2])"
            gene = "\(object)\(verbs[r])\(verbObjects[r][ob2])"
        } else {
            gens = "\(objeto)\(verbsSpanishThirdPerson[r])\(verbObjectsSpanish[r][ob2])"
            gene = "\(object)\(verbsThirdPerson[r])\(verbObjects[r][ob2])"
        }
    }
    
    func genUsedToPastImp(modalEng: String, modalSp1: String, modalSp2: String, modalSp3: String, modalSp4: String, modalSp5: String) {
        let pronounRand = Int.random(in: 0..<subjectsEnglish.count)
        let verbRand = Int.random(in: 0..<verbs.count)
        let objRand = Int.random(in: 0..<verbObjects.count)
        let ob2 = Int.random(in: 0..<verbObjects[objRand].count)
        let pronoun = subjectsEnglish[pronounRand]

        switch pronoun {
        case "I ":
            gene = "\(subjectsEnglish[0])\(modalEng) \(verbs[verbRand]) \(verbObjects[objRand][ob2])"
            gens = "\(subjectsSpanish[0])\(modalSp1) \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
            gens2 = "\(subjectsSpanish[0])used to \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
        case "You ":
            gene = "\(subjectsEnglish[1])\(modalEng) \(verbs[verbRand]) \(verbObjects[objRand][ob2])"
            gens = "\(subjectsSpanish[1])\(modalSp2) \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
            gens2 = "\(subjectsSpanish[1])used to \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
        case "He ", "She ":
            gene = "\(subjectsEnglish[pronounRand])\(modalEng) \(verbs[verbRand]) \(verbObjects[objRand][ob2])"
            gens = "\(subjectsSpanish[pronounRand])\(modalSp3) \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
            gens2 = "\(subjectsSpanish[pronounRand])used to \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
        case "We ":
            gene = "\(subjectsEnglish[4])\(modalEng) \(verbs[verbRand]) \(verbObjects[objRand][ob2])"
            gens = "\(subjectsSpanish[4])\(modalSp4) \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
            gens2 = "\(subjectsSpanish[4])used to \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
        case "They ":
            gene = "\(subjectsEnglish[5])\(modalEng) \(verbs[verbRand]) \(verbObjects[objRand][ob2])"
            gens = "\(subjectsSpanish[5])\(modalSp5) \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
            gens2 = "\(subjectsSpanish[5])used to \(verbsSpanish[verbRand]) \(verbObjectsSpanish[objRand][ob2])"
        default:
            break
        }
    }
    
    //DATA
    
    let subjectsSpanish = ["Yo ", "Tú ", "Él ", "Ella ", "Nosotros ", "Ellos "]
    
    let verbs = [
        "have ", "do ", "say ", "go ", "get ",
        "make ", "know ", "think ", "see ", "take ",
        "come ", "want ", "look ", "use ", "find ",
        "give ", "tell ", "work ", "call ", "try ",
        "ask ", "need ", "feel ", "become ", "leave ",
        "put ", "mean ",
        "let ", "keep ", "begin ", "seem ", "talk ",
        "turn ", "help ", "start ", "show ", "hear ",
        "run ", "play ", "move ", "like ",
        "believe ", "hold ", "live ",
        "bring ", "write ", "provide ", "sit ", "stand ",
        "lose ", "meet ", "pay ", "include ",
        "continue ", "change ", "set ", "lead ",
        "learn ", "understand ", "watch ", "follow ",
        "stop ", "speak ", "create ", "allow ",
        "read ", "spend ", "add ", "grow ", "open ",
        "walk ", "offer ", "remember ", "win ",
        "appear ", "consider ", "love ", "buy ",
        "wait ", "die ", "send ", "expect ", "serve ",
        "stay ", "build ", "fall ", "cut ", "kill ",
        "reach ", "remain ", "suggest ",
        "raise ", "pass ", "sell ", "require ",
        "decide ", "report ", "return ", "pull ",
        "explain ", "carry ", "develop ", "hope ",
        "drive ", "break "
    ]
    
    let verbsParticipleSpanish = [
        "tenido ", "hecho ", "dicho ", "ido ",
        "obtenido ",
        "hecho ", "conocido ", "pensado ", "visto ", "tomado ",
        "venido ", "querido ", "mirado ", "usado ", "encontrado ",
        "dado ", "contado ", "trabajado ", "llamado ", "intentado ",
        "preguntado ", "necesitado ", "sentido ", "convertido ", "dejado ",
        "puesto ", "referido a ",
        "dejado ", "mantenido ", "comenzado ", "parecido ", "hablado ",
        "girado ", "ayudado ", "empezado ", "mostrado ", "oído ",
        "corrido ", "jugado ", "movido ", "gustado ",
        "creído ", "sostenido ", "vivido ",
        "traído ", "escrito ", "proporcionado ", "sentado ", "estado de pie ",
        "perdido ", "encontrado ", "pagado ", "incluido ",
        "continuado ", "cambiado ", "puesto ", "liderado ",
        "aprendido ", "entendido ", "visto ", "seguido ",
        "dejado de ", "hablado ", "creado ", "permitido ",
        "leído ", "gastado ", "añadido ", "crecido ", "abierto ",
        "caminado ", "ofrecido ", "recordado ", "ganado ",
        "aparecido ", "considerado ", "amado ", "comprado ",
        "esperado ", "muerto ", "enviado ", "esperado ", "servido ",
        "quedado ", "construido ", "caído ", "cortado ", "matado ",
        "alcanzado ", "permanecido ", "sugerido ",
        "elevado ", "pasado ", "vendido ", "requerido ",
        "decidido ", "informado ", "devuelto ", "tirado ",
        "explicado ", "llevado ", "desarrollado ", "esperado ",
        "conducido ", "roto "
    ]
    
    let verbsPastTense = [
        "had ", "did ", "said ", "went ", "got ",
        "made ", "knew ", "thought ", "saw ", "took ",
        "came ", "wanted ", "looked ", "used ", "found ",
        "gave ", "told ", "worked ", "called ", "tried ",
        "asked ", "needed ", "felt ", "became ", "left ",
        "put ", "meant ",
        "let ", "kept ", "began ", "seemed ", "talked ",
        "turned ", "helped ", "started ", "showed ", "heard ",
        "ran ", "played ", "moved ", "liked ",
        "believed ", "held ", "lived ",
        "brought ", "wrote ", "provided ", "sat ", "stood ",
        "lost ", "met ", "paid ", "included ",
        "continued ", "changed ", "set ", "led ",
        "learned ", "understood ", "watched ", "followed ",
        "stopped ", "spoke ", "created ", "allowed ",
        "read ", "spent ", "added ", "grew ", "opened ",
        "walked ", "offered ", "remembered ", "won ",
        "appeared ", "considered ", "loved ", "bought ",
        "waited ", "died ", "sent ", "expected ", "served ",
        "stayed ", "built ", "fell ", "cut ", "killed ",
        "reached ", "remained ", "suggested ",
        "raised ", "passed ", "sold ", "required ",
        "decided ", "reported ", "returned ", "pulled ",
        "explained ", "carried ", "developed ", "hoped ",
        "drove ", "broke "
    ]
    
    let verbsIng = [
        "having ", "doing ", "saying ", "going ", "getting ",
        "making ", "knowing ", "thinking ", "seeing ", "taking ",
        "coming ", "wanting ", "looking ", "using ", "finding ",
        "giving ", "telling ", "working ", "calling ", "trying ",
        "asking ", "needing ", "feeling ", "becoming ", "leaving ",
        "putting ", "meaning ",
        "letting ", "keeping ", "beginning ", "seeming ", "talking ",
        "turning ", "helping ", "starting ", "showing ", "hearing ",
        "running ", "playing ", "moving ", "liking ",
        "believing ", "holding ", "living ",
        "bringing ", "writing ", "providing ", "sitting ", "standing ",
        "losing ", "meeting ", "paying ", "including ",
        "continuing ", "changing ", "setting ", "leading ",
        "learning ", "understanding ", "watching ", "following ",
        "stopping ", "speaking ", "creating ", "allowing ",
        "reading ", "spending ", "adding ", "growing ", "opening ",
        "walking ", "offering ", "remembering ", "winning ",
        "appearing ", "considering ", "loving ", "buying ",
        "waiting ", "dying ", "sending ", "expecting ", "serving ",
        "staying ", "building ", "falling ", "cutting ", "killing ",
        "reaching ", "remaining ", "suggesting ",
        "raising ", "passing ", "selling ", "requiring ",
        "deciding ", "reporting ", "returning ", "pulling ",
        "explaining ", "carrying ", "developing ", "hoping ",
        "driving ", "breaking "
    ]
    
    let verbosConGerundio = [
        "teniendo ", "haciendo ", "diciendo ", "yendo ", "obteniendo ",
        "haciendo ", "sabiendo ", "pensando ", "viendo ", "tomando ",
        "viniendo ", "queriendo ", "mirando ", "usando ", "encontrando ",
        "dando ", "diciendo ", "trabajando ", "llamando ", "intentando ",
        "preguntando ", "necesitando ", "sintiendo ", "convirtiéndose ", "dejando ",
        "poniendo ", "refireindo a ",
        "dejando ", "manteniendo ", "comenzando ", "pareciendo ", "hablando ",
        "girando ", "ayudando ", "empezando ", "mostrando ", "escuchando ",
        "corriendo ", "jugando ", "moviendo ", "gustando ",
        "creyendo ", "sosteniendo ", "viviendo ",
        "trayendo ", "escribiendo ", "proporcionando ", "sentándose ", "parándose ",
        "perdiendo ", "conociendo ", "pagando ", "incluyendo ",
        "continuando ", "cambiando ", "ajustando ", "liderando ",
        "aprendiendo ", "entendiendo ", "mirando ", "siguiendo ",
        "dejando de ", "hablando ", "creando ", "permitiendo ",
        "leyendo ", "gastando ", "añadiendo ", "creciendo ", "abriendo ",
        "caminando ", "ofreciendo ", "recordando ", "ganando ",
        "apareciendo ", "considerando ", "amando ", "comprando ",
        "esperando ", "muriendo ", "enviando ", "esperando ", "sirviendo ",
        "quedándose ", "construyendo ", "cayendo ", "cortando ", "matando ",
        "alcanzando ", "permaneciendo ", "sugiriendo ",
        "levantando ", "pasando ", "vendiendo ", "requiriendo ",
        "decidiendo ", "informando ", "volviendo ", "tirando ",
        "explicando ", "llevando ", "desarrollando ", "esperando ",
        "conduciendo ", "rompiendo "
    ]
    
    let verbsSpanish = [
        "tener ", "hacer ", "decir ", "ir ", "obtener ",
        "hacer ", "saber ", "pensar ", "ver ", "tomar ",
        "venir ", "querer ", "mirar ", "usar ", "encontrar ",
        "dar ", "decir ", "trabajar ", "llamar ", "intentar ",
        "preguntar ", "necesitar ", "sentir ", "convertirse en ", "dejar ",
        "poner ", "referir a ",
        "permitir ", "mantener ", "empezar ", "parecer ", "hablar ",
        "girar ", "ayudar ", "comenzar ", "mostrar ", "oír ",
        "correr ", "jugar ", "mover ", "gustar ",
        "creer ", "sostener ", "vivir ",
        "traer ", "escribir ", "proporcionar ", "sentar ", "estar de pie ",
        "perder ", "conocer ", "pagar ", "incluir ",
        "continuar ", "cambiar ", "poner ", "liderar ",
        "aprender ", "entender ", "mirar ", "seguir ",
        "dejar de ", "hablar ", "crear ", "permitir ",
        "leer ", "gastar ", "añadir ", "crecer ", "abrir ",
        "caminar ", "ofrecer ", "recordar ", "ganar ",
        "aparecer ", "considerar ", "amar ", "comprar ",
        "esperar ", "morir ", "enviar ", "esperar ", "servir ",
        "quedarse ", "construir ", "caer ", "cortar ", "matar ",
        "alcanzar ", "permanecer ", "sugerir ",
        "elevar ", "pasar ", "vender ", "requerir ",
        "decidir ", "informar ", "devolver ", "tirar ",
        "explicar ", "llevar ", "desarrollar ", "esperar ",
        "conducir ", "romper "
    ]
    
    let verbsSpanishHypotheticalSecondPerson = [
        "tendrías ", "harías ", "dirías ", "irías ", "obtendrías ",
        "harías ", "sabrías ", "pensarías ", "verías ", "tomarías ",
        "vendrías ", "querrías ", "mirarías ", "usarías ", "encontrarías ",
        "darías ", "dirías ", "trabajarías ", "llamarías ", "intentarías ",
        "preguntarías ", "necesitarías ", "sentirías ", "convertirías ", "dejarías ",
        "pondrías ", "referirías a ",
        "permitirías ", "mantendrías ", "empezarías ", "parecerías ", "hablarías ",
        "girarías ", "ayudarías ", "comenzarías ", "mostrarías ", "oirías ",
        "correrías ", "jugarías ", "moverías ", "gustarías ",
        "creerías ", "sostendrías ", "vivirías ",
        "traerías ", "escribirías ", "proporcionarías ", "sentarías ", "estarías de pie ",
        "perderías ", "conocerías ", "pagarías ", "incluirías ",
        "continuarías ", "cambiarías ", "pondrías ", "liderarías ",
        "aprenderías ", "entenderías ", "mirarías ", "seguirías ",
        "dejarías de ", "hablarías ", "crearías ", "permitirías ",
        "leerías ", "gastarías ", "añadirías ", "crecerías ", "abrirías ",
        "caminarías ", "ofrecerías ", "recordarías ", "ganarías ",
        "aparecerías ", "considerarías ", "amarías ", "comprarías ",
        "esperarías ", "morirías ", "enviarías ", "esperarías ", "servirías ",
        "quedarías ", "construirías ", "caerías ", "cortarías ", "matarías ",
        "alcanzarías ", "permanecerías ", "sugerirías ",
        "elevarías ", "pasarías ", "venderías ", "requerirías ",
        "decidirías ", "informarías ", "devolverías ", "tirarías ",
        "explicarías ", "llevarías ", "desarrollarías ", "esperarías ",
        "conducirías ", "romperías "
    ]
    
    let verbsSpanishHypothetical = [
        "tendría ", "haría ", "diría ", "iría ", "obtendría ",
        "haría ", "sabría ", "pensaría ", "vería ", "tomaría ",
        "vendría ", "querría ", "miraría ", "usaría ", "encontraría ",
        "daría ", "diría ", "trabajaría ", "llamaría ", "intentaría ",
        "preguntaría ", "necesitaría ", "sentiría ", "convertiría ", "dejaría ",
        "pondría ", "referiría a ",
        "permitiría ", "mantendría ", "empezaría ", "parecería ", "hablaría ",
        "giraría ", "ayudaría ", "comenzaría ", "mostraría ", "oiría ",
        "correría ", "jugaría ", "movería ", "gustaría ",
        "creería ", "sostendría ", "viviría ",
        "traería ", "escribiría ", "proporcionaría ", "sentaría ", "estaría de pie ",
        "perdería ", "conocería ", "pagaría ", "incluiría ",
        "continuaría ", "cambiaría ", "pondría ", "lideraría ",
        "aprendería ", "entendería ", "miraría ", "seguiría ",
        "dejaría de ", "hablaría ", "crearía ", "permitiría ",
        "leería ", "gastaría ", "añadiría ", "crecería ", "abriría ",
        "caminaría ", "ofrecería ", "recordaría ", "ganaría ",
        "aparecería ", "consideraría ", "amaría ", "compraría ",
        "esperaría ", "moriría ", "enviaría ", "esperaría ", "serviría ",
        "quedaría ", "construiría ", "caería ", "cortaría ", "mataría ",
        "alcanzaría ", "permanecería ", "sugeriría ",
        "elevaría ", "pasaría ", "vendería ", "requeriría ",
        "decidiría ", "informaría ", "devolvería ", "tiraría ",
        "explicaría ", "llevaría ", "desarrollaría ", "esperaría ",
        "conduciría ", "rompería "
    ]
    
    let verbsSpanishHypotheticalThirdPlural = [
        "tendrían ", "harían ", "dirían ", "irían ", "obtendrían ",
        "harían ", "sabrían ", "pensarían ", "verían ", "tomarían ",
        "vendrían ", "querrían ", "mirarían ", "usarían ", "encontrarían ",
        "darían ", "dirían ", "trabajarían ", "llamarían ", "intentarían ",
        "preguntarían ", "necesitarían ", "sentirían ", "convertirían ", "dejarían ",
        "pondrían ", "referirían a ",
        "permitirían ", "mantendrían ", "empezarían ", "parecerían ", "hablarían ",
        "girarían ", "ayudarían ", "comenzarían ", "mostrarían ", "oirían ",
        "correrían ", "jugarían ", "moverían ", "gustarían ",
        "creerían ", "sostendrían ", "vivirían ",
        "traerían ", "escribirían ", "proporcionarían ", "sentarían ", "estarían de pie ",
        "perderían ", "conocerían ", "pagarían ", "incluirían ",
        "continuarían ", "cambiarían ", "pondrían ", "liderarían ",
        "aprenderían ", "entenderían ", "mirarían ", "seguirían ",
        "dejarían de ", "hablarían ", "crearían ", "permitirían ",
        "leerían ", "gastarían ", "añadirían ", "crecerían ", "abrirían ",
        "caminarían ", "ofrecerían ", "recordarían ", "ganarían ",
        "aparecerían ", "considerarían ", "amarían ", "comprarían ",
        "esperarían ", "morirían ", "enviarían ", "esperarían ", "servirían ",
        "quedarían ", "construirían ", "caerían ", "cortarían ", "matarían ",
        "alcanzarían ", "permanecerían ", "sugerirían ",
        "elevarían ", "pasarían ", "venderían ", "requerirían ",
        "decidirían ", "informarían ", "devolverían ", "tirarían ",
        "explicarían ", "llevarían ", "desarrollarían ", "esperarían ",
        "conducirían ", "romperían "
    ]
    
    let verbsSpanishHypotheticalFirstPlural = [
        "tendríamos ", "haríamos ", "diríamos ", "iríamos ", "obtendríamos ",
        "haríamos ", "sabríamos ", "pensaríamos ", "veríamos ", "tomaríamos ",
        "vendríamos ", "querríamos ", "miraríamos ", "usaríamos ", "encontraríamos ",
        "daríamos ", "diríamos ", "trabajaríamos ", "llamaríamos ", "intentaríamos ",
        "preguntaríamos ", "necesitaríamos ", "sentiríamos ", "convertiríamos ", "dejaríamos ",
        "pondríamos ", "referiríamos a ",
        "permitiríamos ", "mantendríamos ", "empezaríamos ", "pareceríamos ", "hablaríamos ",
        "giraríamos ", "ayudaríamos ", "comenzaríamos ", "mostraríamos ", "oiríamos ",
        "correríamos ", "jugaríamos ", "moveríamos ", "gustaríamos ",
        "creeríamos ", "sostendríamos ", "viviríamos ",
        "traeríamos ", "escribiríamos ", "proporcionaríamos ", "sentaríamos ", "estaríamos de pie ",
        "perderíamos ", "conoceríamos ", "pagaríamos ", "incluiríamos ",
        "continuaríamos ", "cambiaríamos ", "pondríamos ", "lideraríamos ",
        "aprenderíamos ", "entenderíamos ", "miraríamos ", "seguiríamos ",
        "dejaríamos de ", "hablaríamos ", "crearíamos ", "permitiríamos ",
        "leeríamos ", "gastaríamos ", "añadiríamos ", "creceríamos ", "abriríamos ",
        "caminaríamos ", "ofreceríamos ", "recordaríamos ", "ganaríamos ",
        "apareceríamos ", "consideraríamos ", "amaríamos ", "compraríamos ",
        "esperaríamos ", "moriríamos ", "enviaríamos ", "esperaríamos ", "serviríamos ",
        "quedaríamos ", "construiríamos ", "caeríamos ", "cortaríamos ", "mataríamos ",
        "alcanzaríamos ", "permaneceríamos ", "sugeriríamos ",
        "elevaríamos ", "pasaríamos ", "venderíamos ", "requeriríamos ",
        "decidiríamos ", "informaríamos ", "devolveríamos ", "tiraríamos ",
        "explicaríamos ", "llevaríamos ", "desarrollaríamos ", "esperaríamos ",
        "conduciríamos ", "romperíamos "
    ]
    
    let verbsParticiple = [
        "had ", "done ", "said ", "gone ",
        "gotten ",
        "made ", "known ", "thought ", "seen ", "taken ",
        "come ", "wanted ", "looked ", "used ", "found ",
        "given ", "told ", "worked ", "called ", "tried ",
        "asked ", "needed ", "felt ", "become ", "left ",
        "put ", "meant ",
        "let ", "kept ", "begun ", "seemed ", "talked ",
        "turned ", "helped ", "started ", "shown ", "heard ",
        "run ", "played ", "moved ", "liked ",
        "believed ", "held ", "lived ",
        "brought ", "written ", "provided ", "sat ", "stood ",
        "lost ", "met ", "paid ", "included ",
        "continued ", "changed ", "set ", "led ",
        "learned ", "understood ", "watched ", "followed ",
        "stopped ", "spoken ", "created ", "allowed ",
        "read ", "spent ", "added ", "grown ", "opened ",
        "walked ", "offered ", "remembered ", "won ",
        "appeared ", "considered ", "loved ", "bought ",
        "waited ", "died ", "sent ", "expected ", "served ",
        "stayed ", "built ", "fallen ", "cut ", "killed ",
        "reached ", "remained ", "suggested ",
        "raised ", "passed ", "sold ", "required ",
        "decided ", "reported ", "returned ", "pulled ",
        "explained ", "carried ", "developed ", "hoped ",
        "driven ", "broken "
    ]
    
    let verbsThirdPerson = [
        "has ", "does ", "says ", "goes ", "gets ", "makes ", "knows ", "thinks ", "sees ", "takes ", "comes ", "wants ", "looks ", "uses ", "finds ",
        "gives ", "tells ", "works ", "calls ",  "tries ", "asks ", "needs ", "feels ", "becomes ", "leaves ", "puts ", "means ",
        "lets ", "keeps ", "begins ", "seems ", "talks ", "turns ", "helps ", "starts ", "shows ", "hears ", "runs ", "plays ", "moves ", "likes ",
        "believes ", "holds ", "lives ",  "brings ", "writes ", "provides ", "sits ", "stands ", "loses ", "meets ", "pays ", "includes ",
        "continues ", "changes ", "sets ", "leads ", "learns ", "understands ", "watches ", "follows ", "stops ", "speaks ", "creates ", "allows ",
        "reads ", "spends ", "adds ", "grows ", "opens ", "walks ", "offers ", "remembers ", "wins ", "appears ", "considers ", "loves ", "buys ",
        "waits ", "dies ", "sends ", "expects ", "serves ", "stays ", "builds ", "falls ", "cuts ", "kills ", "reaches ", "remains ", "suggests ",
        "raises ", "passes ", "sells ", "requires ", "decides ", "reports ", "returns ", "pulls ", "explains ", "carries ", "develops ", "hopes ",
        "drives ", "breaks "
    ]
    
    let verbsSpanishFirstPersonPastImperfect = [
        "tenía ", // have (tener)
        "hacía ", // do (hacer)
        "decía ", // say (decir)
        "iba ", // go (ir)
        "obtenía ", // get (obtener)
        "hacía ", // make (hacer)
        "sabía ", // know (saber)
        "pensaba ", // think (pensar)
        "veía ", // see (ver)
        "tomaba ", // take (tomar)
        "venía ", // come (venir)
        "quería ", // want (querer)
        "miraba ", // look (mirar)
        "usaba ", // use (usar)
        "encontraba ", // find (encontrar)
        "daba ", // give (dar)
        "decía ", // tell (decir)
        "trabajaba ", // work (trabajar)
        "llamaba ", // call (llamar)
        "intentaba ", // try (intentar)
        "preguntaba ", // ask (preguntar)
        "necesitaba ", // need (necesitar)
        "sentía ", // feel (sentir)
        "me volvía ", // become (llegar a ser)
        "dejaba ", // leave (dejar)
        "ponía ", // put (poner)
        "me refería a ", // mean (significar)
        "dejaba ", // let (dejar)
        "mantenía ", // keep (mantener)
        "empezaba ", // begin (empezar)
        "parecía ", // seem (parecer)
        "hablaba ", // talk (hablar)
        "giraba ", // turn (girar)
        "ayudaba ", // help (ayudar)
        "empezaba ", // start (empezar)
        "mostraba ", // show (mostrar)
        "oía ", // hear (oir)
        "corría ", // run (correr)
        "jugaba ", // play (jugar)
        "movía ", // move (mover)
        "gustaba ", // like (gustar)
        "creía ", // believe (creer)
        "sostenía ", // hold (sostener)
        "vivía ", // live (vivir)
        "traía ", // bring (traer)
        "escribía ", // write (escribir)
        "proporcionaba ", // provide (proporcionar)
        "me sentaba ", // sit (sentarse)
        "estaba de pie ", // stand (estar de pie)
        "perdía ", // lose (perder)
        "me encontraba ", // meet (encontrar)
        "pagaba ", // pay (pagar)
        "incluía ", // include (incluir)
        "continuaba ", // continue (continuar)
        "cambiaba ", // change (cambiar)
        "ponía ", // set (poner)
        "lideraba ", // lead (liderar)
        "aprendía ", // learn (aprender)
        "entendía ", // understand (entender)
        "miraba ", // watch (mirar)
        "seguía ", // follow (seguir)
        "dejaba de ", // stop (detener)
        "hablaba ", // speak (hablar)
        "creaba ", // create (crear)
        "permitía ", // allow (permitir)
        "leía ", // read (leer)
        "gastaba ", // spend (gastar)
        "añadía ", // add (añadir)
        "crecía ", // grow (crecer)
        "abría ", // open (abrir)
        "caminaba ", // walk (caminar)
        "ofrecía ", // offer (ofrecer)
        "recordaba ", // remember (recordar)
        "ganaba ", // win (ganar)
        "aparecía ", // appear (aparecer)
        "consideraba ", // consider (considerar)
        "amaba ", // love (amar)
        "compraba ", // buy (comprar)
        "esperaba ", // wait (esperar)
        "moría ", // die (morir)
        "enviaba ", // send (enviar)
        "esperaba ", // expect (esperar)
        "servía ", // serve (servir)
        "me quedaba ", // stay (quedarse)
        "construía ", // build (construir)
        "caía ", // fall (caer)
        "cortaba ", // cut (cortar)
        "mataba ", // kill (matar)
        "alcanzaba ", // reach (alcanzar)
        "permanecía ", // remain (permanecer)
        "sugería ", // suggest (sugerir)
        "elevaba ", // raise (elevar)
        "pasaba ", // pass (pasar)
        "vendía ", // sell (vender)
        "requería ", // require (requerir)
        "decidía ", // decide (decidir)
        "informaba ", // report (informar)
        "me devolvía ", // return (volver)
        "tiraba ", // pull (tirar)
        "explicaba ", // explain (explicar)
        "llevaba ", // carry (llevar)
        "desarrollaba ", // develop (desarrollar)
        "esperaba ", // hope (esperar)
        "conducía ", // drive (conducir)
        "rompía " // break (romper)
    ]
    
    let verbsSpanishThirdPersonPluralPastImperfect = [
        "tenían ", // have (tener)
        "hacían ", // do (hacer)
        "decían ", // say (decir)
        "iban ", // go (ir)
        "obtenían ", // get (obtener)
        "hacían ", // make (hacer)
        "sabían ", // know (saber)
        "pensaban ", // think (pensar)
        "veían ", // see (ver)
        "tomaban ", // take (tomar)
        "venían ", // come (venir)
        "querían ", // want (querer)
        "miraban ", // look (mirar)
        "usaban ", // use (usar)
        "encontraban ", // find (encontrar)
        "daban ", // give (dar)
        "decían ", // tell (decir)
        "trabajaban ", // work (trabajar)
        "llamaban ", // call (llamar)
        "intentaban ", // try (intentar)
        "preguntaban ", // ask (preguntar)
        "necesitaban ", // need (necesitar)
        "sentían ", // feel (sentir)
        "se volvían ", // become (llegar a ser)
        "dejaban ", // leave (dejar)
        "ponían ", // put (poner)
        "se referían a ", // mean (significar)
        "dejaban ", // let (dejar)
        "mantenían ", // keep (mantener)
        "empezaban ", // begin (empezar)
        "parecían ", // seem (parecer)
        "hablaban ", // talk (hablar)
        "giraban ", // turn (girar)
        "ayudaban ", // help (ayudar)
        "empezaban ", // start (empezar)
        "mostraban ", // show (mostrar)
        "oían ", // hear (oir)
        "corrían ", // run (correr)
        "jugaban ", // play (jugar)
        "movían ", // move (mover)
        "gustaban ", // like (gustar)
        "creían ", // believe (creer)
        "sostenían ", // hold (sostener)
        "vivían ", // live (vivir)
        "traían ", // bring (traer)
        "escribían ", // write (escribir)
        "proporcionaban ", // provide (proporcionar)
        "se sentaban ", // sit (sentarse)
        "estaban de pie ", // stand (estar de pie)
        "perdían ", // lose (perder)
        "se encontraban ", // meet (encontrar)
        "pagaban ", // pay (pagar)
        "incluían ", // include (incluir)
        "continuaban ", // continue (continuar)
        "cambiaban ", // change (cambiar)
        "ponían ", // set (poner)
        "lideraban ", // lead (liderar)
        "aprendían ", // learn (aprender)
        "entendían ", // understand (entender)
        "miraban ", // watch (mirar)
        "seguían ", // follow (seguir)
        "dejaban de ", // stop (detener)
        "hablaban ", // speak (hablar)
        "creaban ", // create (crear)
        "permitían ", // allow (permitir)
        "leían ", // read (leer)
        "gastaban ", // spend (gastar)
        "añadían ", // add (añadir)
        "crecían ", // grow (crecer)
        "abrían ", // open (abrir)
        "caminaban ", // walk (caminar)
        "ofrecían ", // offer (ofrecer)
        "recordaban ", // remember (recordar)
        "ganaban ", // win (ganar)
        "aparecían ", // appear (aparecer)
        "consideraban ", // consider (considerar)
        "amaban ", // love (amar)
        "compraban ", // buy (comprar)
        "esperaban ", // wait (esperar)
        "morían ", // die (morir)
        "enviaban ", // send (enviar)
        "esperaban ", // expect (esperar)
        "servían ", // serve (servir)
        "se quedaban ", // stay (quedarse)
        "construían ", // build (construir)
        "caían ", // fall (caer)
        "cortaban ", // cut (cortar)
        "mataban ", // kill (matar)
        "alcanzaban ", // reach (alcanzar)
        "permanecían ", // remain (permanecer)
        "sugerían ", // suggest (sugerir)
        "elevaban ", // raise (elevar)
        "pasaban ", // pass (pasar)
        "vendían ", // sell (vender)
        "requerían ", // require (requerir)
        "decidían ", // decide (decidir)
        "informaban ", // report (informar)
        "se devolvían ", // return (volver)
        "tiraban ", // pull (tirar)
        "explicaban ", // explain (explicar)
        "llevaban ", // carry (llevar)
        "desarrollaban ", // develop (desarrollar)
        "esperaban ", // hope (esperar)
        "conducían ", // drive (conducir)
        "rompían " // break (romper)
    ]
    
    let verbsSpanishFirstPersonPluralPastImperfect = [
        "teníamos ", // have (tener)
        "hacíamos ", // do (hacer)
        "decíamos ", // say (decir)
        "íbamos ", // go (ir)
        "obteníamos ", // get (obtener)
        "hacíamos ", // make (hacer)
        "sabíamos ", // know (saber)
        "pensábamos ", // think (pensar)
        "veíamos ", // see (ver)
        "tomábamos ", // take (tomar)
        "veníamos ", // come (venir)
        "queríamos ", // want (querer)
        "mirábamos ", // look (mirar)
        "usábamos ", // use (usar)
        "encontrábamos ", // find (encontrar)
        "dábamos ", // give (dar)
        "decíamos ", // tell (decir)
        "trabajábamos ", // work (trabajar)
        "llamábamos ", // call (llamar)
        "intentábamos ", // try (intentar)
        "preguntábamos ", // ask (preguntar)
        "necesitábamos ", // need (necesitar)
        "sentíamos ", // feel (sentir)
        "nos volvíamos ", // become (llegar a ser)
        "dejábamos ", // leave (dejar)
        "poníamos ", // put (poner)
        "nos referíamos a ", // mean (significar)
        "dejábamos ", // let (dejar)
        "manteníamos ", // keep (mantener)
        "empezábamos ", // begin (empezar)
        "parecíamos ", // seem (parecer)
        "hablábamos ", // talk (hablar)
        "girábamos ", // turn (girar)
        "ayudábamos ", // help (ayudar)
        "empezábamos ", // start (empezar)
        "mostrábamos ", // show (mostrar)
        "oíamos ", // hear (oir)
        "corríamos ", // run (correr)
        "jugábamos ", // play (jugar)
        "movíamos ", // move (mover)
        "gustábamos ", // like (gustar)
        "creíamos ", // believe (creer)
        "sosteníamos ", // hold (sostener)
        "vivíamos ", // live (vivir)
        "traíamos ", // bring (traer)
        "escribíamos ", // write (escribir)
        "proporcionábamos ", // provide (proporcionar)
        "nos sentábamos ", // sit (sentarse)
        "estábamos de pie ", // stand (estar de pie)
        "perdíamos ", // lose (perder)
        "nos encontrábamos ", // meet (encontrar)
        "pagábamos ", // pay (pagar)
        "incluíamos ", // include (incluir)
        "continuábamos ", // continue (continuar)
        "cambiábamos ", // change (cambiar)
        "poníamos ", // set (poner)
        "liderábamos ", // lead (liderar)
        "aprendíamos ", // learn (aprender)
        "entendíamos ", // understand (entender)
        "mirábamos ", // watch (mirar)
        "seguíamos ", // follow (seguir)
        "dejábamos de ", // stop (detener)
        "hablábamos ", // speak (hablar)
        "creábamos ", // create (crear)
        "permitíamos ", // allow (permitir)
        "leíamos ", // read (leer)
        "gastábamos ", // spend (gastar)
        "añadíamos ", // add (añadir)
        "crecíamos ", // grow (crecer)
        "abríamos ", // open (abrir)
        "caminábamos ", // walk (caminar)
        "ofrecíamos ", // offer (ofrecer)
        "recordábamos ", // remember (recordar)
        "ganábamos ", // win (ganar)
        "aparecíamos ", // appear (aparecer)
        "considerábamos ", // consider (considerar)
        "amábamos ", // love (amar)
        "comprábamos ", // buy (comprar)
        "esperábamos ", // wait (esperar)
        "moríamos ", // die (morir)
        "enviábamos ", // send (enviar)
        "esperábamos ", // expect (esperar)
        "servíamos ", // serve (servir)
        "nos quedábamos ", // stay (quedarse)
        "construíamos ", // build (construir)
        "caíamos ", // fall (caer)
        "cortábamos ", // cut (cortar)
        "matábamos ", // kill (matar)
        "alcanzábamos ", // reach (alcanzar)
        "permanecíamos ", // remain (permanecer)
        "sugeríamos ", // suggest (sugerir)
        "elevábamos ", // raise (elevar)
        "pasábamos ", // pass (pasar)
        "vendíamos ", // sell (vender)
        "requeríamos ", // require (requerir)
        "decidíamos ", // decide (decidir)
        "informábamos ", // report (informar)
        "nos devolvíamos ", // return (volver)
        "tirábamos ", // pull (tirar)
        "explicábamos ", // explain (explicar)
        "llevábamos ", // carry (llevar)
        "desarrollábamos ", // develop (desarrollar)
        "esperábamos ", // hope (esperar)
        "conducíamos ", // drive (conducir)
        "rompíamos " // break (romper)
    ]
    
    let verbsSpanishFirstPerson = [
        "tengo ", // have (tener)
        "hago ", // do (hacer)
        "digo ", // say (decir)
        "voy ", // go (ir)
        "obtengo ", // get (obtener)
        "hago ", // make (hacer)
        "sé ", // know (saber)
        "pienso ", // think (pensar)
        "veo ", // see (ver)
        "tomo ", // take (tomar)
        "vengo ", // come (venir)
        "quiero ", // want (querer)
        "miro ", // look (mirar)
        "uso ", // use (usar)
        "encuentro ", // find (encontrar)
        "doy ", // give (dar)
        "digo ", // tell (decir)
        "trabajo ", // work (trabajar)
        "llamo ", // call (llamar)
        "intento ", // try (intentar)
        "pregunto ", // ask (preguntar)
        "necesito ", // need (necesitar)
        "siento ", // feel (sentir)
        "me vuelvo ", // become (llegar a ser)
        "dejo ", // leave (dejar)
        "pongo ", // put (poner)
        "me refiero a ", // mean (significar)
        "dejo ", // let (dejar)
        "mantengo ", // keep (mantener)
        "empiezo ", // begin (empezar)
        "parezco ", // seem (parecer)
        "hablo ", // talk (hablar)
        "giro ", // turn (girar)
        "ayudo ", // help (ayudar)
        "empiezo ", // start (empezar)
        "muestro ", // show (mostrar)
        "oigo ", // hear (oir)
        "corro ", // run (correr)
        "juego ", // play (jugar)
        "muevo ", // move (mover)
        "gusto ", // like (gustar)
        "creo ", // believe (creer)
        "sostengo ", // hold (sostener)
        "vivo ", // live (vivir)
        "traigo ", // bring (traer)
        "escribo ", // write (escribir)
        "proporciono ", // provide (proporcionar)
        "me siento ", // sit (sentarse)
        "estoy de pie ", // stand (estar de pie)
        "pierdo ", // lose (perder)
        "me encuentro ", // meet (encontrar)
        "pago ", // pay (pagar)
        "incluyo ", // include (incluir)
        "continúo ", // continue (continuar)
        "cambio ", // change (cambiar)
        "pongo ", // set (poner)
        "lidero ", // lead (liderar)
        "aprendo ", // learn (aprender)
        "entiendo ", // understand (entender)
        "miro ", // watch (mirar)
        "sigo ", // follow (seguir)
        "dejo de ", // stop (detener)
        "hablo ", // speak (hablar)
        "creo ", // create (crear)
        "permito ", // allow (permitir)
        "leo ", // read (leer)
        "gasto ", // spend (gastar)
        "añado ", // add (añadir)
        "crezco ", // grow (crecer)
        "abro ", // open (abrir)
        "camino ", // walk (caminar)
        "ofrezco ", // offer (ofrecer)
        "recuerdo ", // remember (recordar)
        "gano ", // win (ganar)
        "aparezco ", // appear (aparecer)
        "considero ", // consider (considerar)
        "amo ", // love (amar)
        "compro ", // buy (comprar)
        "espero ", // wait (esperar)
        "muero ", // die (morir)
        "envío ", // send (enviar)
        "espero ", // expect (esperar)
        "sirvo ", // serve (servir)
        "me quedo ", // stay (quedarse)
        "construyo ", // build (construir)
        "caigo ", // fall (caer)
        "corto ", // cut (cortar)
        "mato ", // kill (matar)
        "alcanzo ", // reach (alcanzar)
        "permanezco ", // remain (permanecer)
        "sugiero ", // suggest (sugerir)
        "elevo ", // raise (elevar)
        "paso ", // pass (pasar)
        "vendo ", // sell (vender)
        "requiero ", // require (requerir)
        "decido ", // decide (decidir)
        "informo ", // report (informar)
        "me devuelvo ", // return (volver)
        "tiro ", // pull (tirar)
        "explico ", // explain (explicar)
        "llevo ", // carry (llevar)
        "desarrollo ", // develop (desarrollar)
        "espero ", // hope (esperar)
        "conduzco ", // drive (conducir)
        "rompo " // break (romper)
    ]
    
    let verbsSpanishFirstPersonPast = [
        "tuve ", // tener
        "hice ", // hacer
        "dije ", // decir
        "fui ", // ir
        "obtuve ", // obtener
        "hice ", // hacer (repeated for "make")
        "supe ", // saber
        "pensé ", // pensar
        "vi ", // ver
        "tomé ", // tomar
        "vine ", // venir
        "quise ", // querer
        "miré ", // mirar
        "usé ", // usar
        "encontré ", // encontrar
        "di ", // dar
        "dije ", // decir (repeated for "tell")
        "trabajé ", // trabajar
        "llamé ", // llamar
        "intenté ", // intentar
        "pregunté ", // preguntar
        "necesité ", // necesitar
        "sentí ", // sentir
        "me volví ", // llegar a ser
        "dejé ", // dejar
        "puse ", // poner
        "me referí a ", // significar
        "dejé ", // dejar (repeated for "let")
        "mantuve ", // mantener
        "empecé ", // empezar
        "parecí ", // parecer
        "hablé ", // hablar
        "giré ", // girar
        "ayudé ", // ayudar
        "empecé ", // empezar (repeated for "start")
        "mostré ", // mostrar
        "oí ", // oir
        "corrí ", // correr
        "jugué ", // jugar
        "moví ", // mover
        "gusté ", // gustar
        "creí ", // creer
        "sostuve ", // sostener
        "viví ", // vivir
        "traje ", // traer
        "escribí ", // escribir
        "proporcioné ", // proporcionar
        "me senté ", // sentarse
        "estuve de pie ", // estar de pie
        "perdí ", // perder
        "encontré ", // encontrar (repeated for "meet")
        "pagué ", // pagar
        "incluí ", // incluir
        "continué ", // continuar
        "cambié ", // cambiar
        "puse ", // poner (repeated for "set")
        "lideré ", // liderar
        "aprendí ", // aprender
        "entendí ", // entender
        "miré ", // mirar (repeated for "watch")
        "seguí ", // seguir
        "dejé de ", // detener
        "hablé ", // hablar (repeated for "speak")
        "creé ", // crear
        "permití ", // permitir
        "leí ", // leer
        "gasté ", // gastar
        "añadí ", // añadir
        "crecí ", // crecer
        "abrí ", // abrir
        "caminé ", // caminar
        "ofrecí ", // ofrecer
        "recordé ", // recordar
        "gané ", // ganar
        "aparecí ", // aparecer
        "consideré ", // considerar
        "amé ", // amar
        "compré ", // comprar
        "esperé ", // esperar
        "morí ", // morir
        "envié ", // enviar
        "esperé ", // esperar (repeated for "expect")
        "serví ", // servir
        "me quedé ", // quedarse
        "construí ", // construir
        "caí ", // caer
        "corté ", // cortar
        "maté ", // matar
        "alcancé ", // alcanzar
        "permanecí ", // permanecer
        "sugerí ", // sugerir
        "elevé ", // elevar
        "pasé ", // pasar
        "vendí ", // vender
        "requerí ", // requerir
        "decidí ", // decidir
        "informé ", // informar
        "devolví ", // volver
        "tiré ", // tirar
        "expliqué ", // explicar
        "llevé ", // llevar
        "desarrollé ", // desarrollar
        "esperé ", // esperar (repeated for "hope")
        "conduje ", // conducir
        "rompí " // romper
    ]
    
    let verbsSpanishSecondPersonSingularPast = [
        "tuviste ", "hiciste ", "dijiste ", "fuiste ", "obtuviste ",
        "hiciste ", "supiste ", "pensaste ", "viste ", "tomaste ",
        "viniste ", "quisiste ", "miraste ", "usaste ", "encontraste ",
        "diste ", "dijiste ", "trabajaste ", "llamaste ", "intentaste ",
        "preguntaste ", "necesitaste ", "sentiste ", "te volviste ", "dejaste ",
        "pusiste ", "te referiste a ",
        "dejaste ", "mantuviste ", "empezaste ", "pareciste ", "hablaste ",
        "giraste ", "ayudaste ", "empezaste ", "mostraste ", "oíste ",
        "corriste ", "jugaste ", "moviste ", "gustaste ",
        "creíste ", "sostuviste ", "viviste ",
        "trajiste ", "escribiste ", "proporcionaste ", "te sentaste ",
        "estuviste de pie ", "perdiste ",
        "encontraste ", "pagaste ", "incluiste ", "continuaste ", "cambiaste ", "pusiste ", "lideraste ",
        "aprendiste ", "entendiste ", "miraste ", "seguiste ",
        "dejaste de ", "hablaste ", "creaste ", "permitiste ",
        "leíste ", "gastaste ", "añadiste ", "creciste ", "abriste ",
        "caminaste ", "ofreciste ", "recordaste ", "ganaste ",
        "apareciste ", "consideraste ", "amaste ", "compraste ",
        "esperaste ", "moriste ", "enviaste ", "esperaste ", "serviste ",
        "te quedaste ", "construiste ", "caíste ", "cortaste ", "mataste ",
        "alcanzaste ", "permaneciste ", "sugeriste ",
        "elevaste ", "pasaste ", "vendiste ", "requeriste ",
        "decidiste ", "informaste ", "devolviste ", "tiraste ",
        "explicaste ", "llevaste ", "desarrollaste ", "esperaste ", "condujiste ", "rompiste "
    ]
    
    let verbsSpanishThirdPersonSingularPast = [
        "tuvo ", "hizo ", "dijo ", "fue ", "obtuvo ",
        "hizo ", "supo ", "pensó ", "vio ", "tomó ",
        "vino ", "quiso ", "miró ", "usó ", "encontró ",
        "dio ", "dijo ", "trabajó ", "llamó ", "intentó ",
        "preguntó ", "necesitó ", "sintió ", "se volvió ", "dejó ",
        "puso ", "se refirío a ",
        "dejó ", "mantuvo ", "empezó ", "pareció ", "habló ",
        "giró ", "ayudó ", "empezó ", "mostró ", "oyó ",
        "corrió ", "jugó ", "movió ", "gustó ",
        "creyó ", "sostuvo ", "vivió ",
        "trajo ", "escribió ", "proporcionó ", "se sentó ",
        "estuvo de pie ", "perdió ",
        "encontró ", "pagó ", "incluyó ", "continuó ", "cambió ", "puso ", "lideró ",
        "aprendió ", "entendió ", "miró ", "siguió ",
        "dejó de ", "habló ", "creó ", "permitió ",
        "leyó ", "gastó ", "añadió ", "creció ", "abrió ",
        "caminó ", "ofreció ", "recordó ", "ganó ",
        "apareció ", "consideró ", "amó ", "compró ",
        "esperó ", "murió ", "envió ", "esperó ", "sirvió ",
        "se quedó ", "construyó ", "cayó ", "cortó ", "mató ",
        "alcanzó ", "permaneció ", "sugirió ",
        "elevó ", "pasó ", "vendió ", "requirió ",
        "decidió ", "informó ", "devolvió ", "tiró ",
        "explicó ", "llevó ", "desarrolló ", "esperó ", "condujo ", "rompió "
    ]
    
    let verbsSpanishThirdPersonPluralPast = [
        "tuvieron ", "hicieron ", "dijeron ", "fueron ", "obtuvieron ",
        "hicieron ", "supieron ", "pensaron ", "vieron ", "tomaron ",
        "vinieron ", "quisieron ", "miraron ", "usaron ", "encontraron ",
        "dieron ", "dijeron ", "trabajaron ", "llamaron ", "intentaron ",
        "preguntaron ", "necesitaron ", "sintieron ", "se volvieron ", "dejaron ",
        "pusieron ", "se refirieron a ",
        "dejaron ", "mantuvieron ", "empezaron ", "parecieron ", "hablaron ",
        "giraron ", "ayudaron ", "empezaron ", "mostraron ", "oyeron ",
        "corrieron ", "jugaron ", "movieron ", "gustaron ",
        "creyeron ", "sostuvieron ", "vivieron ",
        "trajeron ", "escribieron ", "proporcionaron ", "se sentaron ",
        "estuvieron de pie ", "perdieron ",
        "encontraron ", "pagaron ", "incluyeron ", "continuaron ", "cambiaron ", "pusieron ", "lideraron ",
        "aprendieron ", "entendieron ", "miraron ", "siguieron ",
        "dejaron de ", "hablaron ", "crearon ", "permitieron ",
        "leyeron ", "gastaron ", "añadieron ", "crecieron ", "abrieron ",
        "caminaron ", "ofrecieron ", "recordaron ", "ganaron ",
        "aparecieron ", "consideraron ", "amaron ", "compraron ",
        "esperaron ", "murieron ", "enviaron ", "esperaron ", "sirvieron ",
        "se quedaron ", "construyeron ", "cayeron ", "cortaron ", "mataron ",
        "alcanzaron ", "permanecieron ", "sugirieron ",
        "elevaron ", "pasaron ", "vendieron ", "requirieron ",
        "decidieron ", "informaron ", "devolvieron ", "tiraron ",
        "explicaron ", "llevaron ", "desarrollaron ", "esperaron ", "condujeron ", "rompieron "
    ]
    
    let verbsSpanishFirstPersonPluralPast = [
        "tuvimos ", "hicimos ", "dijimos ", "fuimos ", "obtuvimos ",
        "hicimos ", "supimos ", "pensamos ", "vimos ", "tomamos ",
        "vinimos ", "quisimos ", "miramos ", "usamos ", "encontramos ",
        "dimos ", "dijimos ", "trabajamos ", "llamamos ", "intentamos ",
        "preguntamos ", "necesitamos ", "sentimos ", "nos volvimos ", "dejamos ",
        "pusimos ", "nos referimos a ",
        "dejamos ", "mantuvimos ", "empezamos ", "parecimos ", "hablamos ",
        "giramos ", "ayudamos ", "empezamos ", "mostramos ", "oímos ",
        "corrimos ", "jugamos ", "movimos ", "gustamos ",
        "creímos ", "sostuvimos ", "vivimos ",
        "trajimos ", "escribimos ", "proporcionamos ", "nos sentamos ",
        "estuvimos de pie ", "perdimos ",
        "encontramos ", "pagamos ", "incluimos ", "continuamos ", "cambiamos ", "pusimos ", "lideramos ",
        "aprendimos ", "entendimos ", "miramos ", "seguimos ",
        "dejamos de ", "hablamos ", "creamos ", "permitimos ",
        "leímos ", "gastamos ", "añadimos ", "crecimos ", "abrimos ",
        "caminamos ", "ofrecimos ", "recordamos ", "ganamos ",
        "aparecimos ", "consideramos ", "amamos ", "compramos ",
        "esperamos ", "morimos ", "enviamos ", "esperamos ", "servimos ",
        "nos quedamos ", "construimos ", "caímos ", "cortamos ", "matamos ",
        "alcanzamos ", "permanecimos ", "sugerimos ",
        "elevamos ", "pasamos ", "vendimos ", "requerimos ",
        "decidimos ", "informamos ", "devolvimos ", "tiramos ",
        "explicamos ", "llevamos ", "desarrollamos ", "esperamos ", "condujimos ", "rompimos "
    ]
    
    let verbsSpanishSecondPerson = [
        "tienes ", "haces ", "dices ", "vas ", "obtienes ", "haces ", "sabes ", "piensas ", "ves ", "tomas ",
        "vienes ", "quieres ", "miras ", "usas ", "encuentras ", "das ", "dices ", "trabajas ", "llamas ",
        "intentas ", "preguntas ", "necesitas ", "sientes ", "te vuelves ", "dejas ", "pones ", "te refieres a ",
        "dejas ", "mantienes ", "empiezas ", "pareces ", "hablas ", "giras ", "ayudas ", "empiezas ", "muestras ",
        "oyes ", "corres ", "juegas ", "mueves ", "gustas ", "crees ", "sostienes ", "vives ",
        "traes ", "escribes ", "proporcionas ", "te sientas ", "estás de pie ", "pierdes ", "encuentras ", "pagas ",
        "incluyes ", "continúas ", "cambias ", "pones ", "lideras ", "aprendes ", "entiendes ", "miras ", "sigues ",
        "dejas de ", "hablas ", "creas ", "permites ", "lees ", "gastas ", "añades ", "creces ", "abres ", "caminas ",
        "ofreces ", "recuerdas ", "ganas ", "apareces ", "consideras ", "amas ", "compras ", "esperas ", "mueres ",
        "envías ", "esperas ", "sirves ", "te quedas ", "construyes ", "caes ", "cortas ", "matas ", "alcanzas ",
        "permaneces ", "sugieres ", "elevas ", "pasas ", "vendes ", "requieres ", "decides ", "informas ", "te devuelves ",
        "tiras ", "explicas ", "llevas ", "desarrollas ", "esperas ", "conduces ", "rompes "
    ]
    
    let verbsSpanishThirdPerson = [
        "tiene ", "hace ", "dice ", "va ", "obtiene ", "hace ", "sabe ", "piensa ", "ve ", "toma ",
        "viene ", "quiere ", "mira ", "usa ", "encuentra ", "da ", "dice ", "trabaja ", "llama ",
        "intenta ", "pregunta ", "necesita ", "siente ", "se vuelve ", "deja ", "pone ", "se refiere a ",
        "deja ", "mantiene ", "empieza ", "parece ", "habla ", "gira ", "ayuda ", "empieza ", "muestra ",
        "oye ", "corre ", "juega ", "mueve ", "gusta ", "cree ", "sostiene ", "vive ",
        "trae ", "escribe ", "proporciona ", "se sienta ", "está de pie ", "pierde ", "encuentra ", "paga ",
        "incluye ", "continúa ", "cambia ", "pone ", "lidera ", "aprende ", "entiende ", "mira ", "sigue ",
        "deja de ", "habla ", "crea ", "permite ", "lee ", "gasta ", "añade ", "crece ", "abre ", "camina ",
        "ofrece ", "recuerda ", "gana ", "aparece ", "considera ", "ama ", "compra ", "espera ", "muere ",
        "envía ", "espera ", "sirve ", "se queda ", "construye ", "cae ", "corta ", "mata ", "alcanza ",
        "permanece ", "sugiere ", "eleva ", "pasa ", "vende ", "requiere ", "decide ", "informa ", "regresa ",
        "tira ", "explica ", "lleva ", "desarrolla ", "espera ", "conduce ", "rompe "
    ]
    
    let verbsSpanishThirdPersonPlural = [
        "tienen ", "hacen ", "dicen ", "van ", "obtienen ", "hacen ", "saben ", "piensan ", "ven ", "toman ",
        "vienen ", "quieren ", "miran ", "usan ", "encuentran ", "dan ", "dicen ", "trabajan ", "llaman ",
        "intentan ", "preguntan ", "necesitan ", "sienten ", "se vuelven ", "dejan ", "ponen ", "se refieren a ",
        "dejan ", "mantienen ", "empiezan ", "parecen ", "hablan ", "giran ", "ayudan ", "empiezan ", "muestran ",
        "oyen ", "corren ", "juegan ", "mueven ", "gustan ", "creen ", "sostienen ", "viven ",
        "traen ", "escriben ", "proporcionan ", "se proporcionan ", "se sientan ", "están de pie ", "pierden ", "encuentran ","pagan ",
        "incluyen ", "continúan ", "cambian ", "ponen ", "lideran ", "aprenden ", "entienden ", "miran ", "siguen ",
        "dejan de ", "hablan ", "crean ", "permiten ", "leen ", "gastan ", "añaden ", "crecen ", "abren ", "caminan ",
        "ofrecen ", "recuerdan ", "ganan ", "aparecen ", "consideran ", "aman ", "compran ", "esperan ", "mueren ",
        "envían ", "esperan ", "sirven ", "se quedan ", "construyen ", "caen ", "cortan ", "matan ", "alcanzan ",
        "permanecen ", "sugieren ", "elevan ", "pasan ", "venden ", "requieren ", "deciden ", "informan ", "regresan ",
        "tiran ", "explican ", "llevan ", "desarrollan ", "esperan ", "conducen ", "rompen "
    ]
    
    let verbsSpanishFirstPersonPlural = [
        "tenemos ", "hacemos ", "decimos ", "vamos ", "obtenemos ", "hacemos ", "sabemos ", "pensamos ", "vemos ", "tomamos ",
        "venimos ", "queremos ", "miramos ", "usamos ", "encontramos ", "damos ", "decimos ", "trabajamos ", "llamamos ",
        "intentamos ", "preguntamos ", "necesitamos ", "sentimos ", "nos volvemos ", "dejamos ", "ponemos ", "nos referimos a ",
        "dejamos ", "mantenemos ", "empezamos ", "parecemos ", "hablamos ", "giramos ", "ayudamos ", "empezamos ", "mostramos ",
        "oímos ", "corremos ", "jugamos ", "movemos ", "gustamos ", "creemos ", "sostenemos ", "vivimos ",
        "traemos ", "escribimos ", "proporcionamos ", "nos sentamos ", "estamos de pie ", "perdemos ", "encontramos ", "pagamos ",
        "incluimos ", "continuamos ", "cambiamos ", "ponemos ", "lideramos ", "aprendemos ", "entendemos ", "miramos ", "seguimos ",
        "dejamos de ", "hablamos ", "creamos ", "permitimos ", "leemos ", "gastamos ", "añadimos ", "crecemos ", "abrimos ", "caminamos ",
        "ofrecemos ", "recordamos ", "ganamos ", "aparecemos ", "consideramos ", "amamos ", "compramos ", "esperamos ", "morimos ",
        "enviamos ", "esperamos ", "servimos ", "nos quedamos ", "construimos ", "caemos ", "cortamos ", "matamos ", "alcanzamos ",
        "permanecemos ", "sugerimos ", "elevamos ", "pasamos ", "vendemos ", "requerimos ", "decidimos ", "informamos ", "nos devolvemos ",
        "tiramos ", "explicamos ", "llevamos ", "desarrollamos ", "esperamos ", "conducimos ", "rompemos "
    ]
    
    let verbsSpanishFirstPersonPluralPastSubjunctive = [
        "tuviéramos ",
        "hiciéramos ",
        "dijéramos ",
        "fuéramos ",
        "obtuviéramos ",
        "hiciéramos ",
        "supiéramos ",
        "pensáramos ",
        "viéramos ",
        "tomáramos ",
        "viniéramos ",
        "quisiéramos ",
        "miráramos ",
        "usáramos ",
        "encontráramos ",
        "diéramos ",
        "dijéramos ",
        "trabajáramos ",
        "llamáramos ",
        "intentáramos ",
        "preguntáramos ",
        "necesitáramos ",
        "sintiéramos ",
        "llegáramos a ser ",
        "dejáramos ",
        "pusiéramos ",
        "nos refiriéramos a ",
        "dejáramos ",
        "mantuviéramos ",
        "empezáramos ",
        "pareciéramos ",
        "habláramos ",
        "giráramos ",
        "ayudáramos ",
        "empezáramos ",
        "mostráramos ",
        "oyéramos ",
        "corriéramos ",
        "jugáramos ",
        "moviéramos ",
        "gustáramos ",
        "creyéramos ",
        "sostuviéramos ",
        "viéramos ",
        "trajéramos ",
        "escribiéramos ",
        "proporcionáramos ",
        "nos sentáramos ",
        "estuviéramos de pie ",
        "perdiéramos ",
        "encontráramos ",
        "pagáramos ",
        "incluyéramos ",
        "continuáramos ",
        "cambiáramos ",
        "pusiéramos ",
        "lideráramos ",
        "aprendiéramos ",
        "entendiéramos ",
        "miráramos ",
        "siguiéramos ",
        "detuviéramos ",
        "habláramos ",
        "creáramos ",
        "permitiéramos ",
        "leyéramos ",
        "gastáramos ",
        "añadiéramos ",
        "creciéramos ",
        "abriéramos ",
        "camináramos ",
        "ofreciéramos ",
        "recordáramos ",
        "ganáramos ",
        "apareciéramos ",
        "consideráramos ",
        "amáramos ",
        "compráramos ",
        "esperáramos ",
        "muriéramos ",
        "enviáramos ",
        "esperáramos ",
        "sirviéramos ",
        "nos quedáramos ",
        "construyéramos ",
        "cayéramos ",
        "cortáramos ",
        "matáramos ",
        "alcanzáramos ",
        "permaneciéramos ",
        "sugiriéramos ",
        "eleváramos ",
        "pasáramos ",
        "vendiéramos ",
        "requiriéramos ",
        "decidiéramos ",
        "informáramos ",
        "volviéramos ",
        "tiráramos ",
        "explicáramos ",
        "lleváramos ",
        "desarrolláramos ",
        "esperáramos ",
        "condujéramos ",
        "rompiéramos "
    ]
    
    let verbsSpanishFirstPersonSubjunctive = [
        "tenga ", "haga ", "diga ", "vaya ", "obtenga ", "haga ", "sepa ", "piense ", "vea ", "tome ",
        "venga ", "quiera ", "mire ", "use ", "encuentre ", "dé ", "diga ", "trabaje ", "llame ", "intente ",
        "pregunte ", "necesite ", "sienta ", "me vuelva ", "deje ", "ponga ", "me refiera a ", "deje ", "mantenga ", "empiece ",
        "parezca ", "hable ", "gire ", "ayude ", "empiece ", "muestre ", "oiga ", "corra ", "juegue ", "mueva ",
        "guste ", "crea ", "sostenga ", "viva ", "traiga ", "escriba ", "proporcione ", "me siente ", "esté de pie ", "pierda ",
        "encuentre ", "pague ", "incluya ", "continúe ", "cambie ", "ponga ", "lidere ", "aprenda ", "entienda ", "mire ",
        "siga ", "deje de ", "hable ", "cree ", "permita ", "lea ", "gaste ", "añada ", "crezca ", "abra ",
        "camine ", "ofrezca ", "recuerde ", "gane ", "aparezca ", "considere ", "ame ", "compre ", "espere ", "muera ",
        "envíe ", "espere ", "sirva ", "me quede ", "construya ", "caiga ", "corte ", "mate ", "alcance ", "permanezca ",
        "sugiera ", "eleve ", "pase ", "venda ", "requiera ", "decida ", "informe ", "me devuelva ", "tire ", "explique ",
        "lleve ", "desarrolle ", "espere ", "conduzca ", "rompa "
    ]
    
    let verbsSpanishThirdPersonSubjunctive = [
        "tenga ", "haga ", "diga ", "vaya ", "obtenga ", "haga ", "sepa ", "piense ", "vea ", "tome ",
        "venga ", "quiera ", "mire ", "use ", "encuentre ", "dé ", "diga ", "trabaje ", "llame ", "intente ",
        "pregunte ", "necesite ", "sienta ", "se vuelva ", "deje ", "ponga ", "se refiera ", "deje ", "mantenga ", "empiece ",
        "parezca ", "hable ", "gire ", "ayude ", "empiece ", "muestre ", "oiga ", "corra ", "juegue ", "mueva ",
        "guste ", "crea ", "sostenga ", "viva ", "traiga ", "escriba ", "proporcione ", "se siente ", "esté de pie ", "pierda ",
        "encuentre ", "pague ", "incluya ", "continúe ", "cambie ", "ponga ", "lidere ", "aprenda ", "entienda ", "mire ",
        "siga ", "deje de ", "hable ", "cree ", "permita ", "lea ", "gaste ", "añada ", "crezca ", "abra ",
        "camine ", "ofrezca ", "recuerde ", "gane ", "aparezca ", "considere ", "ame ", "compre ", "espere ", "muera ",
        "envíe ", "espere ", "sirva ", "se quede ", "construya ", "caiga ", "corte ", "mate ", "alcance ", "permanezca ",
        "sugiera ", "eleve ", "pase ", "venda ", "requiera ", "decida ", "informe ", "se devuelva ", "tire ", "explique ",
        "lleve ", "desarrolle ", "espere ", "conduzca ", "rompa "
    ]
    
    let verbsSpanishFirstPersonPastSubjunctive = [
        "tuviera ", "hiciera ", "dijera ", "fuera ", "obtuviera ", "hiciera ", "supiera ", "pensara ", "viera ", "tomara ",
        "viniera ", "quisiera ", "mirara ", "usara ", "encontrara ", "diera ", "dijera ", "trabajara ", "llamara ", "intentara ",
        "preguntara ", "necesitara ", "sintiera ", "me volviera ", "dejara ", "pusiera ", "se refiriera a ", "dejara ", "mantuviera ", "empezara ",
        "pareciera ", "hablara ", "girara ", "ayudara ", "empezara ", "mostrara ", "oyera ", "corriera ", "jugara ", "moviera ",
        "gustara ", "creyera ", "sostuviera ", "viviera ", "trajera ", "escribiera ", "proporcionara ", "me sentara ", "estuviera de pie ", "perdiera ",
        "encontrara ", "pagara ", "incluyera ", "continuara ", "cambiara ", "pusiera ", "liderara ", "aprendiera ", "entendiera ", "mirara ",
        "siguiera ", "dejara de ", "hablara ", "creara ", "permitiera ", "leyera ", "gastara ", "añadiera ", "creciera ", "abriera ",
        "caminara ", "ofreciera ", "recordara ", "ganara ", "apareciera ", "considerara ", "amara ", "comprara ", "esperara ", "muriera ",
        "enviara ", "esperara ", "sirviera ", "me quedara ", "construyera ", "cayera ", "cortara ", "matara ", "alcanzara ", "permaneciera ",
        "sugiriera ", "elevara ", "pasara ", "vendiera ", "requiriera ", "decidiera ", "informara ", "devolviera ", "tirara ", "explicara ",
        "llevara ", "desarrollara ", "esperara ", "condujera ", "rompiera "
    ]
    
    let verbsSpanishSecondPersonPastSubjunctive = [
        "tuvieras ", "hicieras ", "dijeras ", "fueras ", "obtuvieras ", "hicieras ", "supieras ", "pensaras ", "vieras ", "tomaras ",
        "vinieras ", "quisieras ", "miraras ", "usaras ", "encontraras ", "dieras ", "dijeras ", "trabajaras ", "llamaras ", "intentaras ",
        "preguntaras ", "necesitaras ", "sintieras ", "te volvieras ", "dejaras ", "pusieras ", "te refirieras a ", "dejaras ", "mantuvieras ", "empezaras ",
        "parecieras ", "hablaras ", "giraras ", "ayudaras ", "empezaras ", "mostraras ", "oyeras ", "corrieras ", "jugaras ", "movieras ",
        "gustaras ", "creyeras ", "sostuvieras ", "vivieras ", "trajeras ", "escribieras ", "proporcionaras ", "te sentaras ", "estuvieras de pie ", "perdieras ",
        "encontraras ", "pagaras ", "incluyeras ", "continuaras ", "cambiaras ", "pusieras ", "lideraras ", "aprendieras ", "entendieras ", "miraras ",
        "siguieras ", "dejaras de ", "hablaras ", "crearas ", "permitieras ", "leyeras ", "gastaras ", "añadieras ", "crecieras ", "abrieras ",
        "caminaras ", "ofrecieras ", "recordaras ", "ganaras ", "aparecieras ", "consideraras ", "amaras ", "compraras ", "esperaras ", "murieras ",
        "enviaras ", "esperaras ", "sirvieras ", "te quedaras ", "construyeras ", "cayeras ", "cortaras ", "mataras ", "alcanzaras ", "permanecieras ",
        "sugirieras ", "elevaras ", "pasaras ", "vendieras ", "requirieras ", "decidieras ", "informaras ", "devolvieras ", "tiraras ", "explicaras ",
        "llevaras ", "desarrollaras ", "esperaras ", "condujeras ", "rompieras "
    ]
    
    let verbsSpanishThirdPersonPastSubjunctive = [
        "tuviera ", "hiciera ", "dijera ", "fuera ", "obtuviera ", "hiciera ", "supiera ", "pensara ", "viera ", "tomara ",
        "viniera ", "quisiera ", "mirara ", "usara ", "encontrara ", "diera ", "dijera ", "trabajara ", "llamara ", "intentara ",
        "preguntara ", "necesitara ", "sintiera ", "se volviera ", "dejara ", "pusiera ", "se refiera a ", "dejara ", "mantuviera ", "empezara ",
        "pareciera ", "hablara ", "girara ", "ayudara ", "empezara ", "mostrara ", "oyera ", "corriera ", "jugara ", "moviera ",
        "gustara ", "creyera ", "sostuviera ", "viviera ", "trajera ", "escribiera ", "proporcionara ", "se sentara ", "estuviera de pie ", "perdiera ",
        "encontrara ", "pagara ", "incluyera ", "continuara ", "cambiara ", "pusiera ", "liderara ", "aprendiera ", "entendiera ", "mirara ",
        "siguiera ", "dejara de ", "hablara ", "creara ", "permitiera ", "leyera ", "gastara ", "añadiera ", "creciera ", "abriera ",
        "caminara ", "ofreciera ", "recordara ", "ganara ", "apareciera ", "considerara ", "amara ", "comprara ", "esperara ", "muriera ",
        "enviara ", "esperara ", "sirviera ", "se quedara ", "construyera ", "cayera ", "cortara ", "matara ", "alcanzara ", "permaneciera ",
        "sugiriera ", "elevara ", "pasara ", "vendiera ", "requiriera ", "decidiera ", "informara ", "devolviera ", "tirara ", "explicara ",
        "llevara ", "desarrollara ", "esperara ", "condujera ", "rompiera "
    ]
    
    let verbsSpanishThirdPersonPluralPastSubjunctive = [
        "tuvieran ", "hicieran ", "dijeran ", "fueran ", "obtuvieran ", "hicieran ", "supieran ", "pensaran ", "vieran ", "tomaran ",
        "vinieran ", "quisieran ", "miraran ", "usaran ", "encontraran ", "dieran ", "dijeran ", "trabajaran ", "llamaran ", "intentaran ",
        "preguntaran ", "necesitaran ", "sintieran ", "se volvieran ", "dejaran ", "pusieran ", "se refieran a ", "dejaran ", "mantuvieran ", "empezaran ",
        "parecieran ", "hablaran ", "giraran ", "ayudaran ", "empezaran ", "mostraran ", "oyeran ", "corrieran ", "jugaran ", "movieran ",
        "gustaran ", "creyeran ", "sostuvieran ", "vivieran ", "trajeran ", "escribieran ", "proporcionaran ", "se sentaran ", "estuvieran de pie ", "perdieran ",
        "encontraran ", "pagaran ", "incluyeran ", "continuaran ", "cambiaran ", "pusieran ", "lideraran ", "aprendieran ", "entendieran ", "miraran ",
        "siguieran ", "dejaran de ", "hablaran ", "crearan ", "permitieran ", "leyeran ", "gastaran ", "añadieran ", "crecieran ", "abrieran ",
        "caminaran ", "ofrecieran ", "recordaran ", "ganaran ", "aparecieran ", "consideraran ", "amaran ", "compraran ", "esperaran ", "murieran ",
        "enviaran ", "esperaran ", "sirvieran ", "se quedaran ", "construyeran ", "cayeran ", "cortaran ", "mataran ", "alcanzaran ", "permanecieran ",
        "sugirieran ", "elevaran ", "pasaran ", "vendieran ", "requirieran ", "decidieran ", "informaran ", "devolvieran ", "tiraran ", "explicaran ",
        "llevaran ", "desarrollaran ", "esperaran ", "condujeran ", "rompieran "
    ]
    
    let verbsSpanishSecondPersonSubjunctive = [
        "tengas ", "hagas ", "digas ", "vayas ", "obtengas ", "hagas ", "sepas ", "pienses ", "veas ", "tomes ",
        "vengas ", "quieras ", "mires ", "uses ", "encuentres ", "des ", "digas ", "trabajes ", "llames ", "intentes ",
        "preguntes ", "necesites ", "sientas ", "te vuelvas ", "dejes ", "pongas ", "te refieras a ", "dejes ", "mantengas ", "empieces ",
        "parezcas ", "hables ", "gires ", "ayudes ", "empieces ", "muestres ", "oigas ", "corras ", "juegues ", "muevas ",
        "gustes ", "creas ", "sostengas ", "vivas ", "traigas ", "escribas ", "proporciones ", "te sientes ", "estés de pie ", "pierdas ",
        "encuentres ", "pagues ", "incluyas ", "continúes ", "cambies ", "pongas ", "lideres ", "aprendas ", "entiendas ", "mires ",
        "sigas ", "dejes de ", "hables ", "crees ", "permitas ", "leas ", "gastes ", "añadas ", "crezcas ", "abras ",
        "camines ", "ofrezcas ", "recuerdes ", "ganes ", "aparezcas ", "consideres ", "ames ", "compres ", "esperes ", "mueras ",
        "envíes ", "esperes ", "sirvas ", "te quedes ", "construyas ", "caigas ", "cortes ", "mates ", "alcances ", "permanezcas ",
        "sugieras ", "eleves ", "pases ", "vendas ", "requieras ", "decidas ", "informes ", "te devuelvas ", "tires ", "expliques ",
        "lleves ", "desarrolles ", "esperes ", "conduzcas ", "rompas "
    ]
    
    let verbsSpanishThirdPersonPluralSubjunctive = [
        "tengan ", "hagan ", "digan ", "vayan ", "obtengan ", "hagan ", "sepan ", "piensen ", "vean ", "tomen ",
        "vengan ", "quieran ", "miren ", "usen ", "encuentren ", "den ", "digan ", "trabajen ", "llamen ", "intenten ",
        "pregunten ", "necesiten ", "sientan ", "se vuelvan ", "dejen ", "pongan ", "se refieran a ", "dejen ", "mantengan ", "empiecen ",
        "parezcan ", "hablen ", "giren ", "ayuden ", "empiecen ", "muestren ", "oigan ", "corran ", "jueguen ", "muevan ",
        "gusten ", "crean ", "sostengan ", "vivan ", "traigan ", "escriban ", "proporcionen ", "se sienten ", "estén de pie ", "pierdan ",
        "encuentren ", "paguen ", "incluyan ", "continúen ", "cambien ", "pongan ", "lideren ", "aprendan ", "entiendan ", "miren ",
        "sigan ", "dejen de ", "hablen ", "creen ", "permitan ", "lean ", "gasten ", "añadan ", "crezcan ", "abran ",
        "caminen ", "ofrezcan ", "recuerden ", "ganen ", "aparezcan ", "consideren ", "amen ", "compren ", "esperen ", "mueran ",
        "envíen ", "esperen ", "sirvan ", "se queden ", "construyan ", "caigan ", "corten ", "maten ", "alcancen ", "permanezcan ",
        "sugieran ", "eleven ", "pasen ", "vendan ", "requieran ", "decidan ", "informen ", "se devuelvan ", "tiren ", "expliquen ",
        "lleven ", "desarrollen ", "esperen ", "conduzcan ", "rompan "
    ]
    
    let verbsSpanishFirstPersonPluralSubjunctive = [
        "tengamos ", "hagamos ", "digamos ", "vayamos ", "obtengamos ", "hagamos ", "sepamos ", "pensemos ", "veamos ", "tomemos ",
        "vengamos ", "queramos ", "miremos ", "usemos ", "encontremos ", "demos ", "digamos ", "trabajemos ", "llamemos ", "intentemos ",
        "preguntemos ", "necesitemos ", "sintamos ", "nos volvamos ", "dejemos ", "pongamos ", "nos refiramos a ", "dejemos ", "mantengamos ", "empecemos ",
        "parezcamos ", "hablemos ", "giremos ", "ayudemos ", "empecemos ", "mostremos ", "oigamos ", "corramos ", "juguemos ", "movamos ",
        "gustemos ", "creamos ", "sostengamos ", "vivamos ", "traigamos ", "escribamos ", "proporcionemos ", "nos sentemos ", "estemos de pie ", "perdamos ",
        "encontremos ", "paguemos ", "incluyamos ", "continuemos ", "cambiemos ", "pongamos ", "lideremos ", "aprendamos ", "entendamos ", "miremos ",
        "sigamos ", "dejemos de ", "hablemos ", "creemos ", "permitamos ", "leamos ", "gastemos ", "añadamos ", "crezcamos ", "abramos ",
        "caminemos ", "ofrezcamos ", "recordemos ", "ganemos ", "aparezcamos ", "consideremos ", "amemos ", "compremos ", "esperemos ", "muramos ",
        "enviemos ", "esperemos ", "sirvamos ", "nos quedemos ", "construyamos ", "caigamos ", "cortemos ", "matemos ", "alcancemos ", "permanezcamos ",
        "sugiramos ", "elevemos ", "pasemos ", "vendamos ", "requiramos ", "decidamos ", "informemos ", "devolvamos ", "tiremos ", "expliquemos ",
        "llevemos ", "desarrollemos ", "esperemos ", "conduzcamos ", "rompamos "
    ]
    
    let verbObjects = [
        ["time ", "money ", "food ", "the floor ", "love "],
        ["a favor ", "a magic trick ", "good ", "everything ", "nothing "],
        ["the truth ", "a lie ", "a story ", "goodbye ", "hello "],
        ["to school ", "to work ", "home ", "to the store ", "to bed "],
        ["results ", "information ", "approval ", "a job ", "tickets "],
        ["homework ", "a plan ", "a cake ", "an effort ", "progress "],
        ["the answer ", "a secret ", "the way ", "the truth ", "nothing "],
        ["about the future ", "of an idea ", "about life ", "positively ", "about a solution "],
        ["a movie ", "a doctor ", "the point ", "the difference ", "a friend "],
        ["a break ", "a photo ", "a seat ", "a test ", "medicine "],
        ["to visit ", "to an agreement ", "to the party ", "to a conclusion ", "to help "],
        ["to eat something ", "to leave early ", "to know the truth ", "to buy a house ", "to travel the world "],
        ["at the sky ", "through the window ", "at the mirror ", "at photos ", "at the clock "],
        ["a pen ", "a computer ", "a tool ", "social media ", "an application "],
        ["a solution ", "a friend ", "a job ", "a key ", "peace of mind "],
        ["a gift ", "advice ", "a hug ", "a presentation ", "a lecture "],
        ["a story ", "the truth ", "a joke ", "a secret ", "lies "],
        ["on a project ", "overtime ", "in an office ", "with a team ", "under pressure "],
        ["a friend ", "for help ", "a taxi ", "the police ", "a meeting "],
        ["to learn something new ", "to cook ", "to fix it ", "to make amends ", "to reach out "],
        ["for directions ", "a question ", "for help ", "for permission ", "about a topic "],
        ["a hug ", "money ", "to talk to you ", "to ask something ", "love "],
        ["happiness ", "sadness ", "pain ", "nervousness ", "heat "],
        ["a teacher ", "an expert ", "a member ", "a friend ", "a champion "],
        ["the house ", "the job ", "a note ", "school ", "a message "],
        ["the table ", "clothes ", "a book ", "the alarm ", "decorations "],
        ["a word ", "a gesture ", "a look ", "a symbol ", "an agreement "],
        ["the kids run ", "the past go ", "people in ", "go ", "things happen "],
        ["a secret ", "calm ", "a diary ", "faith ", "distance "],
        ["a book ", "a movie ", "a project ", "a course ", "a diet "],
        ["interesting ", "easy ", "difficult ", "strange ", "possible "],
        ["on the phone ", "in public ", "with friends ", "about politics ", "about love "],
        ["to the right ", "to the left ", "the page ", "the head ", "the steering wheel "],
        ["a friend ", "at home ", "with homework ", "the parents ", "others "],
        ["the day ", "a conversation ", "a business ", "to run ", "to study "],
        ["a document ", "the way ", "a photo ", "interest ", "the ticket "],
        ["music ", "a noise ", "the rain ", "the news ", "a voice "],
        ["a marathon ", "in the park ", "fast ", "every day ", "for pleasure "],
        ["soccer ", "video games ", "chess ", "cards ", "in the park "],
        ["a chair ", "the house ", "the car ", "furniture ", "abroad "],
        ["music ", "food ", "traveling ", "reading ", "sports "],
        ["in ghosts ", "a story ", "in yourself ", "in love ", "in science "],
        ["a meeting ", "a record ", "an opinion ", "a ceremony ", "hands "],
        ["in a city ", "with family ", "an adventure ", "a life ", "alone "],
        ["joy ", "a friend ", "a gift ", "news ", "supplies "],
        ["a letter ", "a book ", "an email ", "a report ", "a story "],
        ["support ", "information ", "a service ", "help ", "evidence "],
        ["on a chair ", "on the floor ", "in a meeting ", "at the table ", "by the window "],
        ["in line ", "for a long time ", "for a cause ", "at the door ", "by someone "],
        ["weight ", "a game ", "a friend ", "time ", "money "],
        ["a friend ", "a deadline ", "a goal ", "at a place ", "someone new "],
        ["the bill ", "attention ", "a fine ", "a visit ", "respects "],
        ["all members ", "details ", "a section ", "extras ", "a warning "],
        ["the journey ", "working ", "studying ", "a conversation ", "a tradition "],
        ["clothes ", "a decision ", "a tire ", "direction ", "attitude "],
        ["the table ", "a record ", "an alarm ", "a date ", "standards "],
        ["a team ", "a project ", "the way ", "a discussion ", "an initiative "],
        ["a language ", "a skill ", "the truth ", "from mistakes ", "a lesson "],
        ["a concept ", "feelings ", "a joke ", "a situation ", "instructions "],
        ["a movie ", "the news ", "a game ", "a show ", "the sky "],
        ["instructions ", "a leader ", "a trend ", "a path ", "advice "],
        ["thinking  ", "working ", "smoking ", "talking ", "worrying "],
        ["the truth ", "softly ", "publicly ", "about a problem ", "a language "],
        ["art ", "a website ", "music ", "a plan ", "a story "],
        ["entry ", "freedom ", "a break ", "a mistake ", "pets "],
        ["a book ", "a magazine ", "the room ", "in the couch ", "well "],
        ["money ", "time ", "energy ", "the holidays ", "effort "],
        ["sugar ", "details ", "a comment ", "flavor ", "value "],
        ["plants ", "in the city ", "a lot ", "spiritually ", "during the year "],
        ["a door ", "a window ", "a business ", "a book ", "an account "],
        ["the dog ", "in the park ", "to school ", "home ", "a long distance "],
        ["help ", "a job ", "a gift ", "advice ", "a discount "],
        ["a name ", "an anniversary ", "to lock the door ", "a password ", "a joke "],
        ["a game ", "a prize ", "a competition ", "a scholarship ", "respect "],
        ["on TV ", "in a movie ", "at an event ", "in court ", "suddenly "],
        ["an offer ", "a proposal ", "the consequences ", "a career change ", "someone's feelings "],
        ["a person ", "a pet ", "traveling ", "cooking ", "reading "],
        ["groceries ", "a car ", "a house ", "clothes ", "a gift "],
        ["for a bus ", "in line ", "for an appointment ", "for a call ", "for someone "],
        ["peacefully ", "suddenly ", "in battle ", "of old age ", "from illness "],
        ["an email ", "a letter ", "a package ", "a message ", "flowers "],
        ["a delivery ", "a visit ", "an outcome ", "a call ", "results "],
        ["food ", "a customer ", "the nation ", "a sentence ", "a purpose "],
        ["at a hotel ", "with friends ", "in shape ", "focused ", "calm "],
        ["a house ", "a relationship ", "muscle ", "an app ", "a career "],
        ["asleep ", "in love ", "apart ", "behind ", "into a trap "],
        ["hair ", "a cake ", "expenses ", "a deal ", "the grass "],
        ["time ", "a spider ", "a character in a story ", "the engine ", "pain "],
        ["a goal ", "the top ", "an agreement ", "out to someone ", "a conclusion "],
        ["calm ", "in a place ", "silent ", "unchanged ", "a mystery "],
        ["a plan ", "an idea ", "improvements ", "a meeting ", "a solution "],
        ["funds ", "awareness ", "a child ", "the roof ", "a question "],
        ["a test ", "the ball ", "by a place ", "a law ", "down traditions "],
        ["a house ", "a car ", "products ", "tickets ", "art "],
        ["approval ", "a license ", "effort ", "patience ", "a password "],
        ["on a destination ", "to leave ", "on a course of action ", "against it ", "in favor "],
        ["an incident ", "to the police ", "earnings ", "a discovery ", "weather conditions "],
        ["a book ", "home ", "a call ", "to normal ", "goods "],
        ["a door ", "strings ", "away ", "up ", "towards you "],
        ["a theory ", "a situation ", "a joke ", "a process ", "your reasoning "],
        ["a bag ", "responsibility ", "a child ", "goods ", "a message "],
        ["a skill ", "a film ", "a plan ", "a relationship ", "software "],
        ["for the best ", "to win ", "for recovery ", "to see the person again ", "for success "],
        ["a car ", "crazy ", "an initiative ", "home ", "growth "],
        ["a record ", "the law ", "a habit ", "the silence ", "a heart "]
    ]
    
    let verbObjectsSpanish = [
        ["tiempo ", "dinero ", "comida ", "el suelo ", "amor "],
        ["un favor ", "un truco de magia ", "bien ", "todo ", "nada "],
        ["la verdad ", "una mentira ", "una historia ", "adiós ", "hola "],
        ["a la escuela ", "al trabajo ", "a casa ", "a la tienda ", "a la cama "],
        ["resultados ", "información ", "aprobación ", "un trabajo ", "entradas "],
        ["tarea ", "un plan ", "un pastel ", "un esfuerzo ", "progreso "],
        ["la respuesta ", "un secreto ", "el camino ", "la verdad ", "nada "],
        ["en el futuro ", "en una idea ", "en la vida ", "positivamente ", "en una solución "],
        ["una película ", "a un doctor ", "el punto ", "la diferencia ", "a un amigo "],
        ["un descanso ", "una foto ", "un asiento ", "un examen ", "medicina "],
        ["a visitar ", "a un acuerdo ", "a la fiesta ", "a una conclusión ", "a ayudar "],
        ["comer algo ", "salir temprano ", "saber la verdad ", "comprar una casa ", "viajar por el mundo "],
        ["al cielo ", "por la ventana ", "al espejo ", "fotos ", "al reloj "],
        ["un bolígrafo ", "una computadora ", "una herramienta ", "redes sociales ", "una aplicación "],
        ["una solución ", "a un amigo ", "un trabajo ", "una llave ", "paz mental "],
        ["un regalo ", "consejo ", "un abrazo ", "una presentación ", "una conferencia "],
        ["una historia ", "la verdad ", "un chiste ", "un secreto ", "mentiras "],
        ["en un proyecto ", "horas extras ", "en una oficina ", "con un equipo ", "bajo presión "],
        ["a un amigo ", "por ayuda ", "un taxi ", "a la policía ", "una reunión "],
        ["aprender algo nuevo ", "cocinar ", "arreglarlo ", "hacer las paces ", "contactar "],
        ["por direcciones ", "una pregunta ", "por ayuda ", "por permiso ", "sobre un tema "],
        ["un abrazo ","dinero ", "hablar contigo ", "preguntar algo ","amor "],
        ["felicidad ", "tristeza ", "dolor ", "nerviosismo ", "calor "],
        ["profesor ", "experto ", "miembro ", "amigo ", "campeón "],
        ["la casa ", "el trabajo ", "una nota ", "la escuela ", "un mensaje "],
        ["la mesa ", "ropa ", "un libro ", "la alarma ", "decoraciones "],
        ["una palabra ", "un gesto ", "una mirada ", "un símbolo ", "un acuerdo "],
        ["a los niños correr ", "el pasado ir ", "gente entrar ", "ir ", "que las cosas sucedan "],
        ["un secreto ", "la calma ", "un diario ", "la fe ", "la distancia "],
        ["un libro ", "una película ", "un proyecto ", "un curso ", "una dieta "],
        ["interesante ", "fácil ", "difícil ", "raro ", "posible "],
        ["por teléfono ", "en público ", "con amigos ", "sobre política ", "de amor "],
        ["a la derecha ", "a la izquierda ", "la página ", "la cabeza ", "el volante "],
        ["a un amigo ", "en casa ", "con la tarea ", "a los padres ", "a los demás "],
        ["el día ", "una conversación ", "un negocio ", "a correr ", "a estudiar "],
        ["un documento ", "el camino ", "una foto ", "interés ", "el ticket "],
        ["música ", "un ruido ", "la lluvia ", "las noticias ", "una voz "],
        ["un maratón ", "en el parque ", "rápido ", "todos los días ", "por placer "],
        ["fútbol ", "videojuegos ", "al ajedrez ", "cartas ", "en el parque "],
        ["una silla ", "la casa ", "el coche ", "los muebles ", "al extranjero "],
        ["la música ", "la comida ", "viajar ", "leer ", "el deporte "],
        ["en fantasmas ", "una historia ", "en ti mismo ", "en el amor ", "en la ciencia "],
        ["una reunión ", "un récord ", "una opinión ", "una ceremonia ", "manos "],
        ["en una ciudad ", "con la familia ", "una aventura ", "una vida ", "solo "],
        ["alegría ", "un amigo ", "un regalo ", "noticias ", "suministros "],
        ["una carta ", "un libro ", "un correo electrónico ", "un informe ", "una historia "],
        ["apoyo ", "información ", "un servicio ", "ayuda ", "evidencia "],
        ["en una silla ", "en el suelo ", "en una reunión ", "en la mesa ", "junto a la ventana "],
        ["en la fila ", "por mucho tiempo ", "por una causa ", "en la puerta ", "al lado de alguien "],
        ["peso ", "un juego ", "un amigo ", "tiempo ", "dinero "],
        ["un amigo ", "un plazo ", "un objetivo ", "en un lugar ", "a alguien nuevo "],
        ["la cuenta ", "atención ", "una multa ", "una visita ", "respetos "],
        ["todos los miembros ", "detalles ", "una sección ", "extras ", "una advertencia "],
        ["el viaje ", "trabajando ", "estudiando ", "una conversación ", "una tradición "],
        ["ropa ", "una decisión ", "una llanta ", "dirección ", "actitud "],
        ["la mesa ", "un récord ", "una alarma ", "una cita ", "estándares "],
        ["un equipo ", "un proyecto ", "el camino ", "una discusión ", "una iniciativa "],
        ["un idioma ", "una habilidad ", "la verdad ", "de los errores ", "una lección "],
        ["un concepto ", "sentimientos ", "un chiste ", "una situación ", "instrucciones "],
        ["una película ", "las noticias ", "un partido ", "un espectáculo ", "el cielo "],
        ["instrucciones ", "un líder ", "una tendencia ", "un camino ", "consejos "],
        ["pensar ", "trabajar ", "fumar ", "hablar ", "preocuparse "],
        ["la verdad ", "suavemente ", "públicamente ", "sobre un problema ", "un idioma "],
        ["arte ", "un sitio web ", "música ", "un plan ", "una historia "],
        ["entrada ", "libertad ", "un descanso ", "un error ", "mascotas "],
        ["un libro ", "una revista ", "el ambiente ", "en el sofá", "bien "],
        ["dinero ", "tiempo ", "energía ", "las vacaciones ", "esfuerzo "],
        ["azúcar ", "detalles ", "un comentario ", "sabor ", "valor "],
        ["plantas ", "en la ciudad ", "mucho ", "espiritualmente ", "durante el año "],
        ["una puerta ", "una ventana ", "un negocio ", "un libro ", "una cuenta "],
        ["el perro ", "en el parque ", "a la escuela ", "a casa ", "una larga distancia "],
        ["ayuda ", "un trabajo ", "un regalo ", "consejo ", "un descuento "],
        ["un nombre ", "un aniversario ", "cerrar la puerta con llave ", "una contraseña ", "un chiste "],
        ["un juego ", "un premio ", "una competencia ", "una beca ", "respeto "],
        ["en la televisión ", "en una película ", "en un evento ", "en el tribunal ", "de repente "],
        ["una oferta ", "una propuesta ", "las consecuencias ", "un cambio de carrera ", "los sentimientos de alguien "],
        ["a una persona ", "a una mascota ", "viajar ", "cocinar ", "leer "],
        ["comestibles ", "un coche ", "una casa ", "ropa ", "un regalo "],
        ["un autobús ", "en la fila ", "una cita ", "una llamada ", "a alguien "],
        ["pacíficamente ", "de repente ", "en batalla ", "de vejez ", "de una enfermedad "],
        ["un correo electrónico ", "una carta ", "un paquete ", "un mensaje ", "flores "],
        ["una entrega ", "una visita ", "un resultado ", "una llamada ", "resultados "],
        ["comida ", "a un cliente ", "a la nación ", "una condena ", "un propósito "],
        ["en un hotel ", "con amigos ", "en forma ", "concentrado ", "tranquilo "],
        ["una casa ", "una relación ", "músculo ", "una aplicación ", "una carrera "],
        ["dormido ", "enamorado ", "a pedazos ", "atrás ", "en una trampa "],
        ["el cabello ", "un pastel ", "gastos ", "un trato ", "el césped "],
        ["el tiempo ", "una araña ", "a un personaje en una historia ", "el motor ", "el dolor "],
        ["una meta ", "la cima ", "un acuerdo ", "a alguien ", "una conclusión "],
        ["en calma ", "en un lugar ", "silencioso ", "sin cambios ", "un misterio "],
        ["un plan ", "una idea ", "mejoras ", "una reunión ", "una solución "],
        ["fondos ", "conciencia ", "un niño ", "el techo ", "una pregunta "],
        ["una prueba ", "el balón ", "por un lugar ", "una ley ", "tradiciones "],
        ["una casa ", "un coche ", "productos ", "entradas ", "arte "],
        ["aprobación ", "una licencia ", "esfuerzo ", "paciencia ", "una contraseña "],
        ["sobre un destino ", "salir ", "sobre un curso de acción ", "en contra ", "a favor "],
        ["un incidente ", "a la policía ", "ganancias ", "un descubrimiento ", "condiciones meteorológicas "],
        ["un libro ", "a casa ", "una llamada ", "a la normalidad ", "bienes "],
        ["de una puerta ", "de cuerdas ", "hacia atrás ", "hacia arriba ", "hacia ti "],
        ["una teoría ", "una situación ", "un chiste ", "un proceso ", "tu razonamiento "],
        ["una bolsa ", "responsabilidad ", "un niño ", "mercancías ", "un mensaje "],
        ["una habilidad ", "un filme ", "un plan ", "una relación ", "software "],
        ["lo mejor ", "ganar ", "la recuperación ", "ver a la persona de nuevo ", "el éxito "],
        ["un coche ", "a la locura ", "una iniciativa ", "a casa ", "crecimiento "],
        ["un record ", "la ley ", "un habito ", "el silencio ", "un corazon "]
    ]
    
    let verbsSpanishFirstPersonFuture = [
        "tendré ", // will have (tener)
        "haré ", // will do (hacer)
        "diré ", // will say (decir)
        "iré ", // will go (ir)
        "obtendré ", // will get (obtener)
        "haré ", // will make (hacer again, same as do)
        "sabré ", // will know (saber)
        "pensaré ", // will think (pensar)
        "veré ", // will see (ver)
        "tomaré ", // will take (tomar)
        "vendré ", // will come (venir)
        "querré ", // will want (querer)
        "miraré ", // will look (mirar)
        "usaré ", // will use (usar)
        "encontraré ", // will find (encontrar)
        "daré ", // will give (dar)
        "diré ", // will tell (decir, used for "tell " as well)
        "trabajaré ", // will work (trabajar)
        "llamaré ", // will call (llamar)
        "intentaré ", // will try (intentar)
        "preguntaré ", // will ask (preguntar)
        "necesitaré ", // will need (necesitar)
        "sentiré ", // will feel (sentir)
        "me volveré ", // will become (volverse)
        "dejaré ", // will leave (dejar)
        "pondré ", // will put (poner)
        "me referiré a ", // will mean (significar)
        "dejaré ", // will let (dejar, used for "let " as well)
        "mantendré ", // will keep (mantener)
        "empezaré ", // will begin (empezar)
        "pareceré ", // will seem (parecer)
        "hablaré ", // will talk (hablar)
        "giraré ", // will turn (girar)
        "ayudaré ", // will help (ayudar)
        "empezaré ", // will start (empezar, used for "start " as well)
        "mostraré ", // will show (mostrar)
        "oiré ", // will hear (oir)
        "correré ", // will run (correr)
        "jugaré ", // will play (jugar)
        "moveré ", // will move (mover)
        "gustaré ", // will like (gustar, though "me gustará" is more accurate)
        "creeré ", // will believe (creer)
        "sostendré ", // will hold (sostener)
        "viviré ", // will live (vivir)
        "traeré ", // will bring (traer)
        "escribiré ", // will write (escribir)
        "proporcionaré ", // will provide (proporcionar)
        "me sentaré ", // will sit (sentarse)
        "estaré de pie ", // will stand (estar de pie, though this is more about being than standing)
        "perderé ", // will lose (perder)
        "encontraré ", // will meet (encontrar, used for "meet " as well)
        "pagaré ", // will pay (pagar)
        "incluiré ", // will include (incluir)
        "continuaré ", // will continue (continuar)
        "cambiaré ", // will change (cambiar)
        "pondré ", // will set (poner, used for "set " as well)
        "lideraré ", // will lead (liderar)
        "aprenderé ", // will learn (aprender)
        "entenderé ", // will understand (entender)
        "miraré ", // will watch (mirar)
        "seguiré ", // will follow (seguir)
        "dejaré de ", // will stop (detener)
        "hablaré ", // will speak (hablar)
        "crearé ", // will create (crear)
        "permitiré ", // will allow (permitir)
        "leeré ", // will read (leer)
        "gastaré ", // will spend (gastar)
        "añadiré ", // will add (añadir)
        "creceré ", // will grow (crecer)
        "abriré ", // will open (abrir)
        "caminaré ", // will walk (caminar)
        "ofreceré ", // will offer (ofrecer)
        "recordaré ", // will remember (recordar)
        "ganaré ", // will win (ganar)
        "apareceré ", // will appear (aparecer)
        "consideraré ", // will consider (considerar)
        "amaré ", // will love (amar)
        "compraré ", // will buy (comprar)
        "esperaré ", // will wait (esperar)
        "moriré ", // will die (morir)
        "enviaré ", // will send (enviar)
        "esperaré ", // will expect (esperar)
        "serviré ", // will serve (servir)
        "quedaré ", // will stay (quedarse)
        "construiré ", // will build (construir)
        "caeré ", // will fall (caer)
        "cortaré ", // will cut (cortar)
        "mataré ", // will kill (matar)
        "alcanzaré ", // will reach (alcanzar)
        "permaneceré ", // will remain (permanecer)
        "sugeriré ", // will suggest (sugerir)
        "elevaré ", // will raise (elevar)
        "pasaré ", // will pass (pasar)
        "venderé ", // will sell (vender)
        "requeriré ", // will require (requerir)
        "decidiré ", // will decide (decidir)
        "informaré ", // will report (informar)
        "devolveré ", // will return (volver)
        "tiraré ", // will pull (tirar)
        "explicaré ", // will explain (explicar)
        "llevaré ", // will carry (llevar)
        "desarrollaré ", // will develop (desarrollar)
        "esperaré ", // will hope (esperar)
        "conduciré ", // will drive (conducir)
        "romperé " // will break (romper)
    ]
    
    let verbsSpanishSecondPersonFuture = [
        "tendrás ", // you will have (tener)
        "harás ", // you will do (hacer)
        "dirás ", // you will say (decir)
        "irás ", // you will go (ir)
        "obtendrás ", // you will get (obtener)
        "harás ", // you will make (hacer again, same as do)
        "sabrás ", // you will know (saber)
        "pensarás ", // you will think (pensar)
        "verás ", // you will see (ver)
        "tomarás ", // you will take (tomar)
        "vendrás ", // you will come (venir)
        "querrás ", // you will want (querer)
        "mirarás ", // you will look (mirar)
        "usarás ", // you will use (usar)
        "encontrarás ", // you will find (encontrar)
        "darás ", // you will give (dar)
        "dirás ", // you will tell (decir, used for "tell " as well)
        "trabajarás ", // you will work (trabajar)
        "llamarás ", // you will call (llamar)
        "intentarás ", // you will try (intentar)
        "preguntarás ", // you will ask (preguntar)
        "necesitarás ", // you will need (necesitar)
        "sentirás ", // you will feel (sentir)
        "te volverás ", // you will become (volverse)
        "dejarás ", // you will leave (dejar)
        "pondrás ", // you will put (poner)
        "te referiras a ", // you will mean (significar)
        "dejarás ", // you will let (dejar, used for "let " as well)
        "mantendrás ", // you will keep (mantener)
        "empezarás ", // you will begin (empezar)
        "parecerás ", // you will seem (parecer)
        "hablarás ", // you will talk (hablar)
        "girarás ", // you will turn (girar)
        "ayudarás ", // you will help (ayudar)
        "empezarás ", // you will start (empezar, used for "start " as well)
        "mostrarás ", // you will show (mostrar)
        "oirás ", // you will hear (oir)
        "correrás ", // you will run (correr)
        "jugarás ", // you will play (jugar)
        "moverás ", // you will move (mover)
        "gustarás ", // you will like (gustar, though "te gustará" is more accurate)
        "creerás ", // you will believe (creer)
        "sostendrás ", // you will hold (sostener)
        "vivirás ", // you will live (vivir)
        "traerás ", // you will bring (traer)
        "escribirás ", // you will write (escribir)
        "proporcionarás ", // you will provide (proporcionar)
        "te sentarás ", // you will sit (sentarse)
        "estarás de pie ", // you will stand (estar de pie, though this is more about being than standing)
        "perderás ", // you will lose (perder)
        "encontrarás ", // you will meet (encontrar, used for "meet " as well)
        "pagarás ", // you will pay (pagar)
        "incluirás ", // you will include (incluir)
        "continuarás ", // you will continue (continuar)
        "cambiarás ", // you will change (cambiar)
        "pondrás ", // you will set (poner, used for "set " as well)
        "liderarás ", // you will lead (liderar)
        "aprenderás ", // you will learn (aprender)
        "entenderás ", // you will understand (entender)
        "mirarás ", // you will watch (mirar)
        "seguirás ", // you will follow (seguir)
        "dejarás de ", // you will stop (detener)
        "hablarás ", // you will speak (hablar)
        "crearás ", // you will create (crear)
        "permitirás ", // you will allow (permitir)
        "leerás ", // you will read (leer)
        "gastarás ", // you will spend (gastar)
        "añadirás ", // you will add (añadir)
        "crecerás ", // you will grow (crecer)
        "abrirás ", // you will open (abrir)
        "caminarás ", // you will walk (caminar)
        "ofrecerás ", // you will offer (ofrecer)
        "recordarás ", // you will remember (recordar)
        "ganarás ", // you will win (ganar)
        "aparecerás ", // you will appear (aparecer)
        "considerarás ", // you will consider (considerar)
        "amarás ", // you will love (amar)
        "comprarás ", // you will buy (comprar)
        "esperarás ", // you will wait (esperar)
        "morirás ", // you will die (morir)
        "enviarás ", // you will send (enviar)
        "esperarás ", // you will expect (esperar)
        "servirás ", // you will serve (servir)
        "quedarás ", // you will stay (quedarse)
        "construirás ", // you will build (construir)
        "caerás ", // you will fall (caer)
        "cortarás ", // you will cut (cortar)
        "matarás ", // you will kill (matar)
        "alcanzarás ", // you will reach (alcanzar)
        "permanecerás ", // you will remain (permanecer)
        "sugerirás ", // you will suggest (sugerir)
        "elevarás ", // you will raise (elevar)
        "pasarás ", // you will pass (pasar)
        "venderás ", // you will sell (vender)
        "requerirás ", // you will require (requerir)
        "decidirás ", // you will decide (decidir)
        "informarás ", // you will report (informar)
        "devolverás ", // you will return (volver)
        "tirarás ", // you will pull (tirar)
        "explicarás ", // you will explain (explicar)
        "llevarás ", // you will carry (llevar)
        "desarrollarás ", // you will develop (desarrollar)
        "esperarás ", // you will hope (esperar)
        "conducirás ", // you will drive (conducir)
        "romperás " // you will break (romper)
    ]
    
    let verbsSpanishThirdPersonFuture = [
        "tendrá ", // he/she/it will have (tener)
        "hará ", // he/she/it will do (hacer)
        "dirá ", // he/she/it will say (decir)
        "irá ", // he/she/it will go (ir)
        "obtendrá ", // he/she/it will get (obtener)
        "hará ", // he/she/it will make (hacer again, same as do)
        "sabrá ", // he/she/it will know (saber)
        "pensará ", // he/she/it will think (pensar)
        "verá ", // he/she/it will see (ver)
        "tomará ", // he/she/it will take (tomar)
        "vendrá ", // he/she/it will come (venir)
        "querrá ", // he/she/it will want (querer)
        "mirará ", // he/she/it will look (mirar)
        "usará ", // he/she/it will use (usar)
        "encontrará ", // he/she/it will find (encontrar)
        "dará ", // he/she/it will give (dar)
        "dirá ", // he/she/it will tell (decir, used for "tell " as well)
        "trabajará ", // he/she/it will work (trabajar)
        "llamará ", // he/she/it will call (llamar)
        "intentará ", // he/she/it will try (intentar)
        "preguntará ", // he/she/it will ask (preguntar)
        "necesitará ", // he/she/it will need (necesitar)
        "sentirá ", // he/she/it will feel (sentir)
        "se volverá ", // he/she/it will become (volverse)
        "dejará ", // he/she/it will leave (dejar)
        "pondrá ", // he/she/it will put (poner)
        "se referira a ", // he/she/it will mean (significar)
        "dejará ", // he/she/it will let (dejar, used for "let " as well)
        "mantendrá ", // he/she/it will keep (mantener)
        "empezará ", // he/she/it will begin (empezar)
        "parecerá ", // he/she/it will seem (parecer)
        "hablará ", // he/she/it will talk (hablar)
        "girará ", // he/she/it will turn (girar)
        "ayudará ", // he/she/it will help (ayudar)
        "empezará ", // he/she/it will start (empezar, used for "start " as well)
        "mostrará ", // he/she/it will show (mostrar)
        "oirá ", // he/she/it will hear (oir)
        "correrá ", // he/she/it will run (correr)
        "jugará ", // he/she/it will play (jugar)
        "moverá ", // he/she/it will move (mover)
        "gustará ", // he/she/it will like (gustar, though "le gustará" is more accurate)
        "creerá ", // he/she/it will believe (creer)
        "sostendrá ", // he/she/it will hold (sostener)
        "vivirá ", // he/she/it will live (vivir)
        "traerá ", // he/she/it will bring (traer)
        "escribirá ", // he/she/it will write (escribir)
        "proporcionará ", // he/she/it will provide (proporcionar)
        "se sentará ", // he/she/it will sit (sentarse)
        "estará de pie ", // he/she/it will stand (estar de pie, though this is more about being than standing)
        "perderá ", // he/she/it will lose (perder)
        "encontrará ", // he/she/it will meet (encontrar, used for "meet " as well)
        "pagará ", // he/she/it will pay (pagar)
        "incluirá ", // he/she/it will include (incluir)
        "continuará ", // he/she/it will continue (continuar)
        "cambiará ", // he/she/it will change (cambiar)
        "pondrá ", // he/she/it will set (poner, used for "set " as well)
        "liderará ", // he/she/it will lead (liderar)
        "aprenderá ", // he/she/it will learn (aprender)
        "entenderá ", // he/she/it will understand (entender)
        "mirará ", // he/she/it will watch (mirar)
        "seguirá ", // he/she/it will follow (seguir)
        "dejará de ", // he/she/it will stop (detener)
        "hablará ", // he/she/it will speak (hablar)
        "creará ", // he/she/it will create (crear)
        "permitirá ", // he/she/it will allow (permitir)
        "leerá ", // he/she/it will read (leer)
        "gastará ", // he/she/it will spend (gastar)
        "añadirá ", // he/she/it will add (añadir)
        "crecerá ", // he/she/it will grow (crecer)
        "abrirá ", // he/she/it will open (abrir)
        "caminará ", // he/she/it will walk (caminar)
        "ofrecerá ", // he/she/it will offer (ofrecer)
        "recordará ", // he/she/it will remember (recordar)
        "ganará ", // he/she/it will win (ganar)
        "aparecerá ", // he/she/it will appear (aparecer)
        "considerará ", // he/she/it will consider (considerar)
        "amará ", // he/she/it will love (amar)
        "comprará ", // he/she/it will buy (comprar)
        "esperará ", // he/she/it will wait (esperar)
        "morirá ", // he/she/it will die (morir)
        "enviará ", // he/she/it will send (enviar)
        "esperará ", // he/she/it will expect (esperar)
        "servirá ", // he/she/it will serve (servir)
        "quedará ", // he/she/it will stay (quedarse)
        "construirá ", // he/she/it will build (construir)
        "caerá ", // he/she/it will fall (caer)
        "cortará ", // he/she/it will cut (cortar)
        "matará ", // he/she/it will kill (matar)
        "alcanzará ", // he/she/it will reach (alcanzar)
        "permanecerá ", // he/she/it will remain (permanecer)
        "sugerirá ", // he/she/it will suggest (sugerir)
        "elevará ", // he/she/it will raise (elevar)
        "pasará ", // he/she/it will pass (pasar)
        "venderá ", // he/she/it will sell (vender)
        "requerirá ", // he/she/it will require (requerir)
        "decidirá ", // he/she/it will decide (decidir)
        "informará ", // he/she/it will report (informar)
        "devolverá ", // he/she/it will return (volver)
        "tirará ", // he/she/it will pull (tirar)
        "explicará ", // he/she/it will explain (explicar)
        "llevará ", // he/she/it will carry (llevar)
        "desarrollará ", // he/she/it will develop (desarrollar)
        "esperará ", // he/she/it will hope (esperar)
        "conducirá ", // he/she/it will drive (conducir)
        "romperá " // he/she/it will break (romper)
    ]
    
    let verbsSpanishThirdPersonPluralFuture = [
        "tendrán ", // they will have (tener)
        "harán ", // they will do (hacer)
        "dirán ", // they will say (decir)
        "irán ", // they will go (ir)
        "obtendrán ", // they will get (obtener)
        "harán ", // they will make (hacer again, same as do)
        "sabrán ", // they will know (saber)
        "pensarán ", // they will think (pensar)
        "verán ", // they will see (ver)
        "tomarán ", // they will take (tomar)
        "vendrán ", // they will come (venir)
        "querrán ", // they will want (querer)
        "mirarán ", // they will look (mirar)
        "usarán ", // they will use (usar)
        "encontrarán ", // they will find (encontrar)
        "darán ", // they will give (dar)
        "dirán ", // they will tell (decir, used for "tell " as well)
        "trabajarán ", // they will work (trabajar)
        "llamarán ", // they will call (llamar)
        "intentarán ", // they will try (intentar)
        "preguntarán ", // they will ask (preguntar)
        "necesitarán ", // they will need (necesitar)
        "sentirán ", // they will feel (sentir)
        "se volverán ", // they will become (volverse)
        "dejarán ", // they will leave (dejar)
        "pondrán ", // they will put (poner)
        "se referirán a ", // they will mean (significar)
        "dejarán ", // they will let (dejar, used for "let " as well)
        "mantendrán ", // they will keep (mantener)
        "empezarán ", // they will begin (empezar)
        "parecerán ", // they will seem (parecer)
        "hablarán ", // they will talk (hablar)
        "girarán ", // they will turn (girar)
        "ayudarán ", // they will help (ayudar)
        "empezarán ", // they will start (empezar, used for "start " as well)
        "mostrarán ", // they will show (mostrar)
        "oirán ", // they will hear (oir)
        "correrán ", // they will run (correr)
        "jugarán ", // they will play (jugar)
        "moverán ", // they will move (mover)
        "gustarán ", // they will like (gustar, though "les gustará" is more accurate)
        "creerán ", // they will believe (creer)
        "sostendrán ", // they will hold (sostener)
        "vivirán ", // they will live (vivir)
        "traerán ", // they will bring (traer)
        "escribirán ", // they will write (escribir)
        "proporcionarán ", // they will provide (proporcionar)
        "se sentarán ", // they will sit (sentarse)
        "estarán de pie ", // they will stand (estar de pie, though this is more about being than standing)
        "perderán ", // they will lose (perder)
        "encontrarán ", // they will meet (encontrar, used for "meet " as well)
        "pagarán ", // they will pay (pagar)
        "incluirán ", // they will include (incluir)
        "continuarán ", // they will continue (continuar)
        "cambiarán ", // they will change (cambiar)
        "pondrán ", // they will set (poner, used for "set " as well)
        "liderarán ", // they will lead (liderar)
        "aprenderán ", // they will learn (aprender)
        "entenderán ", // they will understand (entender)
        "mirarán ", // they will watch (mirar)
        "seguirán ", // they will follow (seguir)
        "dejarán de ", // they will stop (detener)
        "hablarán ", // they will speak (hablar)
        "crearán ", // they will create (crear)
        "permitirán ", // they will allow (permitir)
        "leerán ", // they will read (leer)
        "gastarán ", // they will spend (gastar)
        "añadirán ", // they will add (añadir)
        "crecerán ", // they will grow (crecer)
        "abrirán ", // they will open (abrir)
        "caminarán ", // they will walk (caminar)
        "ofrecerán ", // they will offer (ofrecer)
        "recordarán ", // they will remember (recordar)
        "ganarán ", // they will win (ganar)
        "aparecerán ", // they will appear (aparecer)
        "considerarán ", // they will consider (considerar)
        "amarán ", // they will love (amar)
        "comprarán ", // they will buy (comprar)
        "esperarán ", // they will wait (esperar)
        "morirán ", // they will die (morir)
        "enviarán ", // they will send (enviar)
        "esperarán ", // they will expect (esperar)
        "servirán ", // they will serve (servir)
        "quedarán ", // they will stay (quedarse)
        "construirán ", // they will build (construir)
        "caerán ", // they will fall (caer)
        "cortarán ", // they will cut (cortar)
        "matarán ", // they will kill (matar)
        "alcanzarán ", // they will reach (alcanzar)
        "permanecerán ", // they will remain (permanecer)
        "sugerirán ", // they will suggest (sugerir)
        "elevarán ", // they will raise (elevar)
        "pasarán ", // they will pass (pasar)
        "venderán ", // they will sell (vender)
        "requerirán ", // they will require (requerir)
        "decidirán ", // they will decide (decidir)
        "informarán ", // they will report (informar)
        "devolverán ", // they will return (volver)
        "tirarán ", // they will pull (tirar)
        "explicarán ", // they will explain (explicar)
        "llevarán ", // they will carry (llevar)
        "desarrollarán ", // they will develop (desarrollar)
        "esperarán ", // they will hope (esperar)
        "conducirán ", // they will drive (conducir)
        "romperán " // they will break (romper)
    ]
    
    let verbsSpanishFirstPersonPluralFuture = [
        "tendremos ", // we will have (tener)
        "haremos ", // we will do (hacer)
        "diremos ", // we will say (decir)
        "iremos ", // we will go (ir)
        "obtendremos ", // we will get (obtener)
        "haremos ", // we will make (hacer again, same as do)
        "sabremos ", // we will know (saber)
        "pensaremos ", // we will think (pensar)
        "veremos ", // we will see (ver)
        "tomaremos ", // we will take (tomar)
        "vendremos ", // we will come (venir)
        "querremos ", // we will want (querer)
        "miraremos ", // we will look (mirar)
        "usaremos ", // we will use (usar)
        "encontraremos ", // we will find (encontrar)
        "daremos ", // we will give (dar)
        "diremos ", // we will tell (decir, used for "tell " as well)
        "trabajaremos ", // we will work (trabajar)
        "llamaremos ", // we will call (llamar)
        "intentaremos ", // we will try (intentar)
        "preguntaremos ", // we will ask (preguntar)
        "necesitaremos ", // we will need (necesitar)
        "sentiremos ", // we will feel (sentir)
        "nos volveremos ", // we will become (volverse)
        "dejaremos ", // we will leave (dejar)
        "pondremos ", // we will put (poner)
        "nos referiremos a ", // we will mean (significar)
        "dejaremos ", // we will let (dejar, used for "let " as well)
        "mantendremos ", // we will keep (mantener)
        "empezaremos ", // we will begin (empezar)
        "pareceremos ", // we will seem (parecer)
        "hablaremos ", // we will talk (hablar)
        "giraremos ", // we will turn (girar)
        "ayudaremos ", // we will help (ayudar)
        "empezaremos ", // we will start (empezar, used for "start " as well)
        "mostraremos ", // we will show (mostrar)
        "oiremos ", // we will hear (oir)
        "correremos ", // we will run (correr)
        "jugaremos ", // we will play (jugar)
        "moveremos ", // we will move (mover)
        "gustaremos ", // we will like (gustar, though "nos gustará" is more accurate)
        "creeremos ", // we will believe (creer)
        "sostendremos ", // we will hold (sostener)
        "viviremos ", // we will live (vivir)
        "traeremos ", // we will bring (traer)
        "escribiremos ", // we will write (escribir)
        "proporcionaremos ", // we will provide (proporcionar)
        "nos sentaremos ", // we will sit (sentarse)
        "estaremos de pie ", // we will stand (estar de pie, though this is more about being than standing)
        "perderemos ", // we will lose (perder)
        "nos encontraremos ", // we will meet (encontrar, used for "meet " as well)
        "pagaremos ", // we will pay (pagar)
        "incluiremos ", // we will include (incluir)
        "continuaremos ", // we will continue (continuar)
        "cambiaremos ", // we will change (cambiar)
        "pondremos ", // we will set (poner, used for "set " as well)
        "lideraremos ", // we will lead (liderar)
        "aprenderemos ", // we will learn (aprender)
        "entenderemos ", // we will understand (entender)
        "miraremos ", // we will watch (mirar)
        "seguiremos ", // we will follow (seguir)
        "dejaremos de ", // we will stop (detener)
        "hablaremos ", // we will speak (hablar)
        "crearemos ", // we will create (crear)
        "permitiremos ", // we will allow (permitir)
        "leeremos ", // we will read (leer)
        "gastaremos ", // we will spend (gastar)
        "añadiremos ", // we will add (añadir)
        "creceremos ", // we will grow (crecer)
        "abriremos ", // we will open (abrir)
        "caminaremos ", // we will walk (caminar)
        "ofreceremos ", // we will offer (ofrecer)
        "recordaremos ", // we will remember (recordar)
        "ganaremos ", // we will win (ganar)
        "apareceremos ", // we will appear (aparecer)
        "consideraremos ", // we will consider (considerar)
        "amaremos ", // we will love (amar)
        "compraremos ", // we will buy (comprar)
        "esperaremos ", // we will wait (esperar)
        "moriremos ", // we will die (morir)
        "enviaremos ", // we will send (enviar)
        "esperaremos ", // we will expect (esperar)
        "serviremos ", // we will serve (servir)
        "quedaremos ", // we will stay (quedarse)
        "construiremos ", // we will build (construir)
        "caeremos ", // we will fall (caer)
        "cortaremos ", // we will cut (cortar)
        "mataremos ", // we will kill (matar)
        "alcanzaremos ", // we will reach (alcanzar)
        "permaneceremos ", // we will remain (permanecer)
        "sugeriremos ", // we will suggest (sugerir)
        "elevaremos ", // we will raise (elevar)
        "pasaremos ", // we will pass (pasar)
        "venderemos ", // we will sell (vender)
        "requeriremos ", // we will require (requerir)
        "decidiremos ", // we will decide (decidir)
        "informaremos ", // we will report (informar)
        "devolveremos ", // we will return (volver)
        "tiraremos ", // we will pull (tirar)
        "explicaremos ", // we will explain (explicar)
        "llevaremos ", // we will carry (llevar)
        "desarrollaremos ", // we will develop (desarrollar)
        "esperaremos ", // we will hope (esperar)
        "conduciremos ", // we will drive (conducir)
        "romperemos " // we will break (romper)
    ]
    
    let subjectsEnglish = ["I ", "You ", "He ", "She ", "We ", "They "]
    let preposiciones = ["hacia arriba ", "hacia afuera ", "hacia abajo ", "hacia adentro ", "hacia adelante ", "hacia atrás ", "hacia la derecha ", "hacia la casa "]
    let prepositions = ["up ", "out ", "down ", "in ", "on ", "back ", "right ", "home "]
    let verbsWithPrepositions = [
        "look ", // Common with up, out, back
        "jump ", // Common with up
        "hold ", // Common with up, on
        "go ", // Common with out, down, in, back
        "come ", // Common with out, down, in, back
        "walk ", // Common with out
        "run ", // Common with out
        "knock ", // Common with down
        "write ", // Common with down
        "bring ", // Common with in
        "move ", // Common with in
        "turn ", // Common with in, right
        "pull ", // Common with on
        "fall ", // Common with back
        "step " // Common with back
    ]
    let verbsWithPrepositionsThirdPerson = [
        "looks ", // Common with up, out, back
        "jumps ", // Common with up
        "holds ", // Common with up, on
        "goes ", // Common with out, down, in, back
        "comes ", // Common with out, down, in, back
        "walks ", // Common with out
        "runs ", // Common with out
        "knocks ", // Common with down
        "writes ", // Common with down
        "brings ", // Common with in
        "moves ", // Common with in
        "turns ", // Common with in, right
        "pulls ", // Common with on
        "falls ", // Common with back
        "steps " // Common with back
    ]
    let verbsWithPrepositionsFirstPersonSingular = [
        "miro ", // Common with up, out, back
        "salto ", // Common with up
        "sostengo ", // Common with up, on
        "voy ", // Common with out, down, in, back
        "vengo ", // Common with out, down, in, back
        "camino ", // Common with out
        "corro ", // Common with out
        "golpeo ", // Common with down
        "escribo ", // Common with down
        "traigo ", // Common with in
        "muevo ", // Common with in
        "giro ", // Common with in, right
        "tiro ", // Common with on
        "caigo ", // Common with back
        "doy un paso " // Common with back
    ]
    let verbsWithPrepositionsSecondPersonSingular = [
        "miras ", // Common with up, out, back
        "saltas ", // Common with up
        "sostienes ", // Common with up, on
        "vas ", // Common with out, down, in, back
        "vienes ", // Common with out, down, in, back
        "caminas ", // Common with out
        "corres ", // Common with out
        "golpeas ", // Common with down
        "escribes ", // Common with down
        "traes ", // Common with in
        "mueves ", // Common with in
        "giras ", // Common with in, right
        "tiras ", // Common with on
        "caes ", // Common with back
        "das un paso " // Common with back
    ]
    let verbsWithPrepositionsThirdPersonSingular = [
        "mira ", // Common with up, out, back
        "salta ", // Common with up
        "sostiene ", // Common with up, on
        "va ", // Common with out, down, in, back
        "viene ", // Common with out, down, in, back
        "camina ", // Common with out
        "corre ", // Common with out
        "golpea ", // Common with down
        "escribe ", // Common with down
        "trae ", // Common with in
        "mueve ", // Common with in
        "gira ", // Common with in, right
        "tira ", // Common with on
        "cae ", // Common with back
        "da un paso " // Common with back
    ]
    let verbsWithPrepositionsThirdPersonPlural = [
        "miran ", // Common with up, out, back
        "saltan ", // Common with up
        "sostienen ", // Common with up, on
        "van ", // Common with out, down, in, back
        "vienen ", // Common with out, down, in, back
        "caminan ", // Common with out
        "corren ", // Common with out
        "golpean ", // Common with down
        "escriben ", // Common with down
        "traen ", // Common with in
        "mueven ", // Common with in
        "giran ", // Common with in, right
        "tiran ", // Common with on
        "caen ", // Common with back
        "dan un paso " // Common with back
    ]
    let verbsWithPrepositionsFirstPersonPlural = [
        "miramos ", // Common with up, out, back
        "saltamos ", // Common with up
        "sostenemos ", // Common with up, on
        "vamos ", // Common with out, down, in, back
        "venimos ", // Common with out, down, in, back
        "caminamos ", // Common with out
        "corremos ", // Common with out
        "golpeamos ", // Common with down
        "escribimos ", // Common with down
        "traemos ", // Common with in
        "movemos ", // Common with in
        "giramos ", // Common with in, right
        "tiramos ", // Common with on
        "caemos ", // Common with back
        "damos un paso " // Common with back
    ]
    let verbsAbout = [
        "run ",
        "walk ",
        "wander ",
        "roam ",
        "move ",
        "look ",
        "search ",
        "scatter ",
        "rummage ",
        "mill ",
        "stroll ",
        "rush "
    ]
    let verbsThirdPersonAbout = [
        "runs ",
        "walks ",
        "wanders ",
        "roams ",
        "moves ",
        "looks ",
        "searches ",
        "scatters ",
        "rummages ",
        "mills ",
        "strolls ",
        "rushes "
    ]
    let firstPersonSingularAbout = [
        "corro ", // run
        "camino ", // walk
        "vago ", // wander
        "deambulo ", // roam
        "me muevo ", // move
        "busco ", // look
        "busco ", // search
        "esparzo ", // scatter
        "rebusco ", // rummage
        "me muevo sin rumbo ", // mill (not a direct translation, as "milling about " is more idiomatic)
        "paseo ", // stroll
        "me apresuro " // rush
    ]
    let firstPersonPluralAbout = [
        "corremos ",
        "caminamos ",
        "vagamos ",
        "deambulamos ",
        "nos movemos ",
        "buscamos ",
        "buscamos ",
        "esparcimos ",
        "rebuscamos ",
        "nos movemos sin rumbo ",
        "paseamos ",
        "nos apresuramos "
    ]
    let thirdPersonSingularAbout = [
        "corre ",
        "camina ",
        "vaga ",
        "deambula ",
        "se mueve ",
        "busca ",
        "busca ",
        "esparce ",
        "rebusca ",
        "se mueve sin rumbo ",
        "pasea ",
        "se apresura "
    ]
    let thirdPersonPluralAbout = [
        "corren ",
        "caminan ",
        "vagan ",
        "deambulan ",
        "se mueven ",
        "buscan ",
        "buscan ",
        "esparcen ",
        "rebuscan ",
        "se mueven sin rumbo ",
        "pasean ",
        "se apresuran "
    ]
    let secondPersonSingularAbout = [
        "corres ",
        "caminas ",
        "vagas ",
        "deambulas ",
        "te mueves ",
        "buscas ",
        "buscas ",
        "esparces ",
        "rebuscas ",
        "te mueves sin rumbo ",
        "paseas ",
        "te apresuras "
    ]
    
    func prepAdv() {}
    
    let adverbsLastPos = ["now ", "more ", "also ", "here ",
                          "well ", "there ", "again ", "today ", "far ",
                          "often ", "later ", "much ", "once ", "together ",
                          "around ", "enough ", "little ", "sometimes ", "less "]
    let adverbsMidPos = ["just ", "now ", "then ", "only ",
                         "even ", "still ", "too ", "never ", "really ", "always ",
                         "maybe ", "probably ", "actually ", "perhaps ", "finally "]
    let adverbsMidPosSp = ["justo ", "ahora ", "entonces ", "sólo ", "incluso ", "aún ", "también ",
                           "nunca ", "realmente ", "siempre ", "quizás ", "probablemente ", "de hecho ", "tal vez ", "finalmente "]
    
    let adverbsInitialPos = ["how ", "when ", "why ",
                             "where ", "however ","as "]
    
    let questionWordsWithElse = ["What else ", "Who else ", "Where else ", "When else ", "Why else ", "How else "]
    let questionWordsWithElseSpanish = ["¿Qué más?", "¿Quién más?", "¿Dónde más?", "¿Cuándo más?", "¿Por qué más?", "¿Cómo más?"]
    let phrasesBeforeAgo = [
        "a few seconds ",
        "several minutes ",
        "a couple of hours ",
        "a few days ",
        "several weeks ",
        "a couple of months ",
        "a few years ",
        "many decades ",
        "several centuries ",
        "over a millennium ",
        "a decade ",
        "half a century ",
        "one year ",
        "two decades ",
        "three hours ",
        "four weeks ",
        "five minutes ",
        "six months "
    ]
    
    let phrasesBeforeAgoSpanish = [
        "unos segundos ",
        "varios minutos ",
        "un par de horas ",
        "unos días ",
        "varias semanas ",
        "un par de meses ",
        "unos años ",
        "muchas décadas ",
        "varios siglos ",
        "más de un milenio ",
        "una década ",
        "medio siglo ",
        "un año ",
        "dos décadas ",
        "tres horas ",
        "cuatro semanas ",
        "cinco minutos ",
        "seis meses "
    ]
    
    let verbsWithLong = ["wait ", "stay ", "last ", "take ", "work ", "live ", "survive ", "endure ", "continue "]
    
    let verbsWithLongThirdPerson = ["waits ", "stays ", "lasts ", "takes ", "works ", "lives ", "survives ", "endures ", "continues "]
    let firstPersonSingular = ["espero ", "me quedo ", "duro ", "tomo ", "trabajo ", "vivo ", "sobrevivo ", "soporto ", "continúo "]
    let firstPersonPlural = ["esperamos ", "nos quedamos ", "duramos ", "tomamos ", "trabajamos ", "vivimos ", "sobrevivimos ", "soportamos ", "continuamos "]
    let secondPersonSingular = ["esperas ", "te quedas ", "duras ", "tomas ", "trabajas ", "vives ", "sobrevives ", "soportas ", "continúas "]
    let thirdPersonSingular = ["espera ", "se queda ", "dura ", "toma ", "trabaja ", "vive ", "sobrevive ", "soporta ", "continúa "]
    let thirdPersonPlural = ["esperan ", "se quedan ", "duran ", "toman ", "trabajan ", "viven ", "sobreviven ", "soportan ", "continúan "]
    let verbsWithOverThirdPerson = [
        "flies over ",
        "jumps over ",
        "hovers over ",
        "passes over ",
        "glides over ",
        "looks over ",
        "climbs over ",
        "bends over ",
        "reaches over "
    ]
    let verbsWithOver = [
        "fly over ",
        "jump over ",
        "hover over ",
        "pass over ",
        "glide over ",
        "look over ",
        "climb over ",
        "bend over ",
        "reach over "
    ]
    let firstPersonSingularSpanish = [
        "vuelo sobre ", // I fly over
        "salto sobre ", // I jump over
        "floto sobre ", // I hover over
        "paso sobre ", // I pass over
        "planeo sobre ", // I glide over
        "miro sobre ", // I look over
        "escalo ", // I climb over
        "me inclino sobre ", // I bend over
        "alcanzo sobre " // I reach over
    ]
    let firstPersonPluralSpanish = [
        "volamos sobre ", // We fly over
        "saltamos sobre ", // We jump over
        "flotamos sobre ", // We hover over
        "pasamos sobre ", // We pass over
        "planeamos sobre ", // We glide over
        "miramos sobre ", // We look over
        "escalamos ", // We climb over
        "nos inclinamos sobre ", // We bend over
        "alcanzamos sobre " // We reach over
    ]
    let thirdPersonSingularSpanish = [
        "vuela sobre ", // He/She flies over
        "salta sobre ", // He/She jumps over
        "flota sobre ", // He/She hovers over
        "pasa sobre ", // He/She passes over
        "planea sobre ", // He/She glides over
        "mira sobre ", // He/She looks over
        "escala ", // He/She climbs over
        "se inclina sobre ", // He/She bends over
        "alcanza sobre " // He/She reaches over
    ]
    let thirdPersonPluralSpanish = [
        "vuelan sobre ", // They fly over
        "saltan sobre ", // They jump over
        "flotan sobre ", // They hover over
        "pasan sobre ", // They pass over
        "planean sobre ", // They glide over
        "miran sobre ", // They look over
        "escalan ", // They climb over
        "se inclinan sobre ", // They bend over
        "alcanzan sobre " // They reach over
    ]
    
    let secondPersonSingularSpanish = [
        "vuelas sobre ", // You fly over
        "saltas sobre ", // You jump over
        "flotas sobre ", // You hover over
        "pasas sobre ", // You pass over
        "planeas sobre ", // You glide over
        "miras sobre ", // You look over
        "escalas ", // You climb over
        "te inclinas sobre ", // You bend over
        "alcanzas sobre " // You reach over
    ]
    let objectsBeforeHappen = [
        "the event ",
        "the consequence ",
        "the incident ",
        "the accident ",
        "the situation ",
        "the phenomenon ",
        "the occurrence ",
        "the disaster ",
        "the change ",
        "the development ",
        "the outcome ",
        "the anomaly ",
        "the emergency ",
        "the crisis ",
        "the adventure ",
        "the action ",
        "the result ",
        "the episode ",
        "the scenario ",
        "the instance "
    ]
    let phrasesAfterHappen = [
        "every day ",
        "almost never ",
        "in the morning ",
        "at night ",
        "once in a while ",
        "every now and then ",
        "during the storm ",
        "when it rains ",
        "without warning ",
        "all of a sudden ",
        "from time to time ",
        "at the worst possible moment ",
        "right before our eyes ",
        "out of the blue ",
        "in the blink of an eye ",
        "under certain conditions ",
        "when you least expect it ",
        "on a daily basis ",
        "in an instant ",
        "at any moment "
    ]
    let phrasesHappen = [
        "todos los días ",
        "casi nunca ",
        "por la mañana ",
        "por la noche ",
        "de vez en cuando ",
        "de tanto en tanto ",
        "durante la tormenta ",
        "cuando llueve ",
        "sin previo aviso ",
        "de repente ",
        "de vez en cuando ",
        "en el peor momento posible ",
        "justo delante de nuestros ojos ",
        "de la nada ",
        "en un abrir y cerrar de ojos ",
        "bajo ciertas condiciones ",
        "cuando menos lo esperas ",
        "a diario ",
        "en un instante ",
        "en cualquier momento "
    ]
    let objetosHappen = [
        "el evento ",
        "la consecuencia ",
        "el incidente ",
        "el accidente ",
        "la situación ",
        "el fenómeno ",
        "el suceso ",
        "el desastre ",
        "el cambio ",
        "el desarrollo ",
        "el resultado ",
        "la anomalía ",
        "la emergencia ",
        "la crisis ",
        "la aventura ",
        "la acción ",
        "el resultado ",
        "el episodio ",
        "el escenario ",
        "el caso "
    ]
    let thereBeVariations = [
        "there is ",
        "there are ",
        "there was ",
        "there were ",
        "there will be ",
        "there would be ",
        "there could be ",
        "there should be ",
        "there might be ",
        "there has been ",
        "there have been ",
        "there had been ",
        "there will have been ",
        "there would have been ",
        "there could have been ",
        "there should have been ",
        "there might have been ",
        "there is going to be ",
        "there was going to be "
    ]
    let thereBeVariationsEnglishSpanish = [
        "there is - hay ",
        "there are - hay ",
        "there was - había ",
        "there were - habían ",
        "there will be - habrá",
        "there will be - habrán ",
        "there would be - habría ",
        "there could be - podría haber ",
        "there should be - debería haber ",
        "there might be - quiza haya ",
        "there has been - ha habido ",
        "there have been - han habido ",
        "there had been - había habido ",
        "there will have been - habrá habido ",
        "there would have been - habría habido ",
        "there could have been - pudo haber habido ",
        "there should have been - debió haber habido ",
        "there might have been - quiza haya habido ",
        "there is going to be - va a haber ",
        "there are going to be - van a haber ",
        "there was going to be - iba a haber ",
        "there were going to be - iban a haber "
    ]
    let verbsWithOff = [
        "take off ",
        "pull off ",
        "kick off ",
        "blast off ",
        "brush off ",
        "call off ",
        "cool off ",
        "cut off ",
        "doze off ",
        "drop off ",
        "finish off ",
        "get off ",
        "give off ",
        "go off ",
        "hold off ",
        "jump off ",
        "knock off ",
        "lay off ",
        "log off ",
        "pay off ",
        "peel off ",
        "put off ",
        "rip off ",
        "rub off ",
        "run off ",
        "send off ",
        "set off ",
        "shake off ",
        "show off ",
        "sleep off ",
        "switch off ",
        "take off ",
        "tear off ",
        "tell off ",
        "think off ",
        "throw off ",
        "turn off ",
        "warn off ",
        "wash off ",
        "wipe off ",
        "work off ",
        "write off "
    ]
    let verbsWithOffSpanish = [
        "despegar ", // take off
        "lograr ", // pull off
        "iniciar ", // kick off
        "despegar ", // blast off
        "desprender ", // brush off
        "cancelar ", // call off
        "enfriarse ", // cool off
        "cortar ", // cut off
        "dormirse ", // doze off
        "dejar ", // drop off
        "terminar ", // finish off
        "bajar ", // get off
        "emitir ", // give off
        "explotar ", // go off
        "aplazar ", // hold off
        "saltar ", // jump off
        "terminar ", // knock off
        "despedir ", // lay off
        "cerrar sesión ", // log off
        "pagar ", // pay off
        "pelar ", // peel off
        "posponer ", // put off
        "estafar ", // rip off
        "frotar ", // rub off
        "huir ", // run off
        "despedir ", // send off
        "provocar ", // set off
        "sacudirse ", // shake off
        "presumir ", // show off
        "recuperarse ", // sleep off
        "apagar ", // switch off
        "despegar ", // take off again, but could use "arrancar " for variety
        "arrancar ", // tear off
        "reprender ", // tell off
        "idear ", // think off (no direct translation, "idear " is "to devise ")
        "liberarse ", // throw off
        "apagar ", // turn off
        "advertir ", // warn off
        "lavar ", // wash off
        "limpiar ", // wipe off
        "compensar ", // work off
        "cancelar " // write off
    ]
    let phrasalVerbs = [
        "act up ",
        "add up ", // trans
        "add up ", // intrans
        "back down ",
        "bear with ",
        "blow up ",
        "break down ", // trans
        "break down ", // intrans
        "bring up ",
        "call off ",
        "calm down ", // trans
        "calm down ", // intrans
        "carry on ",
        "catch up to ",
        "check out ",
        "come across ",
        "come back ",
        "cut back on ",
        "deal with ",
        "drop off ",
        "eat out ",
        "fall apart ",
        "fill in ",
        "find out ", // trans
        "find out ", // intrans
        "get along ",
        "give back ", // trans
        "give back ", // intrans
        "go ahead ",
        "hang out ",
        "hold on ",
        "keep off ",
        "kick off ",
        "lay off ",
        "look into ",
        "make up ",
        "move on ",
        "pay back ",
        "pick up ",
        "put away ",
        "run out ",
        "set up ",
        "show off ",
        "stand out ",
        "take off ",
        "talk over ",
        "think over ",
        "throw away ",
        "try on ",
        "turn down ",
        "use up ",
        "wake up ",
        "walk out ",
        "work out ",
        "write down "
    ]
    let phrasalVerbsThirdPerson = [
        "acts up ",
        "adds up ", // trans
        "adds up ", // intrans
        "backs down ",
        "bears with ",
        "blows up ",
        "breaks down ", // trans
        "breaks down ", // intrans
        "brings up ",
        "calls off ",
        "calms down ", // trans
        "calms down ", // intrans
        "carries on ",
        "catches up to ",
        "checks out ",
        "comes across ",
        "comes back ",
        "cuts back on ",
        "deals with ",
        "drops off ",
        "eats out ",
        "falls apart ",
        "fills in ",
        "finds out ", // trans
        "finds out ", // intrans
        "gets along ",
        "gives back ", // trans
        "gives back ", // intrans
        "goes ahead ",
        "hangs out ",
        "holds on ",
        "keeps off ",
        "kicks off ",
        "lays off ",
        "looks into ",
        "makes up ",
        "moves on ",
        "pays back ",
        "picks up ",
        "puts away ",
        "runs out ",
        "sets up ",
        "shows off ",
        "stands out ",
        "takes off ",
        "talks over ",
        "thinks over ",
        "throws away ",
        "tries on ",
        "turns down ",
        "uses up ",
        "wakes up ",
        "walks out ",
        "works out ",
        "writes down "
    ]
    let phrasalVerbsSpanish = [
        "portarse mal ",
        "sumar ",
        "ceder ",
        "aguantar con ",
        "explotar ",
        "descomponerse ",
        "mencionar ",
        "cancelar ",
        "calmarse ",
        "continuar ",
        "ponerse al día con ",
        "revisar ",
        "encontrarse con ",
        "volver ",
        "reducir ",
        "lidiar con ",
        "dejar en un lugar ",
        "comer fuera ",
        "desmoronarse ",
        "rellenar ",
        "descubrir ", // trans
        "descubrir ", // intrans
        "llevarse bien ",
        "devolver ", // trans
        "devolver ", // intrans
        "proceder ",
        "pasar el rato ",
        "esperar ",
        "mantenerse alejado ",
        "iniciar ",
        "despedir ",
        "investigar ",
        "inventar ",
        "seguir adelante ",
        "devolver dinero ",
        "recoger ",
        "guardar ",
        "agotarse ",
        "establecer ",
        "presumir ",
        "destacar ",
        "despegar ",
        "discutir ",
        "considerar ",
        "tirar ",
        "probarse ",
        "rechazar ",
        "consumir todo ",
        "despertarse ",
        "caminar fuera ",
        "ejercitarse ",
        "anotar "
    ]
    let phrasalVerbSpanishObjects = [
        ["portarse mal, interrumpir ", "portarse mal, interrumpir ", "volver a fallar ", "surgir de repente "], // act up
        ["cuadran ", "suman ", "suman rápidamente ", "se acumulan "], // add up
        ["retractarse, echarse para atrás ", "ceder, retractarse ", "ceder, bajar sus exigencias ", "rendirse ante la competencia "], // back down
        ["ten paciencia conmigo por un momento ", "ten paciencia con este retraso ", "disculpe las molestias ", "ten paciencia conmigo "], // bear with
        ["inflar ", "explotar, volar ", "estallar, empeorar ", "fracasar "], // blow up
        ["venirse abajo emocionalmente ", "averiarse ", "romper a llorar ", "averiarse "], // break down
        ["sacar un tema delicado ", "mencionar recuerdos de la infancia ", "sacar a colación la propuesta ", "mencionar el asunto "], // bring up
        ["cancelar ", "cancelar ", "cancelar ", "cancelar "], // call off
        ["cálmate / tranquilizate antes de continuar ", "cálmate / tranquilizate después de las noticias ", "cálmate / tranquilizate y piensa con claridad ", "calma / tranquiliza a tu hijo "], // calm down
        ["continúa con tu trabajo ", "continúa con el plan ", "sigue adelante a pesar de las dificultades ", "continúa la tradición "], // carry on
        ["ponerse al día con viejos amigos ", "ponerse al día con las noticias ", "ponerse al día con el trabajo ", "ponerse al día con la serie "] // catch up
    ]
    let phrasalVerbObjects = [
        ["in class ", "during the meeting ", "again ", "unexpectedly "], // act up
        ["the numbers ", "the expenses "], // add up trans
        ["to a total ", "quickly "], // add up intrans
        ["from a challenge ", "in an argument ", "from their demands ", "from the competition "], // back down
        ["me for a moment ", "this delay ", "the inconvenience ", "me "], // bear with
        ["the balloon ", "the building ", "the argument ", "the project "], // blow up
        ["the report ", "the information ", "the situation "], // break down trans
        ["emotionally ", "in the middle of the wake ", "with my friends "], // break down intrans
        ["a sensitive topic ", "childhood memories ", "the proposal ", "the issue "], // bring up
        ["the meeting ", "the wedding ", "the event ", "the deal "], // call off
        ["before we continue ", "after the news ", "to think clearly "], // calm down intrans
        ["him ", "her ", "them ", "your friend ", "your child "], // calm down trans
        ["with your work ", "with the plan ", "despite the difficulties ", "the tradition "], // carry on
        ["with old friends ", "on the news ", "with work ", "with the series "], // catch up
        ["the new cafe ", "this book from the library ", "the latest movie ", "the view from here "], // check out
        ["an old photo ", "a rare species ", "a great deal ", "a fascinating story "], // come across
        ["from vacation ", "to win ", "to visit ", "with a vengeance "], // come back
        ["on spending ", "on sweets ", "on screen time ", "on water usage "], // cut back
        ["the problem directly ", "customer complaints ", "stress ", "the consequences "], // deal with
        ["the kids at school ", "a package ", "a friend at the airport ", "energy levels "], // drop off
        ["at a fancy restaurant ", "with friends ", "tonight ", "once a week "], // eat out
        ["the plan ", "the cake ", "the relationship ", "under pressure "], // fall apart
        ["a form ", "for someone ", "the blanks ", "a gap in knowledge "], // fill in
        ["the truth ", "the secret ", "the results "], // find out trans
        ["about the secret ", "in the morning ", "what happened "], // find out intrans
        ["with coworkers ", "with the neighbors ", "well with others ", "with family members "], // get along
        ["the borrowed book ", "the money "], // give back trans
        ["to the community ", "to those in need "], // give back intrans
        ["with the plan ", "and start without me ", "with the presentation ", "with your idea "], // go ahead
        ["with friends ", "at the mall ", "at the park ", "online "], // hang out
        ["a moment ", "to the railing ", "to your dreams ", "for the next available agent "], // hold on
        ["the grass ", "private property ", "the topic ", "the weight "], // keep off
        ["the meeting ", "the party ", "the project ", "the game "], // kick off
        ["workers ", "the criticism ", "the sweets ", "the pressure "], // lay off
        ["the matter ", "the future ", "the mirror ", "the possibilities "], // look into
        ["a story ", "after a fight ", "your mind ", "a bed "], // make up
        ["to the next topic ", "from this place ", "after a breakup ", "with your life "], // move on
        ["the loan ", "a friend ", "the favor ", "money owed "], // pay back
        ["the pace ", "a language ", "groceries ", "a package "], // pick up
        ["your clothes ", "the dishes ", "savings ", "a book "], // put away
        ["of time ", "of milk ", "of patience ", "of options "], // run out
        ["a meeting ", "equipment ", "a company ", "an account "], // set up
        ["a new car ", "skills ", "a dance move ", "a collection "], // show off
        ["in a crowd ", "from the competition ", "with bright colors ", "for your beliefs "], // stand out
        ["early from work ", "a sticker ", "on a trip ", "clothes quickly "], // take off
        ["the plan ", "the problem ", "the details ", "the situation "], // talk over
        ["the offer ", "the proposal ", "the decision ", "the consequences "], // think over
        ["the trash ", "old clothes ", "unused items ", "waste "], // throw away
        ["clothes ", "a hat ", "shoes ", "a new style "], // try on
        ["the volume ", "an offer ", "the heat ", "an invitation "], // turn down
        ["all the milk ", "the battery ", "resources ", "your energy "], // use up
        ["early ", "late ", "the neighbors ", "refreshed "], // wake up
        ["of the meeting ", "on a job ", "of the cinema ", "in protest "], // walk out
        ["at the gym ", "a problem ", "a solution ", "relationship issues "], // work out
        ["the address ", "your thoughts ", "a reminder ", "notes "] // write down
    ]
    let phrasalVerbObjectsSpanish = [
        ["en clase ", "durante la reunión ", "de nuevo ", "inesperadamente "], // act up
        ["los números ", "los gastos "], // add up
        ["a un total ", "rápidamente "], // add up
        ["de un desafío ", "en una discusión ", "de sus demandas ", "de la competencia "], // back down
        ["aguántame un momento ", "con este retraso ", "con la molestia ", "conmigo "], // bear with
        ["el globo ", "el edificio ", "la discusión ", "el proyecto "], // blow up
        ["el reporte ", "la información ", "la situación "], // break down trans
        ["emocionalmente ", "en medio del velorio ", "con mis amigos "], // break down intrans
        ["un tema sensible ", "recuerdos de la infancia ", "la propuesta ", "el asunto "], // bring up
        ["la reunión ", "la boda ", "el evento ", "el acuerdo "], // call off
        ["antes de que continuemos ", "después de las noticias ", "para pensar con claridad "], // calm down
        ["a él ", "a ella ", "a ellos ", "a tu amigo ", "a tu hijo "], // calm down
        ["con tu trabajo ", "con el plan ", "a pesar de las dificultades ", "la tradición "], // carry on
        ["con viejos amigos ", "en las noticias ", "con el trabajo ", "con la serie "], // catch up
        ["el nuevo café ", "este libro de la biblioteca ", "la última película ", "la vista desde aquí "], // check out
        ["una foto antigua ", "una especie rara ", "una gran oferta ", "una historia fascinante "], // come across
        ["de vacaciones ", "para ganar ", "para visitar ", "con venganza "], // come back
        ["en gastos ", "en dulces ", "en tiempo de pantalla ", "en el consumo de agua "], // cut back
        ["el problema directamente ", "quejas de clientes ", "estrés ", "las consecuencias "], // deal with
        ["los niños en la escuela ", "un paquete ", "un amigo en el aeropuerto ", "niveles de energía "], // drop off
        ["en un restaurante elegante ", "con amigos ", "esta noche ", "una vez a la semana "], // eat out
        ["el plan ", "el pastel ", "la relación ", "bajo presión "], // fall apart
        ["un formulario ", "por alguien ", "los espacios en blanco ", "una laguna en el conocimiento "], // fill in
        ["la verdad ", "el secreto ", "los resultados "], // find out trans
        ["sobre el secreto ", "en la mañana ", "lo qué pasó "], // find out intrans
        ["con compañeros de trabajo ", "con los vecinos ", "bien con otros ", "con miembros de la familia "], // get along
        ["el libro prestado ", "el dinero "], // give back trans
        ["a la comunidad ", "a los necesitados "], // give back intrans
        ["con el plan ", "y comienza sin mí ", "con la presentación ", "con tu idea "], // go ahead
        ["con amigos ", "en el centro comercial ", "en el parque ", "en línea "], // hang out
        ["un momento ", "al pasamanos ", "a tus sueños ", "para el próximo agente disponible "], // hold on
        ["el césped ", "propiedad privada ", "el tema ", "el peso "], // keep off
        ["la reunión ", "la fiesta ", "el proyecto ", "el juego "], // kick off
        ["trabajadores ", "las críticas ", "los dulces ", "la presión "], // lay off
        ["el asunto ", "el futuro ", "el espejo ", "las posibilidades "], // look into
        ["una historia ", "después de una pelea ", "tu decisión ", "una cama "], // make up
        ["al siguiente tema ", "de este lugar ", "después de una ruptura ", "con tu vida "], // move on
        ["el préstamo ", "a un amigo ", "el favor ", "dinero adeudado "], // pay back
        ["el ritmo ", "un idioma ", "comestibles ", "un paquete "], // pick up
        ["tu ropa ", "los platos ", "ahorros ", "un libro "], // put away
        ["de tiempo ", "de leche ", "de paciencia ", "de opciones "], // run out
        ["una reunión ", "equipo ", "una empresa ", "una cuenta "], // set up
        ["un auto nuevo ", "habilidades ", "un movimiento de baile ", "una colección "], // show off
        ["en una multitud ", "de la competencia ", "con colores brillantes ", "por tus creencias "], // stand out
        ["temprano del trabajo ", "una etiqueta ", "en un viaje ", "ropa rápidamente "], // take off
        ["el plan ", "el problema ", "los detalles ", "la situación "], // talk over
        ["la oferta ", "la propuesta ", "la decisión ", "las consecuencias "], // think over
        ["la basura ", "ropa vieja ", "artículos no usados ", "desperdicios "], // throw away
        ["ropa ", "un sombrero ", "zapatos ", "un nuevo estilo "], // try on
        ["el volumen ", "una oferta ", "el calor ", "una invitación "], // turn down
        ["toda la leche ", "la batería ", "recursos ", "tu energía "], // use up
        ["temprano ", "tarde ", "a los vecinos ", "refrescado "], // wake up
        ["de la reunión ", "de un trabajo ", "del cine ", "en protesta "], // walk out
        ["en el gimnasio ", "un problema ", "una solución ", "problemas de relación "], // work out
        ["la dirección ", "tus pensamientos ", "un recordatorio ", "notas "] // write down
    ]
    
    let phrasalVerbsSpanishFirstPerson: [String] = [
        "me porto mal ",
        "sumo ", // trans
        "sumo ", // intrans
        "cedo ",
        "tengo paciencia ",
        "explotó",
        "analizo ", // trans
        "me descompongo ", // intrans
        "menciono ",
        "cancelo ",
        "me calmo ", // trans
        "calmo ", // intrans
        "continúo ",
        "me pongo al día ",
        "reviso ",
        "me encuentro con ",
        "vuelvo ",
        "reduzco ",
        "lido con ",
        "dejo en un lugar ",
        "como fuera ",
        "me desmorono ",
        "relleno ",
        "descubro ", // trans
        "descubro ", // intrans
        "me llevo bien ",
        "regreso ", // trans
        "devuelvo ", // intrans
        "procedo ",
        "paso el rato ",
        "espero ",
        "me mantengo alejado ",
        "inicio ",
        "despido ",
        "investigo ",
        "invento ",
        "sigo adelante ",
        "devuelvo dinero ",
        "recojo ",
        "guardo ",
        "se me agota ",
        "establezco ",
        "presumo ",
        "destaco ",
        "despego ",
        "discuto ",
        "considero ",
        "tiro ",
        "me pruebo ",
        "rechazo ",
        "consumo ",
        "me despierto ",
        "camino fuera ",
        "me ejercito ",
        "anoto "
    ]
    
    let phrasalVerbsSpanishSecondPerson: [String] = [
        "te portas mal ",
        "sumas ", // trans
        "sumas ", // intrans
        "cedes ",
        "tienes paciencia ",
        "explotas ",
        "analizas ", // trans
        "te descompones ", // intrans
        "mencionas ",
        "cancelas ",
        "te calmas ", // trans
        "calmas ", // intrans
        "continúas ",
        "te pones al día ",
        "revisas ",
        "te encuentras con ",
        "vuelves ",
        "reduces ",
        "lidas con ",
        "dejas en un lugar ",
        "comes fuera ",
        "te desmoronas ",
        "rellenas ",
        "descubres ", // trans
        "descubres ", // intrans
        "te llevas bien ",
        "regresas ", // trans
        "devuelves ", // intrans
        "procedes ",
        "pasas el rato ",
        "esperas ",
        "te mantienes alejado ",
        "inicias ",
        "despides ",
        "investigas ",
        "inventas ",
        "sigues adelante ",
        "devuelves dinero ",
        "recoges ",
        "guardas ",
        "se te agota ",
        "estableces ",
        "presumes ",
        "destacas ",
        "despegas ",
        "discutes ",
        "consideras ",
        "tiras ",
        "te pruebas ",
        "rechazas ",
        "consumes ",
        "te despiertas ",
        "caminas fuera ",
        "te ejercitas ",
        "anotas "
    ]
    
    let phrasalVerbsSpanishThirdPerson: [String] = [
        "se porta mal ",
        "suma ", // trans
        "suma ", // intrans
        "cede ",
        "tiene paciencia ",
        "explota ",
        "analiza ", // trans
        "se descompone ", // intrans
        "menciona ",
        "cancela ",
        "se calma ", // trans
        "calma ", // intrans
        "continúa ",
        "se pone al día con ",
        "revisa ",
        "se encuentra con ",
        "vuelve ",
        "reduce ",
        "lida con ",
        "deja en un lugar ",
        "come fuera ",
        "se desmorona ",
        "rellena ",
        "descubre ", // trans
        "descubre ", // intrans
        "se lleva bien ",
        "regresa ", // trans
        "devuelve ", // intrans
        "procede ",
        "pasa el rato ",
        "espera ",
        "se mantiene alejado ",
        "inicia ",
        "despide ",
        "investiga ",
        "inventa ",
        "sigue adelante ",
        "devuelve dinero ",
        "recoge ",
        "guarda ",
        "se le agota ",
        "establece ",
        "presume ",
        "destaca ",
        "despega ",
        "discute ",
        "considera ",
        "tira ",
        "se prueba ",
        "rechaza ",
        "consume ",
        "se despierta ",
        "camina fuera ",
        "se ejercita ",
        "anota "
    ]
    
    let phrasalVerbsSpanishThirdPersonPlural: [String] = [
        "se portan mal ",
        "suman ", // trans
        "suman ", // intrans
        "ceden ",
        "tienen paciencia ",
        "explotan ",
        "analizan ", // trans
        "se descomponen ", // intrans
        "mencionan ",
        "cancelan ",
        "se calman ", // trans
        "calman ", // intrans
        "continúan ",
        "se ponen al día ",
        "revisan ",
        "se encuentran con ",
        "vuelven ",
        "reducen ",
        "lidan con ",
        "dejan en un lugar ",
        "comen fuera ",
        "se desmoronan ",
        "rellenan ",
        "descubren ", // trans
        "descubren ", // intrans
        "se llevan bien ",
        "regresan ", // trans
        "se devuelven ", // intrans
        "proceden ",
        "pasan el rato ",
        "esperan ",
        "se mantienen alejados ",
        "inician ",
        "despiden ",
        "investigan ",
        "inventan ",
        "siguen adelante ",
        "devuelven dinero ",
        "recogen ",
        "guardan ",
        "se les agota ",
        "establecen ",
        "presumen ",
        "destacan ",
        "despegan ",
        "discuten ",
        "consideran ",
        "tiran ",
        "se prueban ",
        "rechazan ",
        "consumen ",
        "se despiertan ",
        "caminan fuera ",
        "se ejercitan ",
        "anotan "
    ]
    
    let phrasalVerbsSpanishFirstPersonPlural: [String] = [
        "nos portamos mal ",
        "sumamos ", // trans
        "sumamos ", // intrans
        "cedemos ",
        "tenemos paciencia ",
        "explotamos ",
        "analizamos ", // trans
        "nos descomponemos ", // intrans
        "mencionamos ",
        "cancelamos ",
        "nos calmamos ", // trans
        "calmamos ", // intrans
        "continuamos ",
        "nos ponemos al día ",
        "revisamos ",
        "nos encontramos con ",
        "volvemos ",
        "reducimos ",
        "lidiamos con ",
        "dejamos en un lugar ",
        "comemos fuera ",
        "nos desmoronamos ",
        "rellenamos ",
        "descubrimos ", // trans
        "descubrimos ", // intrans
        "nos llevamos bien ",
        "regresamos ", // trans
        "nos devolvemos ", // intrans
        "procedemos ",
        "pasamos el rato ",
        "esperamos ",
        "nos mantenemos alejados ",
        "iniciamos ",
        "despedimos ",
        "investigamos ",
        "inventamos ",
        "seguimos adelante ",
        "devolvemos dinero ",
        "recogemos ",
        "guardamos ",
        "se nos agota ",
        "establecemos ",
        "presumimos ",
        "destacamos ",
        "despegamos ",
        "discutimos ",
        "consideramos ",
        "tiramos ",
        "nos probamos ",
        "rechazamos ",
        "consumimos ",
        "nos despertamos ",
        "caminamos fuera ",
        "nos ejercitamos ",
        "anotamos "
    ]
    
    let objectPronouns1: [String] = [
        "you ",
        "him ",
        "her ",
        "it ",
        "us ",
        "them "
    ]
    
    let objectPronouns1Sp: [String] = [
        "te ",
        "le ",
        "la ",
        "le ",
        "nos ",
        "les "
    ]
    
    let objectPronouns1CausativoSp: [String] = [
        "ti ",
        "él ",
        "ella ",
        "eso ",
        "nosotros ",
        "ellos "
    ]
    
    let objectPronouns2: [String] = [
        "me ",
        "him ",
        "her ",
        "it ",
        "us ",
        "them "
    ]
    
    let objectPronouns2Sp: [String] = [
        "me ",
        "le ",
        "la ",
        "le ",
        "nos ",
        "les "
    ]
    
    let objectPronouns3: [String] = [
        "me ",
        "you ",
        "him ",
        "her ",
        "it ",
        "us ",
        "them "
    ]
    
    let objectPronouns3Sp: [String] = [
        "me ",
        "te ",
        "le ",
        "la ",
        "le ",
        "nos ",
        "les "
    ]
    
    let objectPronouns4: [String] = [
        "me ",
        "you ",
        "him ",
        "her ",
        "it ",
        "us ",
        "them "
    ]
    
    let objectPronouns4Sp: [String] = [
        "me ",
        "te ",
        "le ",
        "la ",
        "le ",
        "nos ",
        "les "
    ]
    
    let objectPronouns5: [String] = [
        "you ",
        "him ",
        "her ",
        "it ",
        "them "
    ]
    
    let objectPronouns5sp: [String] = [
        "te ",
        "le ",
        "la ",
        "le ",
        "les "
    ]
    
    let objectPronouns6: [String] = [
        "me ",
        "you ",
        "him ",
        "her ",
        "it ",
        "us ",
        "them "
    ]
    
    let objectPronouns6Sp: [String] = [
        "me ",
        "te ",
        "le ",
        "la ",
        "le ",
        "nos ",
        "les "
    ]
    
    let personalPronouns: [String] = [
        "I ",
        "you ",
        "he ",
        "she ",
        "we ",
        "they "
    ]
    
    let pvppVerbsComplements: [[String]] = [
        ["a lot ", "everyday ", "in the house ", "little "],
        ["houses ", "cars ", "old books ", "vintage clothes "],
        ["a story ", "the truth ", "a secret ", "their plans "],
        ["the truth ", "the feelings ", "a discovery ", "the way "],
        ["presents ", "advice ", "support ", "a chance "],
        ["letters ", "packages ", "an email ", "a message "],
        ["a deal ", "a gift ", "an opportunity ", "help "],
        ["English ", "math ", "history ", "science "],
        ["to call ", "to visit ", "a secret ", "a plan "],
        ["money ", "books ", "a hand ", "tools "],
        ["the bill ", "with money ", "a fine ", "a compliment "],
        ["in the afternoon ", "everyday ", "always ", "at night "],
        ["with homework ", "to move ", "to be better ", "to understand "],
        ["to the school ", "everywhere ", "sometimes ", "well "],
        ["for the gift ", "for the help ", "for the support ", "for the understanding "],
        ["a lot ", "from a distance ", "as a person ", "little "],
        ["food ", "sometimes ", "everyday ", "now and then "],
        ["in the house ", "at night ", "for ever ", "privately "],
        ["for the mistakes ", "for what happened ", "for the debt ", "for the offense "],
        ["to a party ", "for dinner ", "to join ", "to participate "],
        ["about changes ", "of the rights ", "about updates ", "of decisions "],
        ["through the city ", "in their studies ", "through the process ", "in development "],
        ["in tough times ", "in their career ", "in their cause ", "in their project "],
        ["in the conversation ", "in the meeting ", "as a reference ", "in the story "],
        ["about their interests ", "for additional help ", "to use the bathroom ", "about their well-being "],
        ["promptly ", "in detail ", "eagerly ", "honestly "],
        ["with the performance ", "with the decision ", "by making an effort ", "with ease "],
        ["of impending dangers ", "before it's too late ", "about the impact ", "about the deadline "],
        ["for dinner ", "to clean their room ", "new supplies ", "for silence in the room "],
        ["to try again ", "to join the team ", "to face their fears ", "to dedicate time to study "],
        ["entry into the building ", "early departure ", "conducting activities ", "use of the equipment "],
        ["to be cautious ", "on finances ", "against bad habits ", "to explore new places "],
        ["in the heart ", "in the overall health ", "in the final decision ", "in the academic performance "],
        ["at night ", "in the morning", "in theory ", "in life "],
        ["a lot ", "because of the past ", "little ", "today "],
        ["from church ", "very well ", "for many years ", "little "],
        ["at the gathering ", "to achieve their goals ", "to uphold standards ", "at the agreed place "],
        ["since childhood ", "in the park ", "in their birthday ", "in the good old times "]
    ]
    
    let pvppVerbsComplementosSpanish: [[String]] = [
        ["mucho ", "todos los dias ", "en la casa ", "poco "],
        ["casas ", "coches ", "libros viejos ", "ropa vintage "],
        ["una historia ", "la verdad ", "un secreto ", "sus planes "],
        ["la verdad ", "los sentimientos ", "un descubrimiento ", "el camino "],
        ["regalos ", "consejos ", "apoyo ", "una oportunidad "],
        ["cartas ", "paquetes ", "un correo ", "un mensaje "],
        ["un trato ", "un regalo ", "una oportunidad ", "ayuda "],
        ["inglés ", "matemáticas ", "historia ", "ciencia "],
        ["llamar ", "visitar ", "un secreto ", "un plan "],
        ["dinero ", "libros ", "una mano ", "herramientas "],
        ["la cuenta ", "con dinero ", "una multa ", "un cumplido "],
        ["en la tarde ", "todos los dias ", "siempre ", "en la noche "],
        ["con la tarea ", "a mudarse ", "a ser mejor ", "a entender "],
        ["a la escuela ", "a todos lados ", "a veces ", "bien "],
        ["por el regalo ", "por la ayuda ", "por el apoyo ", "por la comprensión "],
        ["mucho ", "desde lejos ", "como persona ", "poco "],
        ["comida ", "a veces ", "todos los dias ", "de vez en cuando "],
        ["en la casa ", "en la noche ", "para siempre ", "en privado "],
        ["por los errores ", "por lo que pasó ", "por la deuda ", "por la ofensa "],
        ["a una fiesta ", "a cenar ", "a unirse ", "a participar "],
        ["sobre cambios ", "de los derechos ", "sobre actualizaciones ", "de decisiones "],
        ["a través de la ciudad ", "en sus estudios ", "durante el proceso ", "en el desarrollo "],
        ["en momentos difíciles ", "en su carrera ", "en su causa ", "en su proyecto "],
        ["en la conversación ", "en la reunión ", "como referencia ", "en la historia "],
        ["sobre sus intereses ", "por ayuda adicional ", "para usar el baño ", "sobre su bienestar "],
        ["rápidamente ", "con detalle ", "con entusiasmo ", "con sinceridad "],
        ["con la actuación ", "con la decisión ", "haciendo un esfuerzo ", "con facilidad "],
        ["sobre los peligros próximos ", "antes de que sea tarde ", "sobre el efecto ", "sobre la fecha límite "],
        ["para la cena ", "que limpien su cuarto ", "nuevos materiales ", "silencio en la sala "],
        ["a intentarlo de nuevo ", "a unirse al equipo ", "a enfrentar sus miedos ", "a dedicar tiempo al estudio "],
        ["la entrada al edificio ", "la salida antes de tiempo ", "la realización de actividades ", "el uso del equipo "],
        ["ser prudente ", "en sus finanzas ", "evitar malos hábitos ", "explorar nuevos lugares "],
        ["en el corazón ", "en la salud en general ", "en la decisión final ", "en el rendimiento escolar "],
        ["en la noche ", "en la mañana", "en teoría ", "en la vida "],
        ["mucho ", "por el pasado ", "poco ", "hoy "],
        ["de la iglesia ", "muy bien ", "por muchos años ", "poco "],
        ["en la reunión ", "para cumplir sus metas ", "para mantener los estándares ", "en el lugar acordado "],
        ["desde la niñez ", "en el parque ", "en el día de su cumpleaños ", "en los buenos tiempos pasados "]
    ]
    
    let pvppVerbs: [String] = [
        "love ", "sell ", "tell ", "show ", "give ",
        "send ", "offer ", "teach ", "promise ", "lend ",
        "pay ", "call ", "help ", "follow ",
        "thank ", "admire ", "serve ", "protect ", "forgive ",
        "invite ", "inform ", "guide ", "support ", "mention ",
        "ask ", "answer ", "please ", "warn ", "order ",
        "encourage ", "permit ", "advise ", "affect ", "fear ",
        "hate ", "know ", "meet ", "remember "
    ]
    
    let pvppVerbsPastTense: [String] = [
        "loved ", "sold ", "told ", "showed ", "gave ",
        "sent ", "offered ", "taught ", "promised ", "lent ",
        "paid ", "called ", "helped ", "followed ",
        "thanked ", "admired ", "served ", "protected ", "forgave ",
        "invited ", "informed ", "guided ", "supported ", "mentioned ",
        "asked ", "answered ", "pleased ", "warned ", "ordered ",
        "encouraged ", "permitted ", "advised ", "affected ", "feared ",
        "hated ", "knew ", "met ", "remembered "
    ]
    
    let pvppVerbsThirdPerson: [String] = [
        "loves ", "sells ", "tells ", "shows ", "gives ",
        "sends ", "offers ", "teaches ", "promises ", "lends ",
        "pays ", "calls ", "helps ", "follows ",
        "thanks ", "admires ", "serves ", "protects ", "forgives ",
        "invites ", "informs ", "guides ", "supports ", "mentions ",
        "asks ", "answers ", "pleases ", "warns ", "orders ",
        "encourages ", "permits ", "advises ", "affects ", "fears ",
        "hates ", "knows ", "meets ", "remembers "
    ]
    
    let firstPersonSingularPvppSpanish: [String] = [
        "amo ", "vendo ", "digo ", "muestro ", "doy ",
        "envío ", "ofrezco ", "enseño ", "prometo ", "presto ",
        "pago ", "llamo ", "ayudo ", "sigo ",
        "agradezco ", "admiro ", "sirvo ", "protejo ", "perdono ",
        "invito ", "informo ", "guío ", "apoyo ", "menciono ",
        "pregunto ", "respondo ", "agrado ", "adviento ", "ordeno ",
        "animo ", "permito ", "aconsejo ", "afecto ", "temo ",
        "odio ", "conozco ", "encuentro ", "recuerdo "
    ]
    
    let firstPersonSingularPvppSpanishPast: [String] = [
        "amé ", "vendí ", "dije ", "mostré ", "di ",
        "envié ", "ofrecí ", "enseñé ", "prometí ", "presté ",
        "pagué ", "llamé ", "ayudé ", "seguí ",
        "agradecí ", "admiré ", "serví ", "protegí ", "perdoné ",
        "invité ", "informé ", "guié ", "apoyé ", "mencioné ",
        "pregunté ", "respondí ", "agradé ", "advertí ", "ordené ",
        "animé ", "permití ", "aconsejé ", "afecté ", "temí ",
        "odié ", "conocí ", "encontré ", "recordé "
    ]
    
    let firstPersonSingularPvppSpanishImperfect: [String] = [
        "amaba ", "vendía ", "decía ", "mostraba ", "daba ",
        "enviaba ", "ofrecía ", "enseñaba ", "prometía ", "prestaba ",
        "pagaba ", "llamaba ", "ayudaba ", "seguía ",
        "agradecía ", "admiraba ", "servía ", "protegía ", "perdonaba ",
        "invitaba ", "informaba ", "guiaba ", "apoyaba ", "mencionaba ",
        "preguntaba ", "respondía ", "agradaba ", "advertía ", "ordenaba ",
        "animaba ", "permitía ", "aconsejaba ", "afectaba ", "temía ",
        "odiaba ", "conocía ", "encontraba ", "recordaba "
    ]
    
    let firstPersonPluralPvppSpanish: [String] = [
        "amamos ", "vendemos ", "decimos ", "mostramos ", "damos ",
        "enviamos ", "ofrecemos ", "enseñamos ", "prometemos ", "prestamos ",
        "pagamos ", "llamamos ", "ayudamos ", "seguimos ",
        "agradecemos ", "admiramos ", "servimos ", "protegemos ", "perdonamos ",
        "invitamos ", "informamos ", "guíamos ", "apoyamos ", "mencionamos ",
        "preguntamos ", "respondemos ", "agradamos ", "advertimos ", "ordenamos ",
        "animamos ", "permitimos ", "aconsejamos ", "afectamos ", "tememos ",
        "odiamos ", "conocemos ", "encontramos ", "recordamos "
    ]
    
    let firstPersonPluralPvppSpanishPreterito: [String] = [
        "amamos ", "vendimos ", "dijimos ", "mostramos ", "dimos ",
        "enviamos ", "ofrecimos ", "enseñamos ", "prometimos ", "prestamos ",
        "pagamos ", "llamamos ", "ayudamos ", "seguimos ",
        "agradecimos ", "admiramos ", "servimos ", "protegimos ", "perdonamos ",
        "invitamos ", "informamos ", "guíamos ", "apoyamos ", "mencionamos ",
        "preguntamos ", "respondimos ", "agradamos ", "advertimos ", "ordenamos ",
        "animamos ", "permitimos ", "aconsejamos ", "afectamos ", "temimos ",
        "odiamos ", "conocimos ", "encontramos ", "recordamos "
    ]
    
    let firstPersonPluralPvppSpanishImperfecto: [String] = [
        "amábamos ", "vendíamos ", "decíamos ", "mostrábamos ", "dábamos ",
        "enviábamos ", "ofrecíamos ", "enseñábamos ", "prometíamos ", "prestábamos ",
        "pagábamos ", "llamábamos ", "ayudábamos ", "seguíamos ",
        "agradecíamos ", "admirábamos ", "servíamos ", "protegíamos ", "perdonábamos ",
        "invitábamos ", "informábamos ", "guiábamos ", "apoyábamos ", "mencionábamos ",
        "preguntábamos ", "respondíamos ", "agradábamos ", "advertíamos ", "ordenábamos ",
        "animábamos ", "permitíamos ", "aconsejábamos ", "afectábamos ", "temíamos ",
        "odiábamos ", "conocíamos ", "encontrábamos ", "recordábamos "
    ]
    
    let secondPersonSingularPvppSpanish: [String] = [
        "amas ", "vendes ", "dices ", "muestras ", "das ",
        "envías ", "ofreces ", "enseñas ", "prometes ", "prestas ",
        "pagas ", "llamas ", "ayudas ", "sigues ",
        "agradeces ", "admiras ", "sirves ", "proteges ", "perdonas ",
        "invitas ", "informas ", "guías ", "apoyas ", "mencionas ",
        "preguntas ", "respondes ", "agradas ", "adviertes ", "ordenas ",
        "animas ", "permites ", "aconsejas ", "afectas ", "temes ",
        "odias ", "conoces ", "encuentras ", "recuerdas "
    ]
    
    let secondPersonSingularPvppSpanishPreterito: [String] = [
        "amaste ", "vendiste ", "dijiste ", "mostraste ", "diste ",
        "enviaste ", "ofreciste ", "enseñaste ", "prometiste ", "prestaste ",
        "pagaste ", "llamaste ", "ayudaste ", "seguiste ",
        "agradeciste ", "admiraste ", "serviste ", "protegiste ", "perdonaste ",
        "invitaste ", "informaste ", "guiaste ", "apoyaste ", "mencionaste ",
        "preguntaste ", "respondiste ", "agradaste ", "advertiste ", "ordenaste ",
        "animaste ", "permitiste ", "aconsejaste ", "afectaste ", "temiste ",
        "odiaste ", "conociste ", "encontraste ", "recordaste "
    ]
    
    let secondPersonSingularPvppSpanishImperfecto: [String] = [
        "amabas ", "vendías ", "decías ", "mostrabas ", "dabas ",
        "enviabas ", "ofrecías ", "enseñabas ", "prometías ", "prestabas ",
        "pagabas ", "llamabas ", "ayudabas ", "seguías ",
        "agradecías ", "admirabas ", "servías ", "protegías ", "perdonabas ",
        "invitabas ", "informabas ", "guiabas ", "apoyabas ", "mencionabas ",
        "preguntabas ", "respondías ", "agradabas ", "advertías ", "ordenabas ",
        "animabas ", "permitías ", "aconsejabas ", "afectabas ", "temías ",
        "odiabas ", "conocías ", "encontrabas ", "recordabas "
    ]
    
    let thirdPersonSingularPvppSpanish: [String] = [
        "ama ", "vende ", "dice ", "muestra ", "da ",
        "envía ", "ofrece ", "enseña ", "promete ", "presta ",
        "paga ", "llama ", "ayuda ", "sigue ",
        "agradece ", "admira ", "sirve ", "protege ", "perdona ",
        "invita ", "informa ", "guía ", "apoya ", "menciona ",
        "pregunta ", "responde ", "agrada ", "advierte ", "ordena ",
        "anima ", "permite ", "aconseja ", "afecta ", "teme ",
        "odia ", "conoce ", "encuentra ", "recuerda "
    ]
    
    let thirdPersonSingularPvppSpanishPreterito: [String] = [
        "amó ", "vendió ", "dijo ", "mostró ", "dio ",
        "envió ", "ofreció ", "enseñó ", "prometió ", "prestó ",
        "pagó ", "llamó ", "ayudó ", "siguió ",
        "agradeció ", "admiró ", "sirvió ", "protegió ", "perdonó ",
        "invitó ", "informó ", "guió ", "apoyó ", "mencionó ",
        "preguntó ", "respondió ", "agradó ", "advirtió ", "ordenó ",
        "animó ", "permitió ", "aconsejó ", "afectó ", "temió ",
        "odió ", "conoció ", "encontró ", "recordó "
    ]
    
    let thirdPersonSingularPvppSpanishImperfecto: [String] = [
        "amaba ", "vendía ", "decía ", "mostraba ", "daba ",
        "enviaba ", "ofrecía ", "enseñaba ", "prometía ", "prestaba ",
        "pagaba ", "llamaba ", "ayudaba ", "seguía ",
        "agradecía ", "admiraba ", "servía ", "protegía ", "perdonaba ",
        "invitaba ", "informaba ", "guiaba ", "apoyaba ", "mencionaba ",
        "preguntaba ", "respondía ", "agradaba ", "advertía ", "ordenaba ",
        "animaba ", "permitía ", "aconsejaba ", "afectaba ", "temía ",
        "odiaba ", "conocía ", "encontraba ", "recordaba "
    ]
    
    let thirdPersonPluralPvppSpanish: [String] = [
        "aman ", "venden ", "dicen ", "muestran ", "dan ",
        "envían ", "ofrecen ", "enseñan ", "prometen ", "prestan ",
        "pagan ", "llaman ", "ayudan ", "siguen ",
        "agradecen ", "admiran ", "sirven ", "protegen ", "perdonan ",
        "invitan ", "informan ", "guían ", "apoyan ", "mencionan ",
        "preguntan ", "responden ", "agradan ", "advierten ", "ordenan ",
        "animan ", "permiten ", "aconsejan ", "afectan ", "temen ",
        "odian ", "conocen ", "encuentran ", "recuerdan "
    ]
    
    let thirdPersonPluralPvppSpanishPreterito: [String] = [
        "amaron ", "vendieron ", "dijeron ", "mostraron ", "dieron ",
        "enviaron ", "ofrecieron ", "enseñaron ", "prometieron ", "prestaron ",
        "pagaron ", "llamaron ", "ayudaron ", "siguieron ",
        "agradecieron ", "admiraron ", "sirvieron ", "protegieron ", "perdonaron ",
        "invitaron ", "informaron ", "guiaron ", "apoyaron ", "mencionaron ",
        "preguntaron ", "respondieron ", "agradaron ", "advirtieron ", "ordenaron ",
        "animaron ", "permitieron ", "aconsejaron ", "afectaron ", "temieron ",
        "odiaron ", "conocieron ", "encontraron ", "recordaron "
    ]
    
    let thirdPersonPluralPvppSpanishImperfecto: [String] = [
        "amaban ", "vendían ", "decían ", "mostraban ", "daban ",
        "enviaban ", "ofrecían ", "enseñaban ", "prometían ", "prestaban ",
        "pagaban ", "llamaban ", "ayudaban ", "seguían ",
        "agradecían ", "admiraban ", "servían ", "protegían ", "perdonaban ",
        "invitaban ", "informaban ", "guiaban ", "apoyaban ", "mencionaban ",
        "preguntaban ", "respondían ", "agradaban ", "advertían ", "ordenaban ",
        "animaban ", "permitían ", "aconsejaban ", "afectaban ", "temían ",
        "odiaban ", "conocían ", "encontraban ", "recordaban "
    ]
    
    let getSpanish1: [String] = [
        "me canso ", "me enfermo ", "me mejoro ", "me empeoro ", "me enojo ", "me emociono ", "me caliento ",
        "me asusto ", "me tardo ", "me pierdo ", "me alisto ", "me ensucio ", "me limpio ", "me mojo ",
        "me seco ", "me envejezco ", "me ocupo ", "me calmo ", "me alegro ", "me entristezco ",
        "me aburro ", "me avergüenzo ", "me frustro ", "me impaciento ", "me pongo celoso ", "me motivo ",
        "me tranquilizo ", "me sorprendo ", "me tenso ", "me incomodo ", "me preocupo ", "me agoto "
    ]
    
    let getSpanish4: [String] = [
        "nos cansamos ", "nos enfermamos ", "nos mejoramos ", "nos empeoramos ", "nos enojamos ", "nos emocionamos ", "nos calentamos ",
        "nos asustamos ", "nos tardamos ", "nos perdemos ", "nos alistamos ", "nos ensuciamos ", "nos limpiamos ", "nos mojamos ",
        "nos secamos ", "nos envejecemos ", "nos ocupamos ", "nos calmamos ", "nos alegramos ", "nos entristecemos ",
        "nos aburrimos ", "nos avergonzamos ", "nos frustramos ", "nos impacientamos ", "nos ponemos celosos ", "nos motivamos ",
        "nos tranquilizamos ", "nos sorprendemos ", "nos tensamos ", "nos incomodamos ", "nos preocupamos ", "nos agotamos "
    ]
    
    let getSpanish2: [String] = [
        "te cansas ", "te enfermas ", "te mejoras ", "te empeoras ", "te enojas ", "te emocionas ", "te calientas ",
        "te asustas ", "te tardas ", "te pierdes ", "te alistas ", "te ensucias ", "te limpias ", "te mojas ",
        "te secas ", "te envejeces ", "te ocupas ", "te calmas ", "te alegras ", "te entristeces ",
        "te aburres ", "te avergüenzas ", "te frustras ", "te impacientas ", "te pones celoso ", "te motivas ",
        "te tranquilizas ", "te sorprendes ", "te tensas ", "te incomodas ", "te preocupas ", "te agotas "
    ]
    
    let getSpanish3: [String] = [
        "se cansa ", "se enferma ", "se mejora ", "se empeora ", "se enoja ", "se emociona ", "se calienta ",
        "se asusta ", "se tarda ", "se pierde ", "se alista ", "se ensucia ", "se limpia ", "se moja ",
        "se seca ", "se envejece ", "se ocupa ", "se calma ", "se alegra ", "se entristece ",
        "se aburre ", "se avergüenza ", "se frustra ", "se impacienta ", "se pone celoso ", "se motiva ",
        "se tranquiliza ", "se sorprende ", "se tensa ", "se incomoda ", "se preocupa ", "se agota "
    ]
    
    let getSpanish5: [String] = [
        "se cansan ", "se enferman ", "se mejoran ", "se empeoran ", "se enojan ", "se emocionan ", "se calientan ",
        "se asustan ", "se tardan ", "se pierden ", "se alistan ", "se ensucian ", "se limpian ", "se mojan ",
        "se secan ", "se envejecen ", "se ocupan ", "se calman ", "se alegran ", "se entristecen ",
        "se aburren ", "se avergüenzan ", "se frustran ", "se impacientan ", "se ponen celosos ", "se motivan ",
        "se tranquilizan ", "se sorprenden ", "se tensan ", "se incomodan ", "se preocupan ", "se agotan "
    ]
    
    let getEnglishVerbs: [String] = [
        "Tired ", "Sick ", "Better ", "Worse ", "Angry ", "Excited ", "Hot ", "Scared ", "Late ",
        "Lost ", "Ready ", "Dirty ", "Clean ", "Wet ", "Dry ", "Old ", "Busy ", "Calm ", "Happy ", "Sad ",
        "Bored ", "Ashamed ", "Frustrated ", "Impatient ", "Jealous ", "Motivated ", "Calm ", "Surprised ",
        "Tense ", "Uncomfortable ", "Worried ", "Exhausted "
    ]
    
    let combinedAdjectivesSpanishFeminine: [String] = [
        "hambrienta ", "sedienta ", "fría ", "nerviosa ", "tarde ", "grande ", "ansiosa ", "curiosa ",
        "determinada ", "agradecida ", "esperanzada ", "conocedora ", "solitaria ", "nerviosa ", "optimista ",
        "orgullosa ", "vulnerable ", "joven "
    ]
    
    let combinedAdjectivesSpanishMasculine: [String] = [
        "hambriento ", "sediento ", "frío ", "nervioso ", "tarde ", "grande ", "ansioso ", "curioso ",
        "determinado ", "agradecido ", "esperanzado ", "conocedor ", "solitario ", "nervioso ", "optimista ",
        "orgulloso ", "vulnerable ", "joven "
    ]
    
    let combinedAdjectivesSpanishMasculinePlural: [String] = [
        "hambrientos ", "sedientos ", "fríos ", "nerviosos ", "tarde ", "grandes ", "ansiosos ", "curiosos ",
        "determinados ", "agradecidos ", "esperanzados ", "conocedores ", "solitarios ", "nerviosos ", "optimistas ",
        "orgullosos ", "vulnerables ", "jóvenes "
    ]
    
    let combinedAdjectivesEnglishShort: [String] = [
        "hungry ", "thirsty ", "cold ", "nervous ", "late ", "big ", "anxious ", "curious ", "determined ",
        "grateful ", "hopeful ", "knowledgeable ", "lonely ", "nervous ", "optimistic ", "proud ", "vulnerable ",
        "young "
    ]
    
    let reflexiveVerbs: [String] = [
        "adapt ", "amuse ", "apply ", "assert ", "blame ", "cut ", "defend ", "enjoy ", "express ", "hurt ",
        "introduce ", "kill ", "prepare ", "pride ", "reinvent ", "respect ", "teach ", "tell ", "accustom ",
        "apply ", "behave ", "challenge ", "comfort ", "educate ", "embarrass ", "empower ", "exhaust ", "forgive ",
        "free ", "humble ", "improve ", "indulge ", "injure ", "inspire ", "introduce ", "motivate ", "protect ",
        "remind "
    ]
    
    let reflexiveVerbsThirdPersonSingular: [String] = [
        "adapts ", "amuses ", "applies ", "asserts ", "blames ", "cuts ", "defends ", "enjoys ", "expresses ",
        "hurts ", "introduces ", "kills ", "prepares ", "prides ", "reinvents ", "respects ", "teaches ", "tells ",
        "accustoms ", "applies ", "behaves ", "challenges ", "comforts ", "educates ", "embarrasses ", "empowers ",
        "exhausts ", "forgives ", "frees ", "humbles ", "improves ", "indulges ", "injures ", "inspires ", "introduces ",
        "motivates ", "protects ", "reminds "
    ]
    
    let reflexiveVerbsSpanish1: [String] = [
        "me adapto ", "me asombro ", "me aplico ", "me afirmo ", "me culpo ", "me corto ", "me defiendo ",
        "me disfruto ", "me expreso ", "me hago daño ", "me presento ", "me mato ", "me preparo ", "me enorgullezco ",
        "me reinvento ", "me respeto ", "me enseño ", "me digo ", "me acostumbro ", "me aplico ", "me comporto ",
        "me desafío ", "me consuelo ", "me educo ", "me avergüenzo ", "me empodero ", "me agoto ", "me perdono ",
        "me libero ", "me humillo ", "me mejoro ", "me indulgo ", "me lesiono ", "me inspiro ", "me presento ",
        "me motivo ", "me protejo ", "me recuerdo "
    ]
    
    let reflexiveVerbsSpanishPlural4: [String] = [
        "nos adaptamos ", "nos asombramos ", "nos aplicamos ", "nos afirmamos ", "nos culpamos ", "nos cortamos ",
        "nos defendemos ", "nos disfrutamos ", "nos expresamos ", "nos hacemos daño ", "nos presentamos ", "nos matamos ",
        "nos preparamos ", "nos enorgullecemos ", "nos reinventamos ", "nos respetamos ", "nos enseñamos ", "nos decimos ",
        "nos acostumbramos ", "nos aplicamos ", "nos comportamos ", "nos desafiamos ", "nos consolamos ", "nos educamos ",
        "nos avergonzamos ", "nos empoderamos ", "nos agotamos ", "nos perdonamos ", "nos liberamos ", "nos humillamos ",
        "nos mejoramos ", "nos indulgamos ", "nos lesionamos ", "nos inspiramos ", "nos presentamos ", "nos motivamos ",
        "nos protegemos ", "nos recordamos "
    ]
    
    let reflexiveVerbsSpanishSecondPerson: [String] = [
        "te adaptas ", "te asombras ", "te aplicas ", "te afirmas ", "te culpas ", "te cortas ", "te defiendes ",
        "te disfrutas ", "te expresas ", "te haces daño ", "te presentas ", "te matas ", "te preparas ", "te enorgulleces ",
        "te reinventas ", "te respetas ", "te enseñas ", "te dices ", "te acostumbras ", "te aplicas ", "te comportas ",
        "te desafías ", "te consuelas ", "te educas ", "te avergüenzas ", "te empoderas ", "te agotas ", "te perdonas ",
        "te liberas ", "te humillas ", "te mejoras ", "te indulgas ", "te lesionas ", "te inspiras ", "te presentas ",
        "te motivas ", "te proteges ", "te recuerdas "
    ]
    
    let reflexiveVerbsSpanishThirdPersonSingular: [String] = [
        "se adapta ", "se asombra ", "se aplica ", "se afirma ", "se culpa ", "se corta ", "se defiende ",
        "se disfruta ", "se expresa ", "se hace daño ", "se presenta ", "se mata ", "se prepara ", "se enorgullece ",
        "se reinventa ", "se respeta ", "se enseña ", "se dice ", "se acostumbra ", "se aplica ", "se comporta ",
        "se desafía ", "se consuela ", "se educa ", "se avergüenza ", "se empodera ", "se agota ", "se perdona ",
        "se libera ", "se humilla ", "se mejora ", "se indulga ", "se lesiona ", "se inspira ", "se presenta ",
        "se motiva ", "se protege ", "se recuerda "
    ]
    
    let reflexiveVerbsSpanishThirdPersonPlural: [String] = [
        "se adaptan ", "se asombran ", "se aplican ", "se afirman ", "se culpan ", "se cortan ", "se defienden ",
        "se disfrutan ", "se expresan ", "se hacen daño ", "se presentan ", "se matan ", "se preparan ", "se enorgullecen ",
        "se reinventan ", "se respetan ", "se enseñan ", "se dicen ", "se acostumbran ", "se aplican ", "se comportan ",
        "se desafían ", "se consuelan ", "se educan ", "se avergüenzan ", "se empoderan ", "se agotan ", "se perdonan ",
        "se liberan ", "se humillan ", "se mejoran ", "se indulgan ", "se lesionan ", "se inspiran ", "se presentan ",
        "se motivan ", "se protegen ", "se recuerdan "
    ]
    
    let verbsVJ: [String] = [
        "agree ", "appear ", "arrange ", "ask ", "begin ", "care ", "cease ", "choose ", "claim ", "decide ",
        "demand ", "deserve ", "dread ", "expect ", "forget ", "get ", "hate ", "hesitate ", "intend ", "learn ",
        "like ", "love ", "manage ", "need ", "neglect ", "offer ", "plan ", "prefer ", "prepare ", "pretend ",
        "promise ", "propose ", "refuse ", "regret ", "remember ", "start ", "swear ", "tend ", "threaten ",
        "try ", "vow ", "wait ", "want ", "wish ", "yearn ", "admit ", "advise ", "allow ", "anticipate ",
        "appreciate ", "avoid ", "defend ", "delay ", "deny ", "despise ", "discuss ", "dislike ", "dread ",
        "enjoy ", "finish ", "forget ", "hate ", "imagine ", "love ", "mention ", "miss ", "need ", "permit ",
        "postpone ", "practice ", "propose ", "quit ", "recall ", "recommend ", "regret ", "remember ", "report ",
        "require ", "resent ", "resist ", "risk ", "suggest ", "tolerate "
    ]
    
    let verbsThirdPersonSingularVJ: [String] = [
        "agrees ", "appears ", "arranges ", "asks ", "begins ", "cares ", "ceases ", "chooses ", "claims ",
        "decides ", "demands ", "deserves ", "dreads ", "expects ", "forgets ", "gets ", "hates ", "hesitates ",
        "intends ", "learns ", "likes ", "loves ", "manages ", "needs ", "neglects ", "offers ", "plans ", "prefers ",
        "prepares ", "pretends ", "promises ", "proposes ", "refuses ", "regrets ", "remembers ", "starts ",
        "swears ", "tends ", "threatens ", "tries ", "vows ", "waits ", "wants ", "wishes ", "yearns ", "admits ",
        "advises ", "allows ", "anticipates ", "appreciates ", "avoids ", "defends ", "delays ", "denies ",
        "despises ", "discusses ", "dislikes ", "dreads ", "enjoys ", "finishes ", "forgets ", "hates ",
        "imagines ", "loves ", "mentions ", "misses ", "needs ", "permits ", "postpones ", "practices ",
        "proposes ", "quits ", "recalls ", "recommends ", "regrets ", "remembers ", "reports ", "requires ",
        "resents ", "resists ", "risks ", "suggests ", "tolerates "
    ]
    
    let verbsFirstPersonSingularSpanishVJ: [String] = [
        "estoy de acuerdo en ", "parezco ", "organizo ", "pido ", "comienzo a ", "me importa ", "ceso de ",
        "elijo ", "afirmo ", "decido ", "exijo ", "merezco ", "temo ", "espero ", "olvido ", "consigo ", "odio ",
        "dudo ", "tengo la intención de ", "aprendo a ", "me gusta ", "amo ", "logro ", "necesito ", "descuido ",
        "ofrezco ", "planeo ", "prefiero ", "me preparo para ", "finjo ", "prometo ", "propongo ", "rechazo ",
        "lamento ", "recuerdo ", "empiezo ", "juro ", "tiendo a ", "amenazo en ", "intento ", "juro ", "espero para ",
        "quiero ", "deseo ", "anhelo ", "admito ", "aconsejo ", "permito ", "anticipo ", "aprecio ", "evito ",
        "defiendo ", "retraso ", "niego ", "desprecio ", "discuto ", "disgusto ", "temo ", "disfruto ", "termino ",
        "olvido ", "odio ", "imagino ", "amo ", "menciono ", "extraño ", "necesito ", "permito ", "pospongo ",
        "practico ", "propongo ", "dejo ", "recuerdo ", "recomiendo ", "lamento ", "recuerdo ", "denuncio ",
        "requiero ", "resentimiento ", "resisto ", "arriesgo ", "sugiero ", "tolero "
    ]
    
    let verbsSpanishSecondPersonPastImperfect: [String] = [
        "tenías ", "hacías ", "decías ", "ibas ", "obtenías ", "hacías ", "sabías ", "pensabas ", "veías ",
        "tomabas ", "venías ", "querías ", "mirabas ", "usabas ", "encontrabas ", "dabas ", "decías ", "trabajabas ",
        "llamabas ", "intentabas ", "preguntabas ", "necesitabas ", "sentías ", "te volvías ", "dejabas ", "ponías ",
        "te referías a ", "dejabas ", "mantenías ", "empezabas ", "parecías ", "hablabas ", "girabas ", "ayudabas ",
        "empezabas ", "mostrabas ", "oías ", "corrías ", "jugabas ", "movías ", "gustabas ", "creías ", "sostenías ",
        "vivías ", "traías ", "escribías ", "proporcionabas ", "te sentabas ", "estabas de pie ", "perdías ", "te encontrabas ",
        "pagabas ", "incluías ", "continuabas ", "cambiabas ", "ponías ", "liderabas ", "aprendías ", "entendías ",
        "mirabas ", "seguías ", "dejabas de ", "hablabas ", "creabas ", "permitías ", "leías ", "gastabas ", "añadías ",
        "crecías ", "abrías ", "caminabas ", "ofrecías ", "recordabas ", "ganabas ", "aparecías ", "considerabas ", "amabas ",
        "comprabas ", "esperabas ", "morías ", "enviabas ", "esperabas ", "servías ", "te quedabas ", "construías ",
        "caías ", "cortabas ", "matabas ", "alcanzabas ", "permanecías ", "sugerías ", "elevabas ", "pasabas ", "vendías ",
        "requerías ", "decidías ", "informabas ", "te devolvías ", "tirabas ", "explicabas ", "llevabas ", "desarrollabas ",
        "esperabas ", "conducías ", "rompías "
    ]
    
    let verbsFirstPersonPluralSpanishVJ: [String] = [
        "estamos de acuerdo en ", "parecemos ", "organizamos ", "pedimos ", "comenzamos a ", "nos importa ", "cesamos de ",
        "elegimos ", "afirmamos ", "decidimos ", "exigimos ", "merecemos ", "tememos ", "esperamos ", "olvidamos ",
        "conseguimos ", "odiamos ", "dudamos en ", "tenemos la intención de ", "aprendemos a ", "nos gusta ", "amamos ",
        "logramos ", "necesitamos ", "descuidamos ", "ofrecemos ", "planeamos ", "preferimos ", "nos preparamos para ",
        "fingimos ", "prometemos ", "proponemos ", "rechazamos ", "lamentamos ", "recordamos ", "empezamos a ", "juramos ",
        "tendemos a ", "amenazamos en ", "intentamos ", "juramos ", "esperamos para ", "queremos ", "deseamos ", "anhelamos ",
        "admitimos ", "aconsejamos ", "permitimos ", "anticipamos ", "apreciamos ", "evitamos ", "defendemos ", "retrasamos ",
        "negamos ", "despreciamos ", "discutimos ", "disgustamos ", "tememos ", "disfrutamos ", "terminamos ", "olvidamos ",
        "odiamos ", "imaginamos ", "amamos ", "mencionamos ", "extrañamos ", "necesitamos ", "permitimos ", "posponemos ",
        "practicamos ", "proponemos ", "dejamos ", "recordamos ", "recomendamos ", "lamentamos ", "recordamos ", "denunciamos ",
        "requerimos ", "resentimos ", "resistimos ", "arriesgamos ", "sugerimos ", "toleramos "
    ]
    
    let verbsSecondPersonSingularSpanishVJ: [String] = [
        "estás de acuerdo en ", "pareces ", "organizas ", "pides ", "comienzas a ", "te importa ", "cesas de ", "eliges ",
        "afirmas ", "decides ", "exiges ", "mereces ", "temes ", "esperas ", "olvidas ", "consigues ", "odias ", "dudas ",
        "tienes la intención de ", "aprendes a ", "te gusta ", "amas ", "logras ", "necesitas ", "descuidas ", "ofreces ",
        "planeas ", "prefieres ", "te preparas para ", "finges ", "prometes ", "propones ", "rechazas ", "lamentas ",
        "recuerdas ", "empiezas a ", "juras ", "tiendes a ", "amenazas en ", "intentas ", "juras ", "esperas ", "quieres ",
        "deseas ", "anhelas ", "admites ", "aconsejas ", "permites ", "anticipas ", "aprecias ", "evitas ", "defiendes ",
        "retrasas ", "niegas ", "desprecias ", "discutes ", "disgustas ", "temes ", "disfrutas ", "terminas ", "olvidas ",
        "odias ", "imaginas ", "amas ", "mencionas ", "extrañas ", "necesitas ", "permites ", "pospones ", "practicas ",
        "propones ", "dejas ", "recuerdas ", "recomiendas ", "lamentas ", "recuerdas ", "denuncias ", "requieres ",
        "resentis ", "resistes ", "arriesgas ", "sugieres ", "toleras "
    ]
    
    let verbsThirdPersonSingularSpanishVJ: [String] = [
        "está de acuerdo en ", "parece ", "organiza ", "pide ", "comienza a ", "le importa ", "cesa de ", "elige ",
        "afirma ", "decide ", "exige ", "merece ", "teme ", "espera ", "olvida ", "consigue ", "odia ", "duda ",
        "tiene la intención de ", "aprende a ", "le gusta ", "ama ", "logra ", "necesita ", "descuida ", "ofrece ",
        "planea ", "prefiere ", "se prepara para ", "finge ", "promete ", "propone ", "rechaza ", "lamenta ", "recuerda ",
        "empieza a ", "jura ", "tiende a ", "amenaza ", "intenta ", "jura ", "espera ", "quiere ", "desea ", "anhela ",
        "admite ", "aconseja ", "permite ", "anticipa ", "aprecia ", "evita ", "defiende ", "retrasa ", "niega ",
        "desprecia ", "discute ", "disgusta ", "teme ", "disfruta ", "termina ", "olvida ", "odia ", "imagina ", "ama ",
        "menciona ", "extraña ", "necesita ", "permite ", "pospone ", "practica ", "propone ", "deja ", "recuerda ",
        "recomienda ", "lamenta ", "recuerda ", "denuncia ", "requiere ", "resentimiento ", "resiste ", "arriesga ",
        "sugiere ", "tolera "
    ]
    
    let verbsThirdPersonPluralSpanishVJ: [String] = [
        "están de acuerdo en ", "parecen ", "organizan ", "piden ", "empiezan ", "les importa ", "cesan de ", "eligen ",
        "afirman ", "deciden ", "exigen ", "merecen ", "temen ", "esperan ", "olvidan ", "consiguen ", "odian ", "dudan ",
        "tienen la intención de ", "aprenden a ", "les gusta ", "aman ", "logran ", "necesitan ", "descuidan ", "ofrecen ",
        "planean ", "prefieren ", "se preparan para ", "fingen ", "prometen ", "proponen ", "rechazan ", "lamentan ",
        "recuerdan ", "empiezan a ", "juran ", "tienden a ", "amenazan ", "intentan ", "juran ", "esperan ", "quieren ",
        "desean ", "anhelan ", "admiten ", "aconsejan ", "permiten ", "anticipan ", "aprecian ", "evitan ", "defienden ",
        "retrasan ", "niegan ", "desprecian ", "discuten ", "disgustan ", "temen ", "disfrutan ", "terminan ", "olvidan ",
        "odian ", "imaginan ", "aman ", "mencionan ", "extrañan ", "necesitan ", "permiten ", "posponen ", "practican ",
        "proponen ", "dejan ", "recuerdan ", "recomiendan ", "lamentan ", "recuerdan ", "denuncian ", "requieren ",
        "resenten ", "resisten ", "arriesgan ", "sugieren ", "toleran "
    ]
    
    let phrarsesHappen:[String] = [
        "todos los días ",
        "casi nunca ",
        "por la mañana ",
        "por la noche ",
        "de vez en cuando ",
        "de tanto en tanto ",
        "durante la tormenta ",
        "cuando llueve ",
        "sin previo aviso ",
        "de repente ",
        "de vez en cuando ",
        "en el peor momento posible ",
        "justo delante de nuestros ojos ",
        "de la nada ",
        "en un abrir y cerrar de ojos ",
        "bajo ciertas condiciones ",
        "cuando menos lo esperas ",
        "a diario ",
        "en un instante ",
        "en cualquier momento "
    ]
    
}

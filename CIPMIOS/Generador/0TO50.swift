import Foundation

class CeroToFifty{
    var ob: String = ""
    var eng: String = ""
    var j: Int = 0

    // pronouns and verbs
    var gens: String = ""
    var gene: String = ""
    var gene2: String = ""

    // Listas de palabras (omitidas por brevedad)

    func uncountableNounsGen() {
        let i = Int.random(in: 0..<sustantivosIncontables.count)
        let sustantivotagged = sustantivosIncontablesTagged[i]
        let sust = sustantivosIncontables[i]
        let noun = uncountableNouns[i]
        let gender = sustantivotagged.last! // Get last character
        if gender == "M" {
            gens = "mucho " + sust
            gene = "much " + noun
        } else if gender == "F" {
            gens = "mucha " + sust
            gene = "much " + noun
        }
    }

    func randomAs() {
        let a = Int.random(in: 0..<wordsAfterAs.count)
        gens = wordsAfterAssp[a]
        gene = wordsAfterAs[a]
    }

    func randomAll() {
        let r = Int.random(in: 0..<nounsAfterAll.count)
        gens = nounsAfterAllSpanish[r]
        gene = nounsAfterAll[r]
    }

    func vocab0a50() {
        if j == alleng.count {
            j = 0
        }
        ob = allsp[j]
        eng = alleng[j]
        j += 1
    }

    func prepartob() {
        let i = Int.random(in: 0..<articles.count)
        let ii = Int.random(in: 0..<soms.count)
        let iii = Int.random(in: 0..<sofs.count)
        let iv = Int.random(in: 0..<poms.count)
        let v = Int.random(in: 0..<pofs.count)
        let vi = Int.random(in: 0..<prep.count)
        let temp = articulos[i]
        switch temp {
        case "el ":
            ob = prepsp[vi] + articulos[i] + soms[ii]
            eng = prep[vi] + articles[0] + some[ii]
        case "la ":
            ob = prepsp[vi] + articulos[i] + sofs[iii]
            eng = prep[vi] + articles[1] + sofe[iii]
        case "los ":
            ob = prepsp[vi] + articulos[i] + poms[iv]
            eng = prep[vi] + articles[2] + pome[iv]
        case "las ":
            ob = prepsp[vi] + articulos[i] + pofs[v]
            eng = prep[vi] + articles[3] + pofe[v]
        case "un ":
            ob = prepsp[vi] + articulos[i] + soms[ii]
            eng = prep[vi] + articles[4] + some[ii]
        case "una ":
            ob = prepsp[vi] + articulos[i] + sofs[iii]
            eng = prep[vi] + articles[5] + sofe[iii]
        case "unos ":
            ob = prepsp[vi] + articulos[i] + poms[iv]
            eng = prep[vi] + articles[6] + pome[iv]
        case "unas ":
            ob = prepsp[vi] + articulos[i] + pofs[v]
            eng = prep[vi] + articles[7] + pofe[v]
        default:
            break
        }
    }

    func prepartob(pos: Int) {
        let i = Int.random(in: 0..<articles.count)
        let ii = Int.random(in: 0..<soms.count)
        let iii = Int.random(in: 0..<sofs.count)
        let iv = Int.random(in: 0..<poms.count)
        let v = Int.random(in: 0..<pofs.count)
        let temp = articulos[i]
        switch temp {
        case "el ":
            ob = prepsp2[pos] + articulos[i] + soms[ii]
            eng = prep2[pos] + articles[0] + some[ii]
        case "la ":
            ob = prepsp2[pos] + articulos[i] + sofs[iii]
            eng = prep2[pos] + articles[1] + sofe[iii]
        case "los ":
            ob = prepsp2[pos] + articulos[i] + poms[iv]
            eng = prep2[pos] + articles[2] + pome[iv]
        case "las ":
            ob = prepsp2[pos] + articulos[i] + pofs[v]
            eng = prep2[pos] + articles[3] + pofe[v]
        case "un ":
            ob = prepsp2[pos] + articulos[i] + soms[ii]
            eng = prep2[pos] + articles[4] + some[ii]
        case "una ":
            ob = prepsp2[pos] + articulos[i] + sofs[iii]
            eng = prep2[pos] + articles[5] + sofe[iii]
        case "unos ":
            ob = prepsp2[pos] + articulos[i] + poms[iv]
            eng = prep2[pos] + articles[6] + pome[iv]
        case "unas ":
            ob = prepsp2[pos] + articulos[i] + pofs[v]
            eng = prep2[pos] + articles[7] + pofe[v]
        default:
            break
        }
    }

    func artob() {
        let i = Int.random(in: 0..<8)
        let ii = Int.random(in: 0..<soms.count)
        let iii = Int.random(in: 0..<sofs.count)
        let iv = Int.random(in: 0..<poms.count)
        let v = Int.random(in: 0..<pofs.count)
        let temp = articulos[i]
        switch temp {
        case "el ":
            ob = articulos[i] + soms[ii]
            eng = articles[0] + some[ii]
        case "la ":
            ob = articulos[i] + sofs[iii]
            eng = articles[1] + sofe[iii]
        case "los ":
            ob = articulos[i] + poms[iv]
            eng = articles[2] + pome[iv]
        case "las ":
            ob = articulos[i] + pofs[v]
            eng = articles[3] + pofe[v]
        case "un ":
            ob = articulos[i] + soms[ii]
            eng = articles[4] + some[ii]
        case "una ":
            ob = articulos[i] + sofs[iii]
            eng = articles[5] + sofe[iii]
        case "unos ":
            ob = articulos[i] + poms[iv]
            eng = articles[6] + pome[iv]
        case "unas ":
            ob = articulos[i] + pofs[v]
            eng = articles[7] + pofe[v]
        default:
            break
        }
    }

    func atmeth(pos: Int) {
        let locationIndex = Int.random(in: 0..<lugaresEn.count)
        ob = prepsp2[pos] + lugaresEn[locationIndex]
        eng = prep2[pos] + placesAt[locationIndex]
    }

    func artob(artpos: Int) {
        let i = Int.random(in: 0..<4)
        let ii = Int.random(in: 0..<soms.count)
        let iii = Int.random(in: 0..<sofs.count)
        let iv = Int.random(in: 0..<poms.count)
        let v = Int.random(in: 0..<pofs.count)
        let temp = articulos[i]
        if artpos == 0 {
            switch temp {
            case "el ":
                ob = articulos[0] + soms[ii]
                eng = articles[0] + some[ii]
            case "la ":
                ob = articulos[1] + sofs[iii]
                eng = articles[1] + sofe[iii]
            case "los ":
                ob = articulos[2] + poms[iv]
                eng = articles[2] + pome[iv]
            case "las ":
                ob = articulos[3] + pofs[v]
                eng = articles[3] + pofe[v]
            default:
                break
            }
        }
    }

    func artoba() {
        let i = Bool.random() ? 5 : 4
        let ii = Int.random(in: 0..<soms.count)
        let iii = Int.random(in: 0..<sofs.count)
        let temp = articulos[i]
        switch temp {
        case "un ":
            ob = articulos[i] + soms[ii]
            eng = articles[4] + some[ii]
        case "una ":
            ob = articulos[i] + sofs[iii]
            eng = articles[5] + sofe[iii]
        default:
            break
        }
    }

    func pronverb() {
        let i = Int.random(in: 0..<pronombres.count)
        let iv = Int.random(in: 0..<vib.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + vib1[iv]
                gene = pronoun[0] + vib[iv]
            case 1:
                gens = pronombres[0] + "no " + vib1[iv]
                gene = pronoun[0] + "don't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + vib2[iv]
                gene = pronoun[1] + vib[iv]
            case 1:
                gens = pronombres[1] + "no " + vib2[iv]
                gene = pronoun[1] + "don't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + vib3esp[iv]
                gene = pronoun[2] + vib3[iv]
            case 1:
                gens = pronombres[2] + "no " + vib3esp[iv]
                gene = pronoun[2] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + vib3esp[iv]
                gene = pronoun[3] + vib3[iv]
            case 1:
                gens = pronombres[3] + "no " + vib3esp[iv]
                gene = pronoun[3] + "doesn't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + vib3esp[iv]
                gene = pronoun[4] + vib3[iv]
            case 1:
                gens = pronombres[4] + "no " + vib3esp[iv]
                gene = pronoun[4] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + vib3p[iv]
                gene = pronoun[5] + vib[iv]
            case 1:
                gens = pronombres[5] + "no " + vib3p[iv]
                gene = pronoun[5] + "don't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + vibnos[iv]
                gene = pronoun[6] + vib[iv]
            case 1:
                gens = pronombres[6] + "no " + vibnos[iv]
                gene = pronoun[6] + "don't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func pronverb(pronom: String) {
        let iv = Int.random(in: 0..<vib.count)
        let iii = Int.random(in: 0..<2)
        switch pronom {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + vib1[iv]
                gene = pronoun[0] + vib[iv]
            case 1:
                gens = pronombres[0] + "no " + vib1[iv]
                gene = pronoun[0] + "don't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + vib2[iv]
                gene = pronoun[1] + vib[iv]
            case 1:
                gens = pronombres[1] + "no " + vib2[iv]
                gene = pronoun[1] + "don't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + vib3esp[iv]
                gene = pronoun[2] + vib3[iv]
            case 1:
                gens = pronombres[2] + "no " + vib3esp[iv]
                gene = pronoun[2] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + vib3esp[iv]
                gene = pronoun[3] + vib3[iv]
            case 1:
                gens = pronombres[3] + "no " + vib3esp[iv]
                gene = pronoun[3] + "doesn't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + vib3esp[iv]
                gene = pronoun[4] + vib3[iv]
            case 1:
                gens = pronombres[4] + "no " + vib3esp[iv]
                gene = pronoun[4] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + vib3p[iv]
                gene = pronoun[5] + vib[iv]
            case 1:
                gens = pronombres[5] + "no " + vib3p[iv]
                gene = pronoun[5] + "don't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + vibnos[iv]
                gene = pronoun[6] + vib[iv]
            case 1:
                gens = pronombres[6] + "no " + vibnos[iv]
                gene = pronoun[6] + "don't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func pronverb(verpos: Int) {
        let i = Int.random(in: 0..<pronombres.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + vib1[verpos]
                gene = pronoun[0] + vibdo[verpos]
            case 1:
                gens = pronombres[0] + "no " + vib1[verpos]
                gene = pronoun[0] + "don't " + vibdo[verpos]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + vib2[verpos]
                gene = pronoun[1] + vibdo[verpos]
            case 1:
                gens = pronombres[1] + "no " + vib2[verpos]
                gene = pronoun[1] + "don't " + vibdo[verpos]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + vib3esp[verpos]
                gene = pronoun[2] + vib3do[verpos]
            case 1:
                gens = pronombres[2] + "no " + vib3esp[verpos]
                gene = pronoun[2] + "doesn't " + vibdo[verpos]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + vib3esp[verpos]
                gene = pronoun[3] + vib3do[verpos]
            case 1:
                gens = pronombres[3] + "no " + vib3esp[verpos]
                gene = pronoun[3] + "doesn't " + vibdo[verpos]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + vib3esp[verpos]
                gene = pronoun[4] + vib3do[verpos]
            case 1:
                gens = pronombres[4] + "no " + vib3esp[verpos]
                gene = pronoun[4] + "doesn't " + vibdo[verpos]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + vib3p[verpos]
                gene = pronoun[5] + vibdo[verpos]
            case 1:
                gens = pronombres[5] + "no " + vib3p[verpos]
                gene = pronoun[5] + "don't " + vibdo[verpos]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + vibnos[verpos]
                gene = pronoun[6] + vibdo[verpos]
            case 1:
                gens = pronombres[6] + "no " + vibnos[verpos]
                gene = pronoun[6] + "don't " + vibdo[verpos]
            default:
                break
            }
        default:
            break
        }
    }

    func thereBe() {
        // Completa la implementación
    }

    // Adjectives
    func adjmethod() {
        let adjt = Int.random(in: 0..<adj.count)
        let i = Int.random(in: 0..<sust.count)
        let tempadj = adj[adjt]
        switch tempadj {
        case "this ":
            gens = adje[adjt] + sust[i]
            gene = adj[adjt] + noun[i]
        case "his ":
            gens = adje[adjt] + sust[i] + "(de él)"
            gene = adj[adjt] + noun[i]
        case "her ":
            gens = adje[adjt] + sust[i] + "(de ella)"
            gene = adj[adjt] + noun[i]
        case "their ":
            gens = adje[adjt] + sust[i] + "(de ellos)"
            gene = adj[adjt] + noun[i]
        case "that ":
            gens = adje[adjt] + sust[i]
            gene = adj[adjt] + noun[i]
        default:
            break
        }
    }

    func adjmethod(adjective: String) {
        let i = Int.random(in: 0..<sust.count)
        let sustantivotagged = sustTagged[i]
        let sustantivo = sust[i]
        let nouni = noun[i]
        let gender = sustantivotagged.last! // Get last character
        switch adjective {
        case "this ":
            if gender == "M" {
                gens = "este " + sustantivo
                gene = adj[0] + nouni
            } else if gender == "F" {
                gens = "esta " + sustantivo
                gene = adj[0] + nouni
            }
        case "his ":
            gens = adje[1] + sustantivo + "(de él)"
            gene = adj[1] + nouni
        case "her ":
            gens = adje[2] + sustantivo + "(de ella)"
            gene = adj[2] + nouni
        case "their ":
            gens = adje[3] + sustantivo + "(de ellos)"
            gene = adj[3] + nouni
        case "that ":
            if gender == "M" {
                gens = "ese " + sustantivo
                gene = adj[4] + nouni
            } else if gender == "F" {
                gens = "esa " + sustantivo
                gene = adj[4] + nouni
            }
        case "my ":
            gens = "mi " + sustantivo
            gene = "my " + nouni
        case "your ":
            gens = "tu " + sustantivo
            gene = "your " + nouni
        case "its ":
            gens = "su " + sustantivo
            gene = "its " + nouni
        case "our ":
            if gender == "M" {
                gens = "nuestro " + sustantivo
                gene = "our " + nouni
            } else if gender == "F" {
                gens = "nuestra " + sustantivo
                gene = "our " + nouni
            }
        case "no ":
            if gender == "M" {
                gens = "ningún " + sustantivo
                gene = "no " + nouni
            } else if gender == "F" {
                gens = "ningúna " + sustantivo
                gene = "no " + nouni
            }
        case "every ":
            gens = "cada " + sustantivo
            gene = "every " + nouni
        case "another ":
            if gender == "M" {
                gens = "otro " + sustantivo
                gene = "another " + nouni
            } else if gender == "F" {
                gens = "otra " + sustantivo
                gene = "another " + nouni
            }
        case "same ":
            if gender == "M" {
                gens = "el mismo " + sustantivo
                gene = "the same " + nouni
            } else if gender == "F" {
                gens = "la misma " + sustantivo
                gene = "the same " + nouni
            }
        case "such ":
            gens = "tal " + sustantivo
            gene = "such " + nouni
        case "own ":
            if gender == "M" {
                gens = "propio " + sustantivo
                gene = "own " + nouni
            } else {
                gens = "propia " + sustantivo
                gene = "own " + nouni
            }
        case "each ":
            gens = "cada " + sustantivo
            gene = "each " + nouni
        case "one ":
            if gender == "M" {
                gens = "un " + sustantivo
                gene = "one " + nouni
            } else if gender == "F" {
                gens = "una " + sustantivo
                gene = "one " + nouni
            }
        case "next ":
            if gender == "M" {
                gens = "el siguiente " + sustantivo
                gene = "the next " + nouni
            } else if gender == "F" {
                gens = "la siguiente " + sustantivo
                gene = "the next " + nouni
            }
        case "first ":
            if gender == "M" {
                gens = "el primer " + sustantivo
                gene = "the first " + nouni
            } else if gender == "F" {
                gens = "la primera " + sustantivo
                gene = "the first " + nouni
            }
        case "second ":
            if gender == "M" {
                gens = "el segundo " + sustantivo
                gene = "the second " + nouni
            } else if gender == "F" {
                gens = "la segunda " + sustantivo
                gene = "the second " + nouni
            }
        case "last ":
            if gender == "M" {
                gens = "el último " + sustantivo
                gene = "the last " + nouni
            } else if gender == "F" {
                gens = "la última " + sustantivo
                gene = "the last " + nouni
            }
        case "any ":
            gens = "cualquier " + sustantivo
            gene = "any " + nouni
        default:
            break
        }
    }

    func adjmethodP(adjective: String) {
        let i = Int.random(in: 0..<sustP.count)
        let sustantivotagged = sustTagged[i]
        let gender = sustantivotagged.last! // Get last character
        switch adjective {
        case "all":
            if gender == "M" {
                gens = "todos los " + sustP[i]
                gene = "all the " + nounP[i]
            } else if gender == "F" {
                gens = "todas las " + sustP[i]
                gene = "all the " + nounP[i]
            }
        case "some ":
            if gender == "M" {
                gens = "algunos " + sustP[i]
                gene = "some " + nounP[i]
            } else if gender == "F" {
                gens = "algunas " + sustP[i]
                gene = "some " + nounP[i]
            }
        case "these ":
            if gender == "M" {
                gens = "estos " + sustP[i]
                gene = "these " + nounP[i]
            } else if gender == "F" {
                gens = "estas " + sustP[i]
                gene = "these " + nounP[i]
            }
        case "more ":
            gens = "más " + sustP[i]
            gene = "more " + nounP[i]
        case "many ":
            if gender == "M" {
                gens = "muchos " + sustP[i]
                gene = "many " + nounP[i]
            } else if gender == "F" {
                gens = "muchas " + sustP[i]
                gene = "many " + nounP[i]
            }
        case "those ":
            if gender == "M" {
                gens = "aquellos " + sustP[i]
                gene = "those " + nounP[i]
            } else if gender == "F" {
                gens = "aquellas " + sustP[i]
                gene = "those " + nounP[i]
            }
        case "such ":
            gens = "tales " + sustP[i]
            gene = "such " + nounP[i]
        case "most ":
            if gender == "M" {
                gens = "la mayoría de los " + sustP[i]
                gene = "most of " + nounP[i]
            } else if gender == "F" {
                gens = "la mayoría de las " + sustP[i]
                gene = "most of " + nounP[i]
            }
        case "few ":
            if gender == "M" {
                gens = "pocos " + sustP[i]
                gene = "few " + nounP[i]
            } else if gender == "F" {
                gens = "pocas " + sustP[i]
                gene = "few " + nounP[i]
            }
        case "both ":
            if gender == "M" {
                gens = "ambos " + sustP[i]
                gene = "both " + nounP[i]
            } else if gender == "F" {
                gens = "ambas " + sustP[i]
                gene = "both " + nounP[i]
            }
        case "several ":
            if gender == "M" {
                gens = "varios " + sustP[i]
                gene = "several " + nounP[i]
            } else if gender == "F" {
                gens = "varias " + sustP[i]
                gene = "several " + nounP[i]
            }
        case "two ":
            gens = "dos " + sustP[i]
            gene = "two " + nounP[i]
        case "three ":
            gens = "tres " + sustP[i]
            gene = "three " + nounP[i]
        case "four ":
            gens = "cuatro " + sustP[i]
            gene = "four " + nounP[i]
        case "million":
            gens = "un millón de " + sustP[i]
            gene = "a million " + nounP[i]
        case "five ":
            gens = "cinco " + sustP[i]
            gene = "five " + nounP[i]
        case "six ":
            gens = "seis " + sustP[i]
            gene = "six " + nounP[i]
        default:
            gens = "error"
            gene = "error"
        }
    }

    func advpronverb() {
        let i = Int.random(in: 0..<pronombres.count)
        let iv = Int.random(in: 0..<vib.count)
        let ii = Int.random(in: 0..<adv.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[0] + vib1[iv]
                gene = adv[ii] + pronoun[0] + vib[iv]
            case 1:
                gens = adver[ii] + pronombres[0] + "no " + vib1[iv]
                gene = adv[ii] + pronoun[0] + "don't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[1] + vib2[iv]
                gene = adv[ii] + pronoun[1] + vib[iv]
            case 1:
                gens = adver[ii] + pronombres[1] + "no " + vib2[iv]
                gene = adv[ii] + pronoun[1] + "don't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[2] + vib3esp[iv]
                gene = adv[ii] + pronoun[2] + vib3[iv]
            case 1:
                gens = adver[ii] + pronombres[2] + "no " + vib3esp[iv]
                gene = adv[ii] + pronoun[2] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[3] + vib3esp[iv]
                gene = adv[ii] + pronoun[3] + vib3[iv]
            case 1:
                gens = adver[ii] + pronombres[3] + "no " + vib3esp[iv]
                gene = adv[ii] + pronoun[3] + "doesn't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[4] + vib3esp[iv]
                gene = adv[ii] + pronoun[4] + vib3[iv]
            case 1:
                gens = adver[ii] + pronombres[4] + "no " + vib3esp[iv]
                gene = adv[ii] + pronoun[4] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[5] + vib3p[iv]
                gene = adv[ii] + pronoun[5] + vib[iv]
            case 1:
                gens = adver[ii] + pronombres[5] + "no " + vib3p[iv]
                gene = adv[ii] + pronoun[5] + "don't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = adver[ii] + pronombres[6] + vibnos[iv]
                gene = adv[ii] + pronoun[6] + vib[iv]
            case 1:
                gens = adver[ii] + pronombres[6] + "no " + vibnos[iv]
                gene = adv[ii] + pronoun[6] + "don't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func advpronverb(advPos: Int) {
        let i = Int.random(in: 0..<pronombres.count)
        let iv = Int.random(in: 0..<vib.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[0] + vib1[iv]
                gene = adv[advPos] + pronoun[0] + vib[iv]
            case 1:
                gens = adver[advPos] + pronombres[0] + "no " + vib1[iv]
                gene = adv[advPos] + pronoun[0] + "don't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[1] + vib2[iv]
                gene = adv[advPos] + pronoun[1] + vib[iv]
            case 1:
                gens = adver[advPos] + pronombres[1] + "no " + vib2[iv]
                gene = adv[advPos] + pronoun[1] + "don't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[2] + vib3esp[iv]
                gene = adv[advPos] + pronoun[2] + vib3[iv]
            case 1:
                gens = adver[advPos] + pronombres[2] + "no " + vib3esp[iv]
                gene = adv[advPos] + pronoun[2] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[3] + vib3esp[iv]
                gene = adv[advPos] + pronoun[3] + vib3[iv]
            case 1:
                gens = adver[advPos] + pronombres[3] + "no " + vib3esp[iv]
                gene = adv[advPos] + pronoun[3] + "doesn't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[4] + vib3esp[iv]
                gene = adv[advPos] + pronoun[4] + vib3[iv]
            case 1:
                gens = adver[advPos] + pronombres[4] + "no " + vib3esp[iv]
                gene = adv[advPos] + pronoun[4] + "doesn't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[5] + vib3p[iv]
                gene = adv[advPos] + pronoun[5] + vib[iv]
            case 1:
                gens = adver[advPos] + pronombres[5] + "no " + vib3p[iv]
                gene = adv[advPos] + pronoun[5] + "don't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = adver[advPos] + pronombres[6] + vibnos[iv]
                gene = adv[advPos] + pronoun[6] + vib[iv]
            case 1:
                gens = adver[advPos] + pronombres[6] + "no " + vibnos[iv]
                gene = adv[advPos] + pronoun[6] + "don't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func pronverbwill() {
        let i = Int.random(in: 0..<pronombres.count)
        let iv = Int.random(in: 0..<vib.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + verbo1f[iv]
                gene = pronoun[0] + "will " + vib[iv]
            case 1:
                gens = pronombres[0] + "no " + verbo1f[iv]
                gene = pronoun[0] + "won't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + verbo2f[iv]
                gene = pronoun[1] + "will " + vib[iv]
            case 1:
                gens = pronombres[1] + "no " + verbo2f[iv]
                gene = pronoun[1] + "won't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + verbo3f[iv]
                gene = pronoun[2] + "will " + vib[iv]
            case 1:
                gens = pronombres[2] + "no " + verbo3f[iv]
                gene = pronoun[2] + "won't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + verbo3f[iv]
                gene = pronoun[3] + "will " + vib[iv]
            case 1:
                gens = pronombres[3] + "no " + verbo3f[iv]
                gene = pronoun[3] + "won't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + verbo3f[iv]
                gene = pronoun[4] + "will " + vib[iv]
            case 1:
                gens = pronombres[4] + "no " + verbo3f[iv]
                gene = pronoun[4] + "won't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + verbos4f[iv]
                gene = pronoun[5] + "will " + vib[iv]
            case 1:
                gens = pronombres[5] + "no " + verbos4f[iv]
                gene = pronoun[5] + "won't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + verbos5f[iv]
                gene = pronoun[6] + "will " + vib[iv]
            case 1:
                gens = pronombres[6] + "no " + verbos5f[iv]
                gene = pronoun[6] + "won't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func pronverbwould() {
        let i = Int.random(in: 0..<pronombres.count)
        let iv = Int.random(in: 0..<vib.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + verbo1hip[iv]
                gene = pronoun[0] + "would " + vib[iv]
            case 1:
                gens = pronombres[0] + "no " + verbo1hip[iv]
                gene = pronoun[0] + "wouldn't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + verbo2hip[iv]
                gene = pronoun[1] + "would " + vib[iv]
            case 1:
                gens = pronombres[1] + "no " + verbo2hip[iv]
                gene = pronoun[1] + "wouldn't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + verbo3hip[iv]
                gene = pronoun[2] + "would " + vib[iv]
            case 1:
                gens = pronombres[2] + "no " + verbo3hip[iv]
                gene = pronoun[2] + "wouldn't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + verbo3hip[iv]
                gene = pronoun[3] + "would " + vib[iv]
            case 1:
                gens = pronombres[3] + "no " + verbo3hip[iv]
                gene = pronoun[3] + "wouldn't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + verbo3hip[iv]
                gene = pronoun[4] + "would " + vib[iv]
            case 1:
                gens = pronombres[4] + "no " + verbo3hip[iv]
                gene = pronoun[4] + "wouldn't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + verbos4hip[iv]
                gene = pronoun[5] + "would " + vib[iv]
            case 1:
                gens = pronombres[5] + "no " + verbos4hip[iv]
                gene = pronoun[5] + "wouldn't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + verbos5hip[iv]
                gene = pronoun[6] + "would " + vib[iv]
            case 1:
                gens = pronombres[6] + "no " + verbos5hip[iv]
                gene = pronoun[6] + "wouldn't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func pronverbcan() {
        let i = Int.random(in: 0..<pronombres.count)
        let iv = Int.random(in: 0..<vib.count)
        let temp1 = pronombres[i]
        let iii = Int.random(in: 0..<2)
        switch temp1 {
        case "yo ":
            switch iii {
            case 0:
                gens = pronombres[0] + "puedo " + verbos[iv]
                gene = pronoun[0] + "can " + vib[iv]
            case 1:
                gens = pronombres[0] + "no puedo " + verbos[iv]
                gene = pronoun[0] + "can't " + vib[iv]
            default:
                break
            }
        case "tú ":
            switch iii {
            case 0:
                gens = pronombres[1] + "puedes " + verbos[iv]
                gene = pronoun[1] + "can " + vib[iv]
            case 1:
                gens = pronombres[1] + "no puedes " + verbos[iv]
                gene = pronoun[1] + "can't " + vib[iv]
            default:
                break
            }
        case "él ":
            switch iii {
            case 0:
                gens = pronombres[2] + "puede " + verbos[iv]
                gene = pronoun[2] + "can " + vib[iv]
            case 1:
                gens = pronombres[2] + "no puede " + verbos[iv]
                gene = pronoun[2] + "can't " + vib[iv]
            default:
                break
            }
        case "ella ":
            switch iii {
            case 0:
                gens = pronombres[3] + "puede " + verbos[iv]
                gene = pronoun[3] + "can " + vib[iv]
            case 1:
                gens = pronombres[3] + "no puede " + verbos[iv]
                gene = pronoun[3] + "can't " + vib[iv]
            default:
                break
            }
        case "eso ":
            switch iii {
            case 0:
                gens = pronombres[4] + "puede " + verbos[iv]
                gene = pronoun[4] + "can " + vib[iv]
            case 1:
                gens = pronombres[4] + "no puede " + verbos[iv]
                gene = pronoun[4] + "can't " + vib[iv]
            default:
                break
            }
        case "ellos ":
            switch iii {
            case 0:
                gens = pronombres[5] + "pueden " + verbos[iv]
                gene = pronoun[5] + "can " + vib[iv]
            case 1:
                gens = pronombres[5] + "no pueden " + verbos[iv]
                gene = pronoun[5] + "can't " + vib[iv]
            default:
                break
            }
        case "nosotros ":
            switch iii {
            case 0:
                gens = pronombres[6] + "podemos " + verbos[iv]
                gene = pronoun[6] + "can " + vib[iv]
            case 1:
                gens = pronombres[6] + "no podemos " + verbos[iv]
                gene = pronoun[6] + "can't " + vib[iv]
            default:
                break
            }
        default:
            break
        }
    }

    func tobe() {
        let t = Int.random(in: 0..<pronombres.count)
        let tempt = pronombres[t]
        switch tempt {
        case "yo ":
            gens = "yo soy"
            gene = "I am"
        case "tú ":
            gens = "tú eres"
            gene = "you are"
        case "él ":
            gens = "él es"
            gene = "he is"
        case "ella ":
            gens = "ella es"
            gene = "she is"
        case "eso ":
            gens = "eso es"
            gene = "it is"
        case "nosotros ":
            gens = "nosotros somos"
            gene = "we are"
        case "ellos ":
            gens = "ellos son"
            gene = "they are"
        default:
            break
        }
    }

    func genPassives(tense: String) {
        let part = Int.random(in: 0..<passiveParticiples.count)
        let selectedParticiple: String
        let selectedParticipleEsp: String
        let nounObject = NewNounClass();
        let nounsFromNounClassSp = nounObject.peopleNounsSpanish
        let nounsFromNounClassEng = nounObject.peopleNouns
        let nounPos = Int.random(in: 0..<nounObject.peopleNounsSpanish.count)
        let englishNoun = nounsFromNounClassEng[nounPos]
        let spanishSust = nounsFromNounClassSp[nounPos]
        let t = Int.random(in: 0..<pronombresSineso.count)
        let tempt = pronombresSineso[t]
        switch tempt {
        case "yo ":
            switch tense {
            case "present simple":
                gens = "yo soy"
                gene = "I am"
            case "present continuous":
                gens = "yo estoy siendo"
                gene = "I am being"
            case "present perfect":
                gens = "yo he sido"
                gene = "I have been"
            case "past simple":
                gens = "yo fui"
                gene = "I was"
            case "past continuous":
                gens = "yo estaba siendo"
                gene = "I was being"
            case "past perfect":
                gens = "yo había sido"
                gene = "I had been"
            case "future simple":
                gens = "yo seré"
                gene = "I will be"
            case "would simple":
                gens = "yo sería"
                gene = "I would be"
            default:
                gens = "no such tense"
            }
        case "tú ":
            switch tense {
            case "present simple":
                gens = "tú eres"
                gene = "you are"
            case "present continuous":
                gens = "tú estás siendo"
                gene = "you are being"
            case "present perfect":
                gens = "tú has sido"
                gene = "you have been"
            case "past simple":
                gens = "tu fuiste"
                gene = "you were"
            case "past continuous":
                gens = "tu estabas siendo"
                gene = "you were being"
            case "past perfect":
                gens = "tú habías sido"
                gene = "you had been"
            case "future simple":
                gens = "tu serás"
                gene = "you will be"
            case "would simple":
                gens = "tú serías"
                gene = "you would be"
            default:
                gens = "no such tense-you"
            }
        case "él ":
            switch tense {
            case "present simple":
                gens = "él es"
                gene = "he is"
            case "present continuous":
                gens = "él está siendo"
                gene = "he is being"
            case "present perfect":
                gens = "él ha sido"
                gene = "he has been"
            case "past simple":
                gens = "él fue"
                gene = "he was"
            case "past continuous":
                gens = "él estaba siendo"
                gene = "he was being"
            case "past perfect":
                gens = "él había sido"
                gene = "he had been"
            case "future simple":
                gens = "él será"
                gene = "he will be"
            case "would simple":
                gens = "él sería"
                gene = "he would be"
            default:
                gens = "no such tense-he"
            }
        case "ella ":
            switch tense {
            case "present simple":
                gens = "ella es"
                gene = "she is"
            case "present continuous":
                gens = "ella está siendo"
                gene = "she is being"
            case "present perfect":
                gens = "ella ha sido"
                gene = "she has been"
            case "past simple":
                gens = "ella fue"
                gene = "she was"
            case "past continuous":
                gens = "ella estaba siendo"
                gene = "she was being"
            case "past perfect":
                gens = "ella había sido"
                gene = "she had been"
            case "future simple":
                gens = "ella será"
                gene = "she will be"
            case "would simple":
                gens = "ella sería"
                gene = "she would be"
            default:
                gens = "no such tense"
            }
        case "nosotros ":
            switch tense {
            case "present simple":
                gens = "nosotros somos"
                gene = "we are"
            case "present continuous":
                gens = "nosotros estamos siendo"
                gene = "we are being"
            case "present perfect":
                gens = "nosotros hemos sido"
                gene = "we have been"
            case "past simple":
                gens = "nosotros fuimos"
                gene = "we were"
            case "past continuous":
                gens = "nosotros estábamos siendo"
                gene = "we were being"
            case "past perfect":
                gens = "nosotros habíamos sido"
                gene = "we had been"
            case "future simple":
                gens = "nosotros seremos"
                gene = "we will be"
            case "would simple":
                gens = "nosotros seríamos"
                gene = "we would be"
            default:
                gens = "no such tense"
            }
        case "ellos ":
            switch tense {
            case "present simple":
                gens = "ellos son"
                gene = "they are"
            case "present continuous":
                gens = "ellos están siendo"
                gene = "they are being"
            case "present perfect":
                gens = "ellos han sido"
                gene = "they have been"
            case "past simple":
                gens = "ellos fueron"
                gene = "they were"
            case "past continuous":
                gens = "ellos estaban siendo"
                gene = "they were being"
            case "past perfect":
                gens = "ellos habían sido"
                gene = "they had been"
            case "future simple":
                gens = "ellos serán"
                gene = "they will be"
            case "would simple":
                gens = "ellos serían"
                gene = "they would be"
            default:
                gens = "no such tense"
            }
        default:
            break
        }
        if tempt == "ella " {
            selectedParticiple = passiveParticiples[part]
            selectedParticipleEsp = participlesPasivosFemeninos[part]
        } else if tempt == "ellos " || tempt == "nosotros " {
            selectedParticiple = passiveParticiples[part]
            selectedParticipleEsp = participlesPasivosMasculinosPlurales[part]
        } else {
            selectedParticiple = passiveParticiples[part]
            selectedParticipleEsp = participlesPasivos[part]
        }
        gens += " " + selectedParticipleEsp + " por " + spanishSust
        gene += " " + selectedParticiple + " by " + englishNoun
    }

    func genWho() {
        let t = Int.random(in: 0..<pronombres.count)
        let tempt = pronombres[t]
        switch tempt {
        case "yo ":
            gens = "quién soy yo"
            gene = "who am I"
        case "tú ":
            gens = "quién eres tú"
            gene = "who are you"
        case "él ":
            gens = "quién es él"
            gene = "who is he"
        case "ella ":
            gens = "quién es ella"
            gene = "who is she"
        case "eso ":
            gens = "quién es eso"
            gene = "who is it"
        case "nosotros ":
            gens = "quién somos nosotros"
            gene = "who are we"
        case "ellos ":
            gens = "quién son ellos"
            gene = "who are they"
        default:
            break
        }
    }

    func randomNot() {
        let not = Int.random(in: 0..<auxiliariesWithNot.count)
        eng = auxiliariesWithNot[not]
    }

    func randomNt() {
        let not = Int.random(in: 0..<negatedAuxiliaries.count)
        eng = negatedAuxiliaries[not]
    }

    func randomOr() {
        let lugares = Int.random(in: 0..<lugaresEn.count)
        ob = "o " + lugaresEn[lugares]
        eng = "or " + placesAt[lugares]
    }

    func randomMake() {
        let m = Int.random(in: 0..<make.count)
        gens = hacer[m]
        gene = make[m]
    }

    let alleng = ["the ", "to be", "and", "of", "a", "in", "to", "to have", "it", "I", "that", "that", "for", "for", "you", "he", "with", "on", "to do", "to say", "this", "they", "at", "but", "we", "his", "from", "from", "since", "by", "she", "or", "as", "as", "what", "what", "to go", "their", "can", "who", "to get", "if", "would", "her", "all", "my", "to make", "about", "about", "to know", "will", "up"]

    let allsp = ["el, la, los o las", "ser o estar", "y", "de", "un o una", "en", "a", "tener o haber", "eso", "yo", "eso", "que, para conectar", "por", "para", "tu", "el ", "con", "sobre", "hacer", "decir", "esto", "ellos", "en", "pero", "nosotros", "su de el", "desde, para un lugar", "de", "desde", "por", "ella", "o", "como", "en lo que", "que, para preguntar", "lo que", "ir", "su de ellos", "poder", "quien", "obtener", "si", "la terminacion ria en los verbos", "su de ella", "todo", "mi", "hacer", "acerca", "acerca de", "saber", "el modal que hace futuro a un verbo", "arriba"]

    let articles = ["the ", "the ", "the ", "the ", "a ", "a ", "some ", "some "]
    let articulos = ["el ", "la ", "los ", "las ", "un ", "una ", "unos ", "unas "]

    let pronoun = ["I ", "you ", "he ", "she ", "it ", "they ", "we "]
    let pronombres = ["yo ", "tú ", "él ", "ella ", "eso ", "ellos ", "nosotros "]
    let pronombresSineso = ["yo ", "tú ", "él ", "ella ", "ellos ", "nosotros "]

    let adj = ["this ", "his ", "her ", "their ", "that "]
    let adje = ["este ", "su ", "su ", "su ", "ese "]

    let prep = ["of ", "in ", "to ", "for ", "with ", "on ", "from ", "about "]
    let prepsp = ["de ", "en ", "a ", "para ", "con ", "sobre ", "desde ", "acerca de "]
    let prep2 = ["of ", "in ", "to ", "for ", "with ", "on ", "from ", "about ", "at ", "by "]
    let prepsp2 = ["de ", "en ", "a ", "para ", "con ", "sobre ", "desde ", "acerca de ", "en ", "por "]

    // Verbos base
    let vib = ["have ", "say ", "go ", "get ", "make ", "know "]
    let vibdo = ["have ", "say ", "go ", "get ", "do ", "know "]
    let vib3 = ["has ", "says ", "goes ", "gets ", "makes ", "knows "]
    let vib3do = ["has ", "says ", "goes ", "gets ", "does ", "knows "]
    let verbos = ["tener ", "decir ", "ir ", "obtener ", "hacer ", "saber "]

    // Presente
    let vib1 = ["tengo ", "digo ", "voy ", "obtengo ", "hago ", "sé "]
    let vib2 = ["tienes ", "dices ", "vas ", "obtienes ", "haces ", "sabes "]
    let vib3esp = ["tiene ", "dice ", "va ", "obtiene ", "hace ", "sabe "]
    let vib3p = ["tienen ", "dicen ", "van ", "obtienen ", "hacen ", "saben "]
    let vibnos = ["tenemos ", "decimos ", "vamos ", "obtenemos ", "hacemos ", "sabemos "]

    // Hipotético
    let verbo1hip = ["tendría ", "diría ", "iría ", "obtendría ", "haría ", "sabría "]
    let verbo2hip = ["tendrías ", "dirías ", "irías ", "obtendrías ", "harías ", "sabrías "]
    let verbo3hip = ["tendría ", "diría ", "iría ", "obtendría ", "haría ", "sabría "]
    let verbos4hip = ["tendrían ", "dirían ", "irían ", "obtendrían ", "harían ", "sabrían "]
    let verbos5hip = ["tendríamos ", "diríamos ", "iríamos ", "obtendríamos ", "haríamos ", "sabríamos "]

    // Futuro
    let verbo1f = ["tendré", "diré", "iré", "obtendré", "haré", "sabré"]
    let verbo2f = ["tendrás", "dirás", "irás", "obtendrás", "harás", "sabrás"]
    let verbo3f = ["tendrá", "dirá", "irá", "obtendrá", "hará", "sabrá"]
    let verbos4f = ["tendrán", "dirán", "irán", "obtendrán", "harán", "sabrán"]
    let verbos5f = ["tendremos", "diremos", "iremos", "obtendremos", "haremos", "sabremos"]

    // Modales
    let modal = ["would ", "will ", "can ", "can ", "can ", "can ", "can ", "can ", "can "]
    let modales = [" ", " ", "puedo ", "puedes ", "puede ", "puede ", "puede ", "pueden ", "podemos "]

    // Adverbios
    let adv = ["what ", "as ", "or ", "but ", "and "]
    let adver = ["lo que ", "como ", "o ", "pero ", "y "]

    // Sustantivos placeholder
    let sofe = ["people", "history", "way", "information"]
    let sofs = ["gente", "historia", "manera", "información"]
    let pofs = ["mujeres", "casas", "maneras", "cosas"]
    let pofe = ["women", "houses", "ways", "things"]

    let placesAt = [
        "the park", "the school", "the office", "the airport", "the station", "the mall",
        "the museum", "the library", "the gym", "the beach", "the restaurant", "the hotel",
        "the university", "the hospital", "the theater", "the cafe", "the zoo", "the pool",
        "the club", "the bar"
    ]
    let lugaresEn = [
        "el parque", "la escuela", "la oficina", "el aeropuerto", "la estación", "el centro comercial",
        "el museo", "la biblioteca", "el gimnasio", "la playa", "el restaurante", "el hotel",
        "la universidad", "el hospital", "el teatro", "la cafetería", "el zoológico", "la piscina",
        "el club", "el bar"
    ]

    let soms = ["tiempo", "año", "niño"]
    let some = ["time", "year", "boy"]
    let poms = ["hombres", "perros", "objetos", "libros"]
    let pome = ["men", "dogs", "objects", "books"]

    let noun = [
        "car", "money", "friend", "object", "phone", "time", "house", "book", "food", "music",
        "game", "city", "nature", "job", "family", "street", "tree", "dream", "poem", "color",
        "song", "dance", "memory", "thought", "feeling", "letter", "picture", "journey",
        "experience", "secret", "air", "water", "sun", "moon", "star", "cloud", "wind", "rain",
        "snow", "fire", "earth", "sky", "sea", "forest", "desert", "animal", "bird", "fish",
        "insect", "flower", "fruit", "vegetable", "tool", "machine", "building", "bridge",
        "mountain", "river", "ocean", "history", "language", "culture", "art", "science",
        "technology", "society", "politics", "religion", "philosophy", "psychology",
        "sociology", "economy"
    ]
    let sust = [
        "carro", "dinero", "amigo", "objeto", "teléfono", "tiempo", "casa", "libro", "comida",
        "música", "juego", "ciudad", "naturaleza", "trabajo", "familia", "calle", "árbol", "sueño",
        "poema", "color", "canción", "baile", "recuerdo", "pensamiento", "sentimiento", "carta",
        "foto", "viaje", "experiencia", "secreto", "aire", "agua", "sol", "luna", "estrella", "nube",
        "viento", "lluvia", "nieve", "fuego", "tierra", "cielo", "mar", "bosque", "desierto",
        "animal", "ave", "pez", "insecto", "flor", "fruta", "vegetal", "herramienta", "máquina",
        "edificio", "puente", "montaña", "río", "océano", "historia", "idioma", "cultura", "arte",
        "ciencia", "tecnología", "sociedad", "política", "religión", "filosofía", "psicología",
        "sociología", "economía"
    ]
    let sustTagged = [
        "carroM", "dineroM", "amigoM", "objetoM", "teléfonoM", "tiempoM", "casaF", "libroM",
        "comidaF", "músicaF", "juegoM", "ciudadF", "naturalezaF", "trabajoM", "familiaF", "calleF",
        "árbolM", "sueñoM", "poemaM", "colorM", "canciónF", "baileM", "recuerdoM", "pensamientoM",
        "sentimientoM", "cartaF", "fotoF", "viajeM", "experienciaF", "secretoM", "aireM", "aguaF",
        "solM", "lunaF", "estrellaF", "nubeF", "vientoM", "lluviaF", "nieveF", "fuegoM", "tierraF",
        "cieloM", "marM", "bosqueM", "desiertoM", "animalM", "aveF", "pezM", "insectoM", "florF",
        "frutaF", "vegetalM", "herramientaF", "máquinaF", "edificioM", "puenteM", "montañaF",
        "ríoM", "océanoM", "historiaF", "idiomaM", "culturaF", "arteM", "cienciaF", "tecnologíaF",
        "sociedadF", "políticaF", "religiónF", "filosofíaF", "psicologíaF", "sociologíaF", "economíaF"
    ]

    let nounP = [
        "cars", "money", "friends", "objects", "phones", "times", "houses", "books", "foods",
        "musics", "games", "cities", "nature", "jobs", "families", "streets", "trees", "dreams",
        "poems", "colors", "songs", "dances", "memories", "thoughts", "feelings", "letters",
        "pictures", "journeys", "experiences", "secrets", "airs", "waters", "suns", "moons",
        "stars", "clouds", "winds", "rains", "snows", "fires", "earths", "skies", "seas", "forests",
        "deserts", "animals", "birds", "fishes", "insects", "flowers", "fruits", "vegetables",
        "tools", "machines", "buildings", "bridges", "mountains", "rivers", "oceans", "histories",
        "languages", "cultures", "arts", "sciences", "technologies", "societies", "politics",
        "religions", "philosophies", "psychologies", "sociologies", "economies"
    ]
    let sustP = [
        "carros", "dinero", "amigos", "objetos", "teléfonos", "tiempos", "casas", "libros",
        "comidas", "músicas", "juegos", "ciudades", "naturalezas", "trabajos", "familias", "calles",
        "árboles", "sueños", "poemas", "colores", "canciones", "bailes", "recuerdos", "pensamientos",
        "sentimientos", "cartas", "fotos", "viajes", "experiencias", "secretos", "aires", "aguas",
        "soles", "lunas", "estrellas", "nubes", "vientos", "lluvias", "nieves", "fuegos", "tierras",
        "cielos", "mares", "bosques", "desiertos", "animales", "aves", "peces", "insectos", "flores",
        "frutas", "vegetales", "herramientas", "máquinas", "edificios", "puentes", "montañas",
        "ríos", "océanos", "historias", "idiomas", "culturas", "artes", "ciencias", "tecnologías",
        "sociedades", "políticas", "religiones", "filosofías", "psicologías", "sociologías", "economías"
    ]

    let uncountableNouns = [
        "information", "advice", "furniture", "weather", "luck", "happiness", "time", "laughter",
        "traffic", "homework"
    ]
    let sustantivosIncontables = [
        "información", "consejo", "mobiliario", "clima", "suerte", "felicidad", "tiempo", "risa",
        "tráfico", "tarea"
    ]
    let sustantivosIncontablesTagged = [
        "informaciónF", "consejoM", "mobiliarioM", "climaM", "suerteF", "felicidadF", "tiempoM",
        "risaF", "tráficoM", "tareaF"
    ]

    // Verbos "be"
    let be = ["am", "are", "is", "is", "is", "are", "are"]
    let ser = ["soy", "eres", "es", "es", "son", "somos"]
    let est = ["estoy", "estas", "está", "está", "está", "están", "estamos"]

    let wordsAfterAs = [
        "as soon", "as much", "as well", "as long", "as though", "as if", "as many", "as part",
        "as possible", "as follows", "as a teacher", "as a child", "as a student", "as a parent",
        "as a doctor", "as a leader", "as a friend", "as a professional", "as a scientist", "as an artist",
        "as an engineer"
    ]
    let wordsAfterAssp = [
        "tan pronto", "tanto", "tan bien", "tan largo", "como si", "como si", "tantos", "como parte",
        "como posible", "como sigue", "como maestro", "de niño", "como estudiante", "como padre",
        "como doctor", "como lider", "como amigo", "como profesional", "como cientifico", "como artista",
        "como ingeniero"
    ]

    func randomAs() -> (String, String) {
        let a = Int.random(in: 0..<wordsAfterAs.count)
        return (wordsAfterAssp[a], wordsAfterAs[a])
    }

    let negatedAuxiliaries = [
        "isn't", "aren't", "wasn't", "weren't", "haven't", "hasn't", "hadn't", "won't", "wouldn't",
        "don't", "doesn't", "didn't", "can't", "couldn't", "shouldn't", "mightn't", "mustn't",
        "shan't", "oughtn't"
    ]
    let auxiliariesWithNot = [
        "is not", "are not", "was not", "were not", "have not", "has not", "had not", "will not",
        "would not", "do not", "does not", "did not", "cannot", "could not", "should not", "might not",
        "must not", "shall not", "ought not"
    ]
    let nounsAfterAll = [
        "all the people", "all the time", "all the things", "all the children", "all the students",
        "all the days", "all the efforts", "all the work", "all the men", "all the women",
        "all the options", "all the resources", "all the questions", "all the answers",
        "all the possibilities", "all the countries", "all the cities", "all the friends",
        "all the relatives", "all the details"
    ]
    let nounsAfterAllSpanish = [
        "todas las personas", "todo el tiempo", "todas las cosas", "todos los niños", "todos los estudiantes",
        "todos los días", "todos los esfuerzos", "todo el trabajo", "todos los hombres", "todas las mujeres",
        "todas las opciones", "todos los recursos", "todas las preguntas", "todas las respuestas",
        "todas las posibilidades", "todos los países", "todas las ciudades", "todos los amigos",
        "todos los familiares", "todos los detalles"
    ]
    let passiveParticiples = [
        "arrested", "suspended", "elected", "appointed", "hired", "fired", "promoted", "demoted",
        "injured", "praised", "rewarded", "punished", "criticized", "loved", "hated", "feared",
        "respected", "admired", "envied", "trusted", "seen", "heard", "found", "discovered",
        "detected", "noticed", "observed", "made", "built", "written", "cooked", "designed",
        "destroyed", "damaged", "broken"
    ]
    let participlesPasivos = [
        "arrestado", "suspendido", "electo", "nombrado", "contratado", "despedido", "ascendido",
        "degradado", "herido", "elogiado", "recompensado", "castigado", "criticado", "amado",
        "odiado", "temido", "respetado", "admirado", "envidiado", "confiado", "visto", "oído",
        "encontrado", "descubierto", "detectado", "notado", "observado", "hecho", "construido",
        "escrito", "cocinado", "diseñado", "destruido", "dañado", "roto"
    ]

    let participlesPasivosMasculinosPlurales = [
        "arrestados", "suspendidos", "elegidos", "nombrados", "contratados", "despedidos",
        "ascendidos", "degradados", "heridos", "elogiados", "recompensados", "castigados",
        "criticados", "amados", "odiados", "temidos", "respetados", "admirados", "envidiados",
        "confiados", "vistos", "oídos", "encontrados", "descubiertos", "detectados", "notados",
        "observados", "hechos", "construidos", "escritos", "cocinados", "diseñados", "destruidos",
        "dañados", "rotos"
    ]
    let participlesPasivosFemeninos = [
        "arrestada", "suspendida", "elegida", "nombrada", "contratada", "despedida", "ascendida",
        "degradada", "herida", "elogiada", "recompensada", "castigada", "criticada", "amada",
        "odiada", "temida", "respetada", "admirada", "envidiada", "confiada", "vista", "oída",
        "encontrada", "descubierta", "detectada", "notada", "observada", "hecha", "construida",
        "escrita", "cocinada", "diseñada", "destruida", "dañada", "rota"
    ]

    let make = ["I make", "you make", "he makes", "she makes", "we make", "they make"]
    let hacer = ["yo hago", "tú haces", "él hace", "ella hace", "nosotros hacemos", "ellos hacen"]

}

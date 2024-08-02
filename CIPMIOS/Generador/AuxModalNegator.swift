//
//  AuxModalNegator.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 29/7/24.
//

import Foundation

class AuxModalNegator{
    
    private let AUXILIARY_VERBS = [
        "am", "is", "are", "was", "were", "being", "been",
        "have", "has", "had",
        "do", "does", "did",
        "can", "could",
        "will", "would",
        "shall", "should",
        "may", "might",
        "must",
        "ought"
    ]
    
    private let wordsToNegate = ["yo", "tú", "él", "ella", "eso", "nosotros", "ellos"]
    
    func negateSentenceSpanishComp(sentence: String) -> String {
        let parts = sentence.components(separatedBy: " ")
        var result = ""
        var quizáFound = parts.count > 1 && (parts[1].localizedCaseInsensitiveCompare("quizá") == .orderedSame || parts[1].localizedCaseInsensitiveCompare("quizás") == .orderedSame)
        var suponeQueFound = false
        var pronounNegated = false
        
        for (index, var part) in parts.enumerated() {
            if index < parts.count - 2 && part.localizedCaseInsensitiveCompare("se") == .orderedSame && parts[index + 1].localizedCaseInsensitiveCompare("supone") == .orderedSame && parts[index + 2].localizedCaseInsensitiveCompare("que") == .orderedSame {
                suponeQueFound = true
                result += "\(part) "
                continue
            }
            
            if quizáFound && (part.localizedCaseInsensitiveCompare("quizá") == .orderedSame || part.localizedCaseInsensitiveCompare("quizás") == .orderedSame) {
                part += " no"
                quizáFound = false
            } else if !quizáFound && !suponeQueFound && !pronounNegated {
                for wordToNegate in wordsToNegate {
                    if part.localizedCaseInsensitiveCompare(wordToNegate) == .orderedSame {
                        part += " no"
                        pronounNegated = true
                        break
                    }
                }
            } else if suponeQueFound && part.localizedCaseInsensitiveCompare("que") == .orderedSame {
                part += " no"
                suponeQueFound = false
            }
            result += "\(part) "
        }
        return result.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func negateSentenceSpanish(sentence: String) -> String {
        let parts = sentence.components(separatedBy: " ")
        var result = ""
        var quizáFound = parts.count > 1 && (parts[1].localizedCaseInsensitiveCompare("quizá") == .orderedSame || parts[1].localizedCaseInsensitiveCompare("quizás") == .orderedSame)
        var suponeQueFound = false
        
        for (index, var part) in parts.enumerated() {
            if index < parts.count - 2 && part.localizedCaseInsensitiveCompare("se") == .orderedSame && parts[index + 1].localizedCaseInsensitiveCompare("supone") == .orderedSame && parts[index + 2].localizedCaseInsensitiveCompare("que") == .orderedSame {
                suponeQueFound = true
                result += "\(part) "
                continue
            }
            
            if quizáFound && (part.localizedCaseInsensitiveCompare("quizá") == .orderedSame || part.localizedCaseInsensitiveCompare("quizás") == .orderedSame) {
                part += " no"
                quizáFound = false
            } else if !quizáFound && !suponeQueFound {
                for wordToNegate in wordsToNegate {
                    if part.localizedCaseInsensitiveCompare(wordToNegate) == .orderedSame {
                        part += " no"
                        break
                    }
                }
            } else if suponeQueFound && part.localizedCaseInsensitiveCompare("que") == .orderedSame {
                part += " no"
                suponeQueFound = false
            }
            result += "\(part) "
        }
        return result.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func negateSentenceSpanishOG(sentence: String) -> String {
        let parts = sentence.components(separatedBy: " ")
        var result = ""
        var quizáFound = parts.count > 1 && (parts[1].localizedCaseInsensitiveCompare("quizá") == .orderedSame || parts[1].localizedCaseInsensitiveCompare("quizás") == .orderedSame)
        
        for (index, var part) in parts.enumerated() {
            if quizáFound && (part.localizedCaseInsensitiveCompare("quizá") == .orderedSame || part.localizedCaseInsensitiveCompare("quizás") == .orderedSame) {
                part += " no"
                quizáFound = false
            } else if !quizáFound {
                for wordToNegate in wordsToNegate {
                    if part.localizedCaseInsensitiveCompare(wordToNegate) == .orderedSame {
                        part += " no"
                        break
                    }
                }
            }
            result += "\(part) "
        }
        return result.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func negateFirstAuxOrModalContracted(input: String) -> String {
        var words = input.components(separatedBy: " ")
        for i in 0..<words.count {
            if isAuxOrModal(word: words[i]) {
                switch words[i] {
                case "will":
                    words[i] = "won't"
                case "shall":
                    words[i] = "shan't"
                case "am":
                    words[i] = "ain't"
                case "can":
                    words[i] = "can't"
                default:
                    words[i] += "n't"
                }
                break
            }
        }
        return words.joined(separator: " ")
    }
    
    func negatePresentSimpleContracted(input: String) -> String {
        var words = input.components(separatedBy: " ")
        guard words.count >= 2 else { return input }
        
        let subject = words[0].lowercased()
        var verb = words[1]
        var negation = ""
        
        let isThirdPersonSingular = subject == "he" || subject == "she" || subject == "it"
        negation = isThirdPersonSingular ? "doesn't" : "don't"
        
        if isThirdPersonSingular && verb.hasSuffix("s") && verb.lowercased() != "has" {
            verb.removeLast()
        }
        
        words[1] = "\(negation) \(verb)"
        return words.joined(separator: " ")
    }
    
    func negateFirstAuxOrModal(input: String) -> String {
        var words = input.components(separatedBy: " ")
        var negated = false
        
        for i in 0..<words.count {
            if isAuxOrModal(word: words[i]) && !negated {
                switch words[i] {
                case "will":
                    words[i] = "will not"
                case "shall":
                    words[i] = "shall not"
                case "am":
                    words[i] = "am not"
                case "can":
                    words[i] = "cannot"
                default:
                    words[i] += " not"
                }
                negated = true
            }
            if negated { break }
        }
        
        return words.joined(separator: " ")
    }
    
    func negatePresentSimple(input: String) -> String {
        var words = input.components(separatedBy: " ")
        guard words.count >= 2 else { return input }
        
        let subject = words[0].lowercased()
        var verb = words[1]
        let negation = (subject == "he" || subject == "she" || subject == "it") ? "does not" : "do not"
        
        if subject == "he" || subject == "she" || subject == "it" {
            if verb.hasSuffix("s") {
                verb.removeLast()
            }
        }
        
        words[1] = "\(negation) \(verb)"
        return words.joined(separator: " ")
    }
    
    func negatePastSimple(sentence: String) -> String {
        guard !sentence.isEmpty else { return "negate Past Simple Null" }
        let words = sentence.components(separatedBy: " ")
        guard words.count >= 2 else { return "Invalid sentence" }
        
        let pronoun = words[0]
        let verb = words[1]
        let restOfSentence = words.dropFirst(2).joined(separator: " ")
        
        return "\(pronoun) didn't \(verb)\(restOfSentence.isEmpty ? "" : " \(restOfSentence)")"
    }
    
    private func isAuxOrModal(word: String) -> Bool {
        return AUXILIARY_VERBS.contains { $0.caseInsensitiveCompare(word) == .orderedSame }
    }
    
    func negatePastSimple(sentence: String?) -> String {
        guard let sentence = sentence, !sentence.isEmpty else {
            return "negate Past Simple Null"
        }
        let words = sentence.components(separatedBy: " ")
        guard words.count >= 2 else {
            return "Invalid sentence"
        }
        let restOfSentence = words.dropFirst(2).joined(separator: " ")
        return "\(words[0]) didn't \(words[1])\(restOfSentence.isEmpty ? "" : " \(restOfSentence)")"
    }
    
    func negatePastSimpleWish(sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        guard words.count > 3 else {
            return "Invalid sentence"
        }
        return "\(words[2]) didn't \(words[3])"
    }
    
    func contractWill(sentence: String) -> String {
        let patternsAndReplacements = [
            ("(?i)\\bI will\\b", "I'll"),
            ("(?i)\\byou will\\b", "you'll"),
            ("(?i)\\bhe will\\b", "he'll"),
            ("(?i)\\bshe will\\b", "she'll"),
            ("(?i)\\bwe will\\b", "we'll"),
            ("(?i)\\bthey will\\b", "they'll")
        ]
        var newSentence = sentence
        for (pattern, replacement) in patternsAndReplacements {
            newSentence = newSentence.replacingOccurrences(of: pattern, with: replacement, options: [.regularExpression, .caseInsensitive], range: nil)
            if newSentence != sentence {
                break
            }
        }
        return newSentence
    }
    
    func negateWishPastSimple(sentence: String) -> String {
        let parts = sentence.components(separatedBy: " ")
        guard let wishIndex = parts.firstIndex(of: "wish"), wishIndex + 2 < parts.count else {
            return "Invalid sentence"
        }
        var newSentence = parts[0...wishIndex].joined(separator: " ") + " "
        newSentence += "\(parts[wishIndex + 1]) didn't " + parts.dropFirst(wishIndex + 2).joined(separator: " ")
        return newSentence.trimmingCharacters(in: .whitespaces)
    }
    
    func negatePresentSimpleCausativeHave(input: String) -> String {
        var words = input.components(separatedBy: " ")
        guard words.count >= 2 else { return input }
        
        let subject = words[0].lowercased()
        var verb = words[1]
        let negation: String
        
        let isThirdPersonSingular = subject == "he" || subject == "she" || subject == "it"
        negation = isThirdPersonSingular ? "does not" : "do not"
        
        if isThirdPersonSingular && verb.lowercased() == "has" {
            verb = "have"
        } else if isThirdPersonSingular && verb.hasSuffix("s") {
            verb.removeLast()
        }
        
        words[1] = "\(negation) \(verb)"
        return words.joined(separator: " ")
    }
    
    func contractPresentContinuousPresent(sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        guard words.count >= 3 else { return sentence }
        
        var subject = words[0]
        let auxiliary = words[1]
        let remainingSentence = words.dropFirst(2).joined(separator: " ")
        
        switch auxiliary {
        case "am":
            subject += "'m"
        case "are":
            subject += "'re"
        case "is":
            subject += "'s"
        default:
            return sentence
        }
        
        return subject + " " + remainingSentence
    }
    
    func contractPresentPerfect(sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        guard words.count >= 3 else { return sentence }
        
        var subject = words[0]
        let auxiliary = words[1]
        let remainingSentence = words.dropFirst(2).joined(separator: " ")
        
        switch auxiliary {
        case "have":
            subject += "'ve"
        case "has":
            subject += "'s"
        default:
            return sentence
        }
        
        return subject + " " + remainingSentence
    }
    
    func contractPresentPerfectIncludingNot(sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        guard words.count >= 3 else { return sentence }
        
        var subject = words[0]
        let auxiliary = words[1]
        let isNegative = words.count > 3 && words[2] == "not"
        let remainingSentence: String
        
        if isNegative {
            remainingSentence = words.dropFirst(3).joined(separator: " ")
            switch auxiliary {
            case "have":
                subject += "'ve not"
            case "has":
                subject += "'s not"
            default:
                return sentence
            }
        } else {
            remainingSentence = words.dropFirst(2).joined(separator: " ")
            switch auxiliary {
            case "have":
                subject += "'ve"
            case "has":
                subject += "'s"
            default:
                return sentence
            }
        }
        
        return subject + " " + remainingSentence
    }
    
    func negateAndContractPresentContinuous(sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        guard words.count >= 3 else { return sentence }
        
        var subject = words[0]
        let auxiliary = words[1]
        let isNegated = words.count > 2 && words[2] == "not"
        let verbIndex = isNegated ? 3 : 2
        
        if words.count <= verbIndex { return sentence }
        let verb = words[verbIndex]
        let remainingSentence = words.dropFirst(verbIndex + 1).joined(separator: " ")
        
        switch auxiliary {
        case "am":
            subject += "'m"
        case "are":
            subject += "'re"
        case "is":
            subject += "'s"
        default:
            return sentence
        }
        
        let negation = isNegated ? " not" : ""
        return subject + negation + " " + verb + (remainingSentence.isEmpty ? "" : " \(remainingSentence)")
    }
    
}

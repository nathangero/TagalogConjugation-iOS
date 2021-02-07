//
//  an.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

class an {
    
    static let shared = an()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        let firstLetter = word.prefix(Letters.shared.firstLetter).description
        let allButFirstLetter = word.suffix(word.count - 1).description
        let secondLetter = allButFirstLetter.prefix(Letters.shared.firstLetter).description // Get the second letter from the word
        
        let verbs = [
            VerbTenses.command : word + "an",
            VerbTenses.past : firstLetter + "in" + allButFirstLetter + "an",
            VerbTenses.present : firstLetter + "in" + secondLetter + word + "an",
            VerbTenses.future : firstSyllable + word + "an"
        ]
        
        return verbs
    }
    
    func conjugateVowel(word: String) -> [VerbTenses : String] {
        let firstSyllable = word.prefix(Letters.shared.vowelSyllable).description
        
        let verbs = [
            VerbTenses.command : word + "an",
            VerbTenses.past : "in" + word + "an",
            VerbTenses.present : "in" + firstSyllable + word + "an",
            VerbTenses.future : firstSyllable + word + "an"
        ]
        
        return verbs
    }
    
    func conjugateL(word: String) -> [VerbTenses : String] {
        let allButLastVowel = Letters.shared.removeLastVowelForAn(word: word.lowercased())
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : allButLastVowel + "an",
            VerbTenses.past : "ni" + allButLastVowel + "an",
            VerbTenses.present : "ni" + firstSyllable + allButLastVowel + "an",
            VerbTenses.future : firstSyllable + allButLastVowel + "an"
        ]
        
        return verbs
    }
    
    func conjugateNonGlottal(word: String) -> [VerbTenses : String] {
        let allButLastVowelWordCount = word.count - 1
        let allButLastVowel = word.prefix(allButLastVowelWordCount).description
        let allButFirstLetterAndLastLetter = allButLastVowel.suffix(allButLastVowel.count - 1).description
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        let firstLetter = word[0]
        let secondLetter = word[1]
        
        let verbs = [
            VerbTenses.command : allButLastVowel + "han",
            VerbTenses.past : firstLetter + "in" + allButFirstLetterAndLastLetter + "han",
            VerbTenses.present : firstLetter + "in" + secondLetter + allButLastVowel + "han",
            VerbTenses.future : firstSyllable + allButLastVowel + "han"
        ]
        
        return verbs
    }
    
    func conjugateRemoveLastVowel(word: String) -> [VerbTenses : String] {
        let allButLastVowel = Letters.shared.removeLastVowelForAn(word: word.lowercased())
        let allButFirstLetterAndLastLetter = allButLastVowel.suffix(allButLastVowel.count - 1).description
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        let firstLetter = word[0]
        let secondLetter = word[1]
        
        let verbs = [
            VerbTenses.command : allButLastVowel + "an",
            VerbTenses.past : firstLetter + "in" + allButFirstLetterAndLastLetter + "an",
            VerbTenses.present : firstLetter + "in" + secondLetter + allButLastVowel + "an",
            VerbTenses.future : firstSyllable + allButLastVowel + "an"
        ]
        
        return verbs
    }
    
    func showConjugationPattern() -> [VerbTenses : String] {
        let word = "root"
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        let firstLetter = word.prefix(Letters.shared.firstLetter).description
        let allButFirstLetter = word.suffix(word.count - 1).description
        let secondLetter = allButFirstLetter.prefix(Letters.shared.firstLetter).description // Get the second letter from the word
        
        let verbs = [
            VerbTenses.command : "\(word) + \"an\"",
            VerbTenses.past : "\(firstLetter) + \"in\" + \(allButFirstLetter) + \"an\"",
            VerbTenses.present : "\(firstLetter) + \"in\" + \(secondLetter) + \(word) + \"an\"",
            VerbTenses.future : "\(firstSyllable) + \(word) + \"an\""
        ]
        
        return verbs
    }
}

//
//  i.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

class i {
    
    static let shared = i()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        // Get the first letter of the word
        let firstLetter = word.prefix(Letters.shared.firstLetter).description
        let allButFirstLetter = word.suffix(word.count - 1).description
        let secondLetter = allButFirstLetter.prefix(Letters.shared.firstLetter).description // Get the second letter from the word
        
        let verbs = [
            VerbTenses.command : "i" + word,
            VerbTenses.past : "i" + firstLetter + "in" + allButFirstLetter,
            VerbTenses.present : "i" + firstLetter + "in" + secondLetter + word,
            VerbTenses.future : "i" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func conjugateVowel(word: String) -> [VerbTenses : String] {
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.vowelSyllable).description
        
        let verbs = [
            VerbTenses.command : "i" + word,
            VerbTenses.past : "i" + "ni" + word,
            VerbTenses.present : "i" + "ni" + firstSyllable + word,
            VerbTenses.future : "i" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func conjugateL(word: String) -> [VerbTenses : String] {
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "i" + word,
            VerbTenses.past : "i" + "ni" + word,
            VerbTenses.present : "i" + "ni" + firstSyllable + word,
            VerbTenses.future : "i" + firstSyllable + word
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
            VerbTenses.command : "\"i\" + \(word)",
            VerbTenses.past : "\"i\" + \(firstLetter) + \"in\" + \(allButFirstLetter)",
            VerbTenses.present : "\"i\" + \(firstLetter) + \"in\" + \(secondLetter) + \(word)",
            VerbTenses.future : "\"i\" + \(firstSyllable) + \(word)"
        ]
        
        return verbs
    }
}

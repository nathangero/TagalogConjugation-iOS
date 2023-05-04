//
//  mag.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

class mag {
    
    static let shared = mag()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "mag" + word,
            VerbTenses.past : "nag" + word,
            VerbTenses.present : "nag" + firstSyllable + word,
            VerbTenses.future : "mag" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func conjugateVowel(word: String) -> [VerbTenses : String] {
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.vowelSyllable).description
        
        let verbs = [
            VerbTenses.command : "mag-" + word,
            VerbTenses.past : "nag-" + word,
            VerbTenses.present : "nag-" + firstSyllable + word,
            VerbTenses.future : "mag-" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func showConjugationPattern() -> [VerbTenses : String] {
        let word = "root"
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "\"mag\" + \(word)",
            VerbTenses.past : "\"nag\" + \(word)",
            VerbTenses.present : "\"nag\" + \(firstSyllable) + \(word)",
            VerbTenses.future : "\"mag\" + \(firstSyllable) + \(word)"
        ]
        
        return verbs
    }
}

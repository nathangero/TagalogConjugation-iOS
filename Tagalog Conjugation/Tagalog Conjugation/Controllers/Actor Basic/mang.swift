//
//  mang.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

class mang {
    
    static let shared = mang()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "mang" + word,
            VerbTenses.past : "nang" + word,
            VerbTenses.present : "nang" + firstSyllable + word,
            VerbTenses.future : "mang" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func conjugateVowel(word: String) -> [VerbTenses : String] {
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.vowelSyllable).description
        
        let verbs = [
            VerbTenses.command : "mang" + word,
            VerbTenses.past : "nang" + word,
            VerbTenses.present : "nang" + firstSyllable + word,
            VerbTenses.future : "mang" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func showConjugationPattern() -> [VerbTenses : String] {
        let word = "root"
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "\"mang\" + \(word)",
            VerbTenses.past : "\"nang\" + \(word)",
            VerbTenses.present : "\"nang\" + \(firstSyllable) + \(word)",
            VerbTenses.future : "\"mang\" + \(firstSyllable) + \(word)"
        ]
        
        return verbs
    }
}

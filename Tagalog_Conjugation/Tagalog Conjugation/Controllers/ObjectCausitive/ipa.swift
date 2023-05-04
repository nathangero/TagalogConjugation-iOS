//
//  ipa.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 2/6/21.
//

import Foundation

class ipa {
    
    static let shared = ipa()
        
    // MARK: - Functions
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "ipa" + word,
            VerbTenses.past : "ipina" + word,
            VerbTenses.present : "ipina" + firstSyllable + word,
            VerbTenses.future : "ipa" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func showConjugationPattern() -> [VerbTenses : String] {
        let word = "root"
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "\"ipa\" + \(word)",
            VerbTenses.past : "\"ipina\" + \(word)",
            VerbTenses.present : "\"ipina\" + \(firstSyllable) + \(word)",
            VerbTenses.future : "\"ipa\" + \(firstSyllable) + \(word)"
        ]
        
        return verbs
    }
}

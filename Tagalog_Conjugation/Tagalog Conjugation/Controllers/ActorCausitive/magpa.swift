//
//  magpa.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 2/2/21.
//

import Foundation

class magpa {
    
    static let shared = magpa()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "magpa" + word,
            VerbTenses.past : "nagpa" + word,
            VerbTenses.present : "nagpa" + firstSyllable + word,
            VerbTenses.future : "magpa" + firstSyllable + word
        ]
        
        return verbs
    }
    
    func showConjugationPattern() -> [VerbTenses : String] {
        let word = "root"
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : "\"magpa\" + \(word)",
            VerbTenses.past : "\"nagpa\" + \(word)",
            VerbTenses.present : "\"nagpa\" + \(firstSyllable) + \(word)",
            VerbTenses.future : "\"magpa\" + \(firstSyllable) + \(word)"
        ]
        
        return verbs
    }
}

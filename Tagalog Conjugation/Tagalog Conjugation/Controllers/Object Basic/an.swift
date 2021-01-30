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
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        /// - todo: what about words like bigay and lagay
        
        let verbs = [
            VerbTenses.command : word + "an",
            VerbTenses.past : "ni" + word + "an",
            VerbTenses.present : "ni" + firstSyllable + word + "an",
            VerbTenses.future : firstSyllable + word + "an"
        ]
        
        return verbs
    }
    
    func conjugateVowel(word: String) -> [VerbTenses : String] {
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.vowelSyllable).description
        
        let verbs = [
            VerbTenses.command : "um" + word,
            VerbTenses.past : "um" + word,
            VerbTenses.present : "um" + firstSyllable + word,
            VerbTenses.future : firstSyllable + word
        ]
        
        return verbs
    }
    
    func conjugateL(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : word + "an",
            VerbTenses.past : "ni" + word + "an",
            VerbTenses.present : "ni" + firstSyllable + word + "an",
            VerbTenses.future : firstSyllable + word + "an"
        ]
        
        return verbs
    }
    
    func showConjugationPattern() -> [VerbTenses : String] {
        return self.conjugate(word: "root")
    }
}

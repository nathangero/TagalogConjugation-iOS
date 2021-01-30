//
//  in.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

// Capitalized to avoid a keyword
class In {
    
    static let shared = In()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        // Get the first letter of the word
        let firstLetter = word.prefix(Letters.shared.firstLetter).description
        
        // Get all but the first letter of the word
        let allButFirstLetter = word.suffix(word.count - 1).description
        
        // Get the secocnd letter of the word
        let secondLetter = allButFirstLetter.prefix(Letters.shared.firstLetter).description // Get the second letter from the word
        
        let verbs = [
            VerbTenses.command : word + "in",
            VerbTenses.past : firstLetter + "in" + allButFirstLetter,
            VerbTenses.present : firstLetter + "in" + secondLetter + word,
            VerbTenses.future : firstSyllable + word + "in"
        ]
        
        return verbs
    }
    
    func conjugateVowel(word: String) -> [VerbTenses : String] {
        // Get the first letter/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.vowelSyllable).description
        
        let verbs = [
            VerbTenses.command : word + "in",
            VerbTenses.past : "in" + word,
            VerbTenses.present : "in" + firstSyllable + word,
            VerbTenses.future : firstSyllable + word + "in"
        ]
        
        return verbs
    }
    
    func conjugateL(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        let verbs = [
            VerbTenses.command : word + "in",
            VerbTenses.past : "ni" + word,
            VerbTenses.present : "ni" + firstSyllable + word,
            VerbTenses.future : firstSyllable + word + "in"
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
            VerbTenses.command : "\(word) + \"in\"",
            VerbTenses.past : "\(firstLetter) + \"in\" + \(allButFirstLetter)",
            VerbTenses.present : "\(firstLetter) + \"in\" + \(secondLetter) + \(word)",
            VerbTenses.future : "\(firstSyllable) + \(word) + \"in\""
        ]
        
        return verbs
    }
}

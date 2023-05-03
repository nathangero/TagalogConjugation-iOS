//
//  um.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

class um {
    
    static let shared = um()
        
    // MARK: - Functions
    func conjugate(word: String) -> [VerbTenses : String] {
        // Get the first two letters/first syllable of the word
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        
        // Get the first letter of the word
        let firstLetter = word.prefix(Letters.shared.firstLetter).description
        let allButFirstLetter = word.suffix(word.count - 1).description
        let secondLetter = allButFirstLetter.prefix(Letters.shared.firstLetter).description // Get the second letter from the word
        
        let verbs = [
            VerbTenses.command : firstLetter + "um" + allButFirstLetter,
            VerbTenses.past : firstLetter + "um" + allButFirstLetter,
            VerbTenses.present : firstLetter + "um" + secondLetter + word,
            VerbTenses.future : firstSyllable + word
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
    
    func showConjugationPattern() -> [VerbTenses : String] {
        let word = "root"
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description
        let firstLetter = word.prefix(Letters.shared.firstLetter).description
        let allButFirstLetter = word.suffix(word.count - 1).description
        let secondLetter = allButFirstLetter.prefix(Letters.shared.firstLetter).description // Get the second letter from the word
        
        let verbs = [
            VerbTenses.command : "\(firstLetter) + \"um\" + \(allButFirstLetter)",
            VerbTenses.past : "\(firstLetter) + \"um\" + \(allButFirstLetter)",
            VerbTenses.present : "\(firstLetter) + \"um\" + \(secondLetter) + \(word)",
            VerbTenses.future : "\(firstSyllable) + word"
        ]
        
        return verbs
    }
}

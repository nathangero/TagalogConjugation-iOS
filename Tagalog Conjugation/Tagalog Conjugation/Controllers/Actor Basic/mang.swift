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
    
    func conjugatePB(word: String) -> [VerbTenses : String] {
        let restOfWord = (word.count - 1)
        let allButFirstLetter = word.suffix(restOfWord).description // Do not get the first letter of the word
        let secondLetter = word[1]
        
        let verbs = [
            VerbTenses.command : "mam" + allButFirstLetter,
            VerbTenses.past : "nam" + allButFirstLetter,
            VerbTenses.present : "nam" + secondLetter + "m" + allButFirstLetter, // nam i m ili
            VerbTenses.future : "mam" + secondLetter + "m" + allButFirstLetter
        ]
        
        return verbs
    }
    
    func conjugateDLST(word: String) -> [VerbTenses : String] {
        let allButFirstLetter = word.suffix(word.count - 1).description
        let firstSyllable = word.prefix(Letters.shared.consonantSyllable).description // Get the first letter/first syllable of the word
        let secondLetter = word[1]
        var verbs = [VerbTenses:String]()
        
        // If the word starts with a l, keep it
        if Letters.shared.doesWordStartWithL(word: word) {
            verbs = [
                VerbTenses.command : "man" + word,
                VerbTenses.past : "nan" + word,
                VerbTenses.present : "nan" + firstSyllable + word,
                VerbTenses.future : "man" + firstSyllable + word
            ]
            
        } else if Letters.shared.doesWordStartWithD(word: word) { // If the word starts with a d, keep it
            verbs = [
                VerbTenses.command : "man" + word,
                VerbTenses.past : "nan" + word,
                VerbTenses.present : "nan" + firstSyllable + "r" + allButFirstLetter, // d -> r when between two vowels
                VerbTenses.future : "man" + firstSyllable + "r" + allButFirstLetter
            ]
            
        } else {
            verbs = [
                VerbTenses.command : "man" + allButFirstLetter,
                VerbTenses.past : "nan" + allButFirstLetter,
                VerbTenses.present : "nan" + secondLetter + "n" + allButFirstLetter,
                VerbTenses.future : "man" + secondLetter + "n" + allButFirstLetter
            ]
        }
        
        return verbs
    }
    
    func conjugateK(word: String) -> [VerbTenses : String] {
        let restOfWord = (word.count - 1)
        let allButFirstLetter = word.suffix(restOfWord).description // Do not get the first letter of the word
        let secondLetter = word[1]
        
        let verbs = [
            VerbTenses.command : "mang" + allButFirstLetter,
            VerbTenses.past : "nang" + allButFirstLetter,
            VerbTenses.present : "nang" + secondLetter + "ng" + allButFirstLetter,
            VerbTenses.future : "mang" + secondLetter + "ng" + allButFirstLetter
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

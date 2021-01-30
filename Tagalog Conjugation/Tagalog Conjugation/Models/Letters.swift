//
//  Letters.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import Foundation

class Letters {
    
    static var shared = Letters()
    
    let firstLetter = 1
    let consonantSyllable = 2
    let vowelSyllable = 1
    let vowels = ["a", "e", "i", "o", "u"]
    let removeLastVowelForAn = ["bigay", "lagay"]
    let replaceLastLetterWithHin = ["bili", "dala"]
    
    init() {}
    
    // MARK: - Functions

    func doesWordStartWithVowel(word: String) -> Bool {
        guard let firstLetter = word.first?.lowercased() else {
            return false
        }
        
        // Check if the letter is a vowel
        if self.vowels.contains(String(firstLetter)) {
            return true
        }
        return false
    }
    
    func doesWordStartWithL(word: String) -> Bool {
        guard let firstLetter = word.first?.lowercased() else {
            return false
        }
        
        // Check if the letter is a vowel
        if firstLetter == "l" {
            return true
        }
        return false
    }
    
    func doesWordStartWithK(word: String) -> Bool {
        guard let firstLetter = word.first?.lowercased() else {
            return false
        }
        
        // Check if the letter is a vowel
        if firstLetter == "k" {
            return true
        }
        return false
    }
}

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
    let removeLastVowelForAn = ["bigay", "lagay", "bukas"]
    let nonGlottalStops = ["bili", "pili", "sabi", "dala"]
    
    init() {}
    
    // MARK: - Functions

    func doesWordStartWithVowel(word: String) -> Bool {
        let firstLetter = word[0].lowercased() // Get the first letter
        
        // Check if the letter is a vowel
        if self.vowels.contains(String(firstLetter)) {
            return true
        }
        return false
    }
    
    func doesWordStartWithL(word: String) -> Bool {
        let firstLetter = word[0].lowercased() // Get the first letter
        
        // Check if the letter is a vowel
        if firstLetter == "l" {
            return true
        }
        return false
    }
    
    func doesWordStartWithD(word: String) -> Bool {
        let firstLetter = word[0].lowercased() // Get the first letter
        
        // Check if the letter is a vowel
        if firstLetter == "d" {
            return true
        }
        return false
    }
    
    func doesWordStartWithK(word: String) -> Bool {
        let firstLetter = word[0].lowercased() // Get the first letter
        
        // Check if the letter is a vowel
        if firstLetter == "k" {
            return true
        }
        return false
    }
    
    func doesWordStartWithPB(word: String) -> Bool {
        let firstLetter = word[0].lowercased() // Get the first letter
        
        // Check if the letter is a vowel
        if firstLetter == "p" {
            return true
        } else if firstLetter == "b" {
            return true
        }
        return false
    }
    
    func doesWordStartWithDLST(word: String) -> Bool {
        let firstLetter = word[0].lowercased() // Get the first letter
        
        // Check if the letter is a vowel
        if firstLetter == "d" {
            return true
        } else if firstLetter == "l" {
            return true
        } else if firstLetter == "s" {
            return true
        } else if firstLetter == "t" {
            return true
        }
        return false
    }
    
    func isWordNonGlottal(word: String) -> Bool {
        return self.nonGlottalStops.contains(word.lowercased())
    }
    
    func shouldRemoveLastVowel(word: String) -> Bool {
        return self.removeLastVowelForAn.contains(word.lowercased())
    }
    
    
    func removeLastVowelForAn(word: String) -> String {
//        print("word:", word)
        var reverse = String(word.reversed())
//        print("revsered word:", reverse)
        var vowelToRemove: Character = "a" // Default value since can't have an empty char variable
        
        for index in 0...reverse.count {
            if self.vowels.contains(reverse[index]) {
                vowelToRemove = Character(reverse[index])
                break
            }
        }
        
        if let indexToRemove = reverse.firstIndex(of: vowelToRemove) {
            reverse.remove(at: indexToRemove)
        }
        
//        print("post edit:", reverse)
        
        return String(reverse.reversed())
    }
    
}

// Allow operations like: myString[2] to get the character 'S'
extension String {
    subscript(i: Int) -> String {
        String(self[index(startIndex, offsetBy: i)])
    }
}

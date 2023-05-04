//
//  HomeScreenViewModel.swift
//  Tagalog Conjugation
//
//  Created by ng on 5/3/23.
//

import Foundation

extension HomeScreen {
    @MainActor final class ViewModel: ObservableObject {
        
        @Published var rootWord = ""
        @Published var conjugations: [VerbTenses : String] = [:]
        
        init() {
            
        }
        
        
        // MARK: - Conjugate Actor
        
        func conjugateMag() {
            if self.rootWord.isEmpty {
                self.conjugations = mag.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = mag.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else {
                self.conjugations = mag.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        func conjugateUm() {
            if self.rootWord.isEmpty {
                self.conjugations = um.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = um.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else {
                self.conjugations = um.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        func conjugateMa() {
            if self.rootWord.isEmpty {
                self.conjugations = ma.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = ma.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else {
                self.conjugations = ma.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        func conjugateMang() {
            if self.rootWord.isEmpty {
                self.conjugations = mang.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = mang.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else if Letters.shared.doesWordStartWithDLST(word: self.rootWord.lowercased()) {
                self.conjugations = mang.shared.conjugateDLST(word: self.rootWord.lowercased())
                
            } else if Letters.shared.doesWordStartWithPB(word: self.rootWord.lowercased()) {
                self.conjugations = mang.shared.conjugatePB(word: self.rootWord.lowercased())
                
            } else if Letters.shared.doesWordStartWithK(word: self.rootWord.lowercased()) {
                self.conjugations = mang.shared.conjugateK(word: self.rootWord.lowercased())
                
            } else {
                self.conjugations = mang.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        
        //  MARK: - Conjugate Object
        
        func conjugateI() {
            if self.rootWord.isEmpty {
                self.conjugations = i.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = i.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else if Letters.shared.doesWordStartWithL(word: self.rootWord) {
                self.conjugations = i.shared.conjugateL(word: self.rootWord.lowercased())
                
            } else {
                self.conjugations = i.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        func conjugateIn() {
            if self.rootWord.isEmpty {
                self.conjugations = In.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = In.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else if Letters.shared.isWordNonGlottal(word: self.rootWord.lowercased()) {
                self.conjugations = In.shared.conjugateNonGlottal(word: self.rootWord.lowercased())
                
            } else {
                self.conjugations = In.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        func conjugateAn() {
            if self.rootWord.isEmpty {
                self.conjugations = an.shared.showConjugationPattern()
                
            } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
                self.conjugations = an.shared.conjugateVowel(word: self.rootWord.lowercased())
                
            } else if Letters.shared.isWordNonGlottal(word: self.rootWord.lowercased()) {
                self.conjugations = an.shared.conjugateNonGlottal(word: self.rootWord.lowercased())
                
            } else if Letters.shared.shouldRemoveLastVowel(word: self.rootWord.lowercased()) {
                if Letters.shared.doesWordStartWithL(word: self.rootWord.lowercased()) {
                    self.conjugations = an.shared.conjugateL(word: self.rootWord.lowercased())
                    
                } else {
                    self.conjugations = an.shared.conjugateRemoveLastVowel(word: self.rootWord.lowercased())
                    
                }
                
            } else {
                self.conjugations = an.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        
        // MARK: - Conjugate Causitive
        
        func conjugateMagpa() {
            if self.rootWord.isEmpty {
                self.conjugations = magpa.shared.showConjugationPattern()
                
            } else {
                self.conjugations = magpa.shared.conjugate(word: self.rootWord.lowercased())
            }
        }
        
        func conjugateIpa() {
            if self.rootWord.isEmpty {
                self.conjugations = ipa.shared.showConjugationPattern()
                
            } else {
                self.conjugations = ipa.shared.conjugate(word: self.rootWord.lowercased())
            }
            
        }
    }
}

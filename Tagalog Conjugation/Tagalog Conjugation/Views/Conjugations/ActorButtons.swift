//
//  ActorButtons.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct ActorButtons: View {
    
    @Binding var rootWord: String
    @Binding var conjugations: [VerbTenses : String]
    
    // MARK: - Functions
    private func conjugateMag() {
        if self.rootWord.isEmpty {
            self.conjugations = mag.shared.showConjugationPattern()
        } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
            self.conjugations = mag.shared.conjugateVowel(word: self.rootWord.lowercased())
        } else {
            self.conjugations = mag.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    private func conjugateUm() {
        if self.rootWord.isEmpty {
            self.conjugations = um.shared.showConjugationPattern()
        } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
            self.conjugations = um.shared.conjugateVowel(word: self.rootWord.lowercased())
        } else {
            self.conjugations = um.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    private func conjugateMa() {
        if self.rootWord.isEmpty {
            self.conjugations = ma.shared.showConjugationPattern()
        } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
            self.conjugations = ma.shared.conjugateVowel(word: self.rootWord.lowercased())
        } else {
            self.conjugations = ma.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    private func conjugateMang() {
        if self.rootWord.isEmpty {
            self.conjugations = mang.shared.showConjugationPattern()
        } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
            self.conjugations = mang.shared.conjugateVowel(word: self.rootWord.lowercased())
        } else {
            self.conjugations = mang.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    // MARK: - UI
    var body: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Actor:")
                    .font(.headline)
                Spacer()
            }
            
            HStack (spacing: 5) {
                Button(action: self.conjugateMag) {
                    Text("mag-")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
                
                
                Button(action: self.conjugateUm) {
                    Text("-um-")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
                
                Button(action: self.conjugateMa) {
                    Text("ma-")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
                
                Button(action: self.conjugateMang) {
                    Text("mang-")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
            }
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
}

//struct ActorButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        ActorButtons()
//    }
//}

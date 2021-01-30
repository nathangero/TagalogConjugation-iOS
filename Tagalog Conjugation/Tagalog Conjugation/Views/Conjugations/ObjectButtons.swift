//
//  ObjectButtons.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct ObjectButtons: View {
    
    @Binding var rootWord: String
    @Binding var conjugations: [VerbTenses : String]
    
    
    // MARK: - Functions
    private func conjugateI() {
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
    
    private func conjugateIn() {
        if self.rootWord.isEmpty {
            self.conjugations = In.shared.showConjugationPattern()
        } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
            self.conjugations = In.shared.conjugateVowel(word: self.rootWord.lowercased())
        } else {
            self.conjugations = In.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    private func conjugateAn() {
        if self.rootWord.isEmpty {
            self.conjugations = an.shared.showConjugationPattern()
        } else if Letters.shared.doesWordStartWithVowel(word: self.rootWord) {
            self.conjugations = an.shared.conjugateVowel(word: self.rootWord.lowercased())
        } else {
            self.conjugations = an.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    // MARK: - UI
    var body: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Object:")
                    .font(.headline)
                Spacer()
            }
            
            HStack (spacing: 5) {
                Button(action: self.conjugateI) {
                    Text("i-")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
                
                
                Button(action: self.conjugateIn) {
                    Text("in-")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
                
                Button(action: self.conjugateAn) {
                    Text("-an")
                        .foregroundColor(.white)
                }
                .frame(minWidth: 90, minHeight: 50)
                .background(Colors.dodgerBlue())
                .cornerRadius(10)
            }
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
        
    }
}

//struct ObjectButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        ObjectButtons()
//    }
//}

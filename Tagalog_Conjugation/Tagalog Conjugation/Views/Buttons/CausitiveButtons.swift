//
//  CausitiveButtons.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct CausitiveButtons: View {
    
    @Binding var rootWord: String
    @Binding var conjugations: [VerbTenses : String]
    
    // MARK: - Functions
    
    private func conjugateMagpa() {
        if self.rootWord.isEmpty {
            self.conjugations = magpa.shared.showConjugationPattern()
            
        } else {
            self.conjugations = magpa.shared.conjugate(word: self.rootWord.lowercased())
        }
    }
    
    private func conjugateIpa() {
        if self.rootWord.isEmpty {
            self.conjugations = ipa.shared.showConjugationPattern()
            
        } else {
            self.conjugations = ipa.shared.conjugate(word: self.rootWord.lowercased())
        }
        
    }
    
    // MARK: - View Components
    
    var causitiveActorButtons: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Causitive Actor:")
                    .font(.headline)
                Spacer()
            }
            
            HStack (spacing: 5) {
                self.magpaButton
            }
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
    
    var magpaButton: some View {
        Button(action: self.conjugateMagpa) {
            Text("magpa-")
                .foregroundColor(.white)
        }
        .frame(minWidth: 90, minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    var causitiveObjectButtons: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Causitive Object:")
                    .font(.headline)
                Spacer()
            }
            
            HStack (spacing: 5) {
                self.ipaButton
            }
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
    
    var ipaButton: some View {
        Button(action: self.conjugateIpa) {
            Text("ipa-")
                .foregroundColor(.white)
        }
        .frame(minWidth: 90, minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    // MARK: - UI
    var body: some View {
        VStack {
            self.causitiveActorButtons
            
            Divider()
            
            self.causitiveObjectButtons
        }
    }
}

//struct CausitiveButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        CausitiveButtons()
//    }
//}

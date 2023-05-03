//
//  ConjugationResults.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct ConjugationResults: View {
    
    @Binding var conjugations: [VerbTenses : String]
    
    private func getConjugation(tense: VerbTenses) -> String {
        guard let conjugation = self.conjugations[tense] else {
            return ""
        }
        
        return conjugation
    }
    
    // MARK: - UI
    var body: some View {
        HStack (spacing: 20) {
            VStack (alignment: .leading, spacing: 10) {
                Text("\(VerbTenses.command.rawValue):")
                    .bold()
                Text("\(VerbTenses.past.rawValue):")
                    .bold()
                Text("\(VerbTenses.present.rawValue):")
                    .bold()
                Text("\(VerbTenses.future.rawValue):")
                    .bold()
            }
            
            VStack (alignment: .leading, spacing: 10) {
                Text(self.getConjugation(tense: .command))
                Text(self.getConjugation(tense: .past))
                Text(self.getConjugation(tense: .present))
                Text(self.getConjugation(tense: .future))
            }
            
            Spacer() // Push to the left
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
}

//struct ConjugationResults_Previews: PreviewProvider {
//    static var previews: some View {
//        ConjugationResults()
//    }
//}

//
//  CausitiveButtons.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct CausitiveButtons: View {
    
    var conjugateMagpa: () -> Void
    var conjugateIpa: () -> Void
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            self.causitiveActorButtons
            
            Divider()
            
            self.causitiveObjectButtons
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
}

//struct CausitiveButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        CausitiveButtons()
//    }
//}

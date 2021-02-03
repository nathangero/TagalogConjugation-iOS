//
//  HomeScreen.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var rootWord = ""
    @State var conjugations: [VerbTenses : String] = [:]
    
    var rootWordText: some View {
        UITextField.appearance().clearButtonMode = .whileEditing // Allows clear button to be used with text field
        
        return ZStack {
            TextField("root word", text: self.$rootWord)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: UIScreen.main.bounds.width - 150, minHeight: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(self.colorScheme == .dark ? Color.white : Color.black, lineWidth: 1.5)
                        .frame(maxWidth: UIScreen.main.bounds.width - 150, minHeight: 50)
                )
        }
    }
    
    
    
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text("Conjugate Tagalog")
                .font(.largeTitle)
                .padding(.top)
                .hidden()
            
            Text("Type in a word to conjugate")
                .font(.title)
            
            self.rootWordText
            
            Divider()
            
            ConjugationResults(conjugations: self.$conjugations)
            
            Divider()
            
            ScrollView {
                ActorButtons(rootWord: self.$rootWord, conjugations: self.$conjugations)
                
                Divider()
                
                ObjectButtons(rootWord: self.$rootWord, conjugations: self.$conjugations)
                
                Divider()
                
                CausitiveButtons(rootWord: self.$rootWord, conjugations: self.$conjugations)
            }
            
            

            Spacer()
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

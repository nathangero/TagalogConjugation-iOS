//
//  HomeScreen.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @StateObject var viewModel = ViewModel()
    
    // MARK: - BODY
    
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text("Conjugate Tagalog")
                .font(.largeTitle)
                .padding(.top)
                .hidden()
            
            Text("Type in a word to conjugate")
                .font(.title)
            
            rootWordText
            
            Divider()
            
            ConjugationResults(conjugations: $viewModel.conjugations)
            
            Divider()
            
            ScrollView {
                ActorButtons(
                    conjugateMag: { viewModel.conjugateMag() },
                    conjugateUm: { viewModel.conjugateUm() },
                    conjugateMa: { viewModel.conjugateMa() },
                    conjugateMang: { viewModel.conjugateMang() }
                )
                
                Divider()
                
                ObjectButtons(
                    conjugateI: { viewModel.conjugateI() },
                    conjugateIn: { viewModel.conjugateIn() },
                    conjugateAn: { viewModel.conjugateAn() }
                )
                
                Divider()
                
                CausitiveButtons(
                    conjugateMagpa: { viewModel.conjugateMagpa() },
                    conjugateIpa: { viewModel.conjugateIpa() }
                )
            }
            
            

            Spacer()
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
    
    
    // MARK: - View Components
    
    var rootWordText: some View {
        UITextField.appearance().clearButtonMode = .whileEditing // Allows clear button to be used with text field
        
        return ZStack {
            TextField("root word", text: $viewModel.rootWord)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: UIScreen.main.bounds.width - 150, minHeight: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 1.5)
                        .frame(maxWidth: UIScreen.main.bounds.width - 150, minHeight: 50)
                )
        }
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

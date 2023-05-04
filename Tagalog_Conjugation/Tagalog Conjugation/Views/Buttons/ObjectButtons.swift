//
//  ObjectButtons.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct ObjectButtons: View {
    
    var conjugateI: () -> Void
    var conjugateIn: () -> Void
    var conjugateAn: () -> Void
    
    
    // MARK: - BODY
    var body: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Object:")
                    .font(.headline)
                Spacer()
            }
            
            HStack (spacing: 15) {
                self.iButton
                self.inButton
                self.anButton
            }
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
        
    }
    
    
    // MARK: - View Components
    
    var iButton: some View {
        Button(action: self.conjugateI) {
            Text("i-")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    var inButton: some View {
        Button(action: self.conjugateIn) {
            Text("in-")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    var anButton: some View {
        Button(action: self.conjugateAn) {
            Text("-an")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
}

struct ObjectButtons_Previews: PreviewProvider {
    static var previews: some View {
        ObjectButtons(conjugateI: {}, conjugateIn: {}, conjugateAn: {})
    }
}

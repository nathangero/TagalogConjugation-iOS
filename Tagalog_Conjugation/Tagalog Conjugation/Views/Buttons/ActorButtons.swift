//
//  ActorButtons.swift
//  Tagalog Conjugation
//
//  Created by Nathan Geronimo on 1/29/21.
//

import SwiftUI

struct ActorButtons: View {
    
    var conjugateMag: () -> Void
    var conjugateUm: () -> Void
    var conjugateMa: () -> Void
    var conjugateMang: () -> Void
    
    // MARK: - BODY
    var body: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Actor:")
                    .font(.headline)
                Spacer()
            }
            
            HStack (spacing: 10) {
                self.magButton
                self.umButton
                self.maButton
                self.mangButton
            }
        }.frame(maxWidth: UIScreen.main.bounds.width - 30)
    }
    
    
    // MARK: - View Components
    
    var magButton: some View {
        Button(action: self.conjugateMag) {
            Text("mag-")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    var umButton: some View {
        Button(action: self.conjugateUm) {
            Text("-um-")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    var maButton: some View {
        Button(action: self.conjugateMa) {
            Text("ma-")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
    
    var mangButton: some View {
        Button(action: self.conjugateMang) {
            Text("mang-")
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(minHeight: 50)
        .background(Colors.dodgerBlue())
        .cornerRadius(10)
    }
}

struct ActorButtons_Previews: PreviewProvider {
    static var previews: some View {
        ActorButtons(conjugateMag: {}, conjugateUm: {}, conjugateMa: {}, conjugateMang: {})
    }
}

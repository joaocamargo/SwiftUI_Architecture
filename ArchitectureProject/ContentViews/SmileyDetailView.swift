//
//  SmileyDetailView.swift
//  ArchitectureProject
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct SmileyDetailView: View {
    
    let smiley: String
    
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(smiley).font(.system(size: 120))
            
            
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
               Text("go back to my list.")
            }
            
            
        }.navigationBarTitle("Your Smiley",displayMode: .inline)
    }
}

struct SmileyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SmileyDetailView(smiley: "😄")
        }
    }
}

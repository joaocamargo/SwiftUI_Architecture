//
//  SmileyListView.swift
//  ArchitectureProject
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct SmileyListView: View {
    
    @ObservedObject var data = EmojiDataModel()
    
    
    var body: some View {
        NavigationView {
            List(data.smileys,id: \.self) { item in
                NavigationLink(destination: SmileyDetailView(smiley: item)) {
                    SmileyRow(smiley: item)
                }
            }.navigationBarTitle("Smileys")
        }
    }
}

struct SmileyListView_Previews: PreviewProvider {
    static var previews: some View {
        SmileyListView()
    }
}

struct SmileyRow: View {
    let smiley: String
    var body: some View {
        HStack{
            Text(smiley)
            Text("showInfoForSmiley")
        }
    }
}

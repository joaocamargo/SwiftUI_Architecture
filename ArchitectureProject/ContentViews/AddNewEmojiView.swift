//
//  EmojiView.swift
//  ArchitectureProject
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct AddNewEmojiView: View {
    
    @State var newEmoji = ""
    
    @Binding var isPresented: Bool
    
    @ObservedObject var emojiData: EmojiDataModel
    
    var body: some View {
        
        VStack(spacing: 20) {
            TextField("new Emoji", text: $newEmoji)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                self.emojiData.addNew(emoji: newEmoji)
                self.isPresented = false
            }){
                Text("add")
            }
        }.padding()
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEmojiView(isPresented: .constant(false), emojiData: EmojiDataModel())
    }
}

//
//  EmokiDataModel.swift
//  ArchitectureProject
//
//  Created by joao camargo on 09/05/21.
//

import Foundation
import Combine

class EmojiDataModel: ObservableObject {
    
    @Published var emojis = ["🍓","🥑","🥭","🧇","🥐"]
    
    func delete(indices: IndexSet) {
        for index in indices.reversed() {
            emojis.remove(at: index)
            print("remove at \(index)")
        }
    }
    
    func addNew(emoji: String) {
        emojis.append(emoji)
    }
}

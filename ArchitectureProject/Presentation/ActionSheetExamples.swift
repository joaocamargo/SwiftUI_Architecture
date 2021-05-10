//
//  ActionSheetExamples.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//

import SwiftUI

struct ActionSheetExamples: View {
    
    @State private var actionIsShown: Bool = false
    
    var body: some View {
        VStack {
            Text("Action Sheet example").font(.title)
            
            Button(action: {
                self.actionIsShown = true
            }){
                Text("Show action sheet")
            }.actionSheet(isPresented: $actionIsShown, content: {
                ActionSheet(title: Text("Title"), message: Text("take action now"), buttons: [ActionSheet.Button.cancel(), .default(Text("default")), .destructive(Text("destructive"))])
            })
        }
    }
}

struct ActionSheetExamples_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExamples()
    }
}

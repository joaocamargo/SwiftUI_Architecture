//
//  ModalPresentationExamples.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//

import SwiftUI

struct ModalPresentationExamples: View {
    
    @State private var modalIsShown: Bool = false
        
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Modal Presentation").font(.title)
            
            Button(action: {
                self.modalIsShown = true
            }){
                Text("show modal")
            }.sheet(isPresented: $modalIsShown) {
                VStack {
                    Text("Shown modal")
                }.padding().background(Color.yellow)
            }
            
        }
    }
}

struct ModalPresentationExamples_Previews: PreviewProvider {
    static var previews: some View {
        ModalPresentationExamples()
    }
}

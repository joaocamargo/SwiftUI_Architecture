//
//  PopOverExample.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//

import SwiftUI

struct PopOverExample: View {
    
    @State private var showPop: Bool = false
    @State private var showSecondPop: Bool = false
    
    
    var body: some View {
        VStack(spacing: 20){
            Text("PoP over").font(.title)
            
            Color.red.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .popover(isPresented: $showPop) {
                    VStack{
                        Text("Show More")
                    }.padding(30)
                }

            
            Button(action: {
                self.showPop = true
            }) {
                Text("show popover now!")
            }
            
            
            Color.green.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .popover(isPresented: $showSecondPop, attachmentAnchor: .point(UnitPoint(x: 0.5, y: 0)),arrowEdge: .trailing) {
                    VStack{
                        Text("pop over").padding(40)
                    }.padding(30)
                }
            
            Button(action: {
                self.showSecondPop = true
            }) {
                Text("show second popover now!")
            }
            
        }
    }
}

struct PopOverExample_Previews: PreviewProvider {
    static var previews: some View {
        PopOverExample()
    }
}

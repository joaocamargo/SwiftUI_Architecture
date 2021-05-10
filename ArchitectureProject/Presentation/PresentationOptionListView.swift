//
//  PresentationOptionListView.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//

import SwiftUI

struct PresentationOptionListView: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: PopOverExample()){
                    Text("pop over")
                }
                
                NavigationLink(destination: AlertExamples()){
                    Text("alert")
                }
                
                NavigationLink(destination: ActionSheetExamples()){
                    Text("Action sheet")
                }
                
                NavigationLink(destination: ModalPresentationExamples()){
                    Text("modal")
                }
            }.navigationTitle("presentation of views")
        }
    }
}

struct PresentationOptionListView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationOptionListView()
    }
}

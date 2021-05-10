//
//  AlertExamples.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//

import SwiftUI

struct AlertExamples: View {
    
    @State private var alertIsShown: Bool = false
    @State private var secondAlertIsShown: Bool = false

    
    var body: some View {
        VStack(spacing: 30) {
            Text("Alert").font(.title)
            
            Button(action: {
                self.alertIsShown = true
            }) {
                Text("show alert")
            }
            
            .alert(isPresented: $alertIsShown) {
                Alert(title: Text("title"), message: Text("detail info alert"), dismissButton: .default(Text("dismiss alert")))
            }
            
            
            Button(action: {
                self.secondAlertIsShown = true
            }) {
                Text("delete document")
            }
            .alert(isPresented: $secondAlertIsShown) {
                Alert(title: Text("Your really want to delete?"), primaryButton: .cancel(), secondaryButton: .destructive(Text("Delete"),action: {
                                                         print("delete")}
                ))
            }
            
        }
    }
}

struct AlertExamples_Previews: PreviewProvider {
    static var previews: some View {
        AlertExamples()
    }
}

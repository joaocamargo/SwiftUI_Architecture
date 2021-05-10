//
//  SecondDetailView.swift
//  ArchitecturProject
//
//  Created by Karin Prater on 22.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct SecondDetailView: View {
     @EnvironmentObject var navigationController: NavigationController
    
    var body: some View {
        VStack{
            Text("second detail")
                .font(.title)
            
            Button(action: {
                 
                self.navigationController.secondDetailIsShown = false
                self.navigationController.shouldPushBack = true
               
            }) {
                Text("go back to master")
                
            }
            
            Button(action: {
                self.navigationController.selection = 1
            }) {
                Text("go to smileys")
            }
            
        }
    }
}

struct SecondDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SecondDetailView()
          .environmentObject(NavigationController())
    }
}

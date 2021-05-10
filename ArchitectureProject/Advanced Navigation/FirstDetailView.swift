//
//  FirstDetailView.swift
//  ArchitecturProject
//
//  Created by Karin Prater on 22.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct FirstDetailView: View {
    
    let imageName: String?
    
    @Environment(\.presentationMode) var presentationMode
    
     @EnvironmentObject var navigationController: NavigationController
    
    var body: some View {
        VStack {
        Text("First Detail view")
            
            Text("you chose image \(imageName ?? "none")")
            Image(systemName: imageName ?? "error")
            
            NavigationLink(destination: SecondDetailView().environmentObject(navigationController), isActive: $navigationController.secondDetailIsShown) {
                Text("go to second detail view")
            }
            
            Button(action: {
                self.navigationController.selectedImage = nil
               // self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("go back to master")
            }
        }
        .onAppear {
            if self.navigationController.shouldPushBack {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
            
//        .onReceive(navigationController.$sho) { (image) in
//            print("image \(image)")
//            if image == nil {
//                print("push back \(self.presentationMode.wrappedValue)")
//                self.presentationMode.wrappedValue.dismiss()
//            }
//        }
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView(imageName: "name")
         .environmentObject(NavigationController())
    }
}

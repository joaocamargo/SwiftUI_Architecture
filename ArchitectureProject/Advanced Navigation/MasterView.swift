//
//  MasterView.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//

import SwiftUI

struct MasterView: View {
    
    //@State private var selectedImage: String? = nil
    
    @EnvironmentObject var navigationController: NavigationController

    
    var body: some View {
        NavigationView{
            VStack {
                Text("Master View").font(.title)
                
                 ImageSmallView(imageName: "flame.fill", selectedImage: $navigationController.selectedImage)
                 ImageSmallView(imageName: "hare", selectedImage: $navigationController.selectedImage)
                 ImageSmallView(imageName: "ant", selectedImage: $navigationController.selectedImage)

                 
            }
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView().environmentObject(NavigationController())
    }
}

struct ImageSmallView: View {
     @EnvironmentObject var navigationController: NavigationController
    let imageName: String
    @Binding var selectedImage: String?
    
    var body: some View {
        NavigationLink(destination: FirstDetailView(imageName: selectedImage).environmentObject(navigationController), tag: imageName, selection: self.$selectedImage) {
            Image(systemName: imageName)
                .foregroundColor(.red)
                .font(.system(size: 60))
                .padding()
        }
        .onTapGesture {
            self.selectedImage = self.imageName
        }
    }
}

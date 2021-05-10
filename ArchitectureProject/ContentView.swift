//
//  ContentView.swift
//  ArchitectureProject
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    return dateFormatter
}()

struct ContentView: View {
    
    @EnvironmentObject var navigationController: NavigationController

    
    @State private var dates = [Date]()
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $navigationController.selection) {
            
            EmojiList().tag(0).tabItem {
                Image(systemName: "circle")
                Text("Emoji") }
            
            SmileyListView().tag(1).tabItem {
                Image(systemName: "square")
                Text("Smiley") }
            
            PresentationOptionListView().tag(2).tabItem {
                Image(systemName: "pencil")
                Text("pop overs") }
            
            MasterView().tag(3).tabItem {
                Image(systemName: "star")
               Text("Navigation") }
            
        }.accentColor(Color.green)

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(NavigationController())
    }
}

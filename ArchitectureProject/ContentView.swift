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
    
    @State private var dates = [Date]()
    
    var body: some View {
        EmojiList()
//        NavigationView {
//            MasterView(dates: $dates).navigationBarTitle(Text("Master"))
//                .navigationBarItems(leading: EditButton(),
//                                    trailing: Button (action: {
//                                        withAnimation {
//                                            self.dates.insert(Date(), at: 0)
//                                        }
//                                    }) {Image(systemName: "plus")}
//                )
//            DetailView()
//        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct MasterView: View {
//    @Binding var dates: [Date]
//
//    var body: some View {
//        List {
//            ForEach(dates, id: \.self) { date in
//                NavigationLink(
//                    destination: DetailView(selectedDate: date)) {
//                    Text("\(date, formatter: dateFormatter)")
//                }
//            }.onDelete { indices in
//                indices.forEach { self.dates.remove(at: $0)}
//            }
//        }
//    }
//}
//
//struct DetailView: View {
//    var selectedDate: Date?
//
//    var body: some View  {
//        Group {
//            if selectedDate != nil {
//                Text("\(selectedDate!,formatter: dateFormatter)")
//            } else {
//                Text("detail view content goes here")
//            }
//        }.navigationBarTitle(Text("Detail"))
//    }
//}

//
//  NavigationController.swift
//  ArchitectureProject
//
//  Created by joao camargo on 10/05/21.
//


import Foundation
import Combine

class NavigationController: ObservableObject {
    
    @Published var selection: Int = 1
    
    @Published var selectedImage: String? = nil
    @Published var secondDetailIsShown: Bool = false
    
    @Published var shouldPushBack: Bool = false
    
}

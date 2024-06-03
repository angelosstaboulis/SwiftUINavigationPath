//
//  MainViewModel.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 3/6/24.
//

import Foundation
import SwiftUI
class MainViewModel: ObservableObject {
    @Published var path = NavigationPath()
    
    func push(_ routPathView: RoutePath) {
        path.append(routPathView)
    }
    
    func pop() {
        path.removeLast()
    }
}


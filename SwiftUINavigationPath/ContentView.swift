//
//  ContentView.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel:MainViewModel

    var body: some View {
        NavigationStack(path:$viewModel.path){
            VStack {
                Button("View A") {
                    viewModel.push(RoutePath.viewA)
                }
                Button("View B") {
                    viewModel.push(RoutePath.viewB)
                }
                Button("View C") {
                    viewModel.push(RoutePath.viewC)
                }
            }.navigationDestination(for: RoutePath.self) { route in
                switch route {
                case .viewA:
                    ViewA()
                case .viewB:
                    ViewB()
                case .viewC:
                    ViewC()
                    
                }
                
            }
        }
    }
}

#Preview {
    ContentView(viewModel: .init())
}

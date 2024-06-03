//
//  SwiftUINavigationPathApp.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 3/6/24.
//

import SwiftUI

@main
struct SwiftUINavigationPathApp: App {
    @StateObject private var viewModel = MainViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

//
//  ViewA.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 3/6/24.
//

import SwiftUI

struct ViewA: View {
    @EnvironmentObject var viewModel: MainViewModel

    var body: some View {
        Text("Hello ViewA!")
        Button {
            viewModel.pop()
        } label: {
            Text("Back")
        }

    }
}

#Preview {
    ViewA()
}

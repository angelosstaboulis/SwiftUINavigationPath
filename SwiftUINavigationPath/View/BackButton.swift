//
//  BackButton.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 7/6/24.
//

import SwiftUI

struct BackButton: View {
    @EnvironmentObject var viewModel: MainViewModel
    @State var caption:String
    var body: some View {
        Button {
            viewModel.pop()
        } label: {
            Text(caption).background {
                Rectangle().frame(width:150,height:45)
                    .foregroundStyle(.blue)
                    .clipShape(.capsule)
            }.foregroundStyle(.white)
            .padding(15)
        }
    }
}

#Preview {
    BackButton(caption: "")
}

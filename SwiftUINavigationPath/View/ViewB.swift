//
//  ViewB.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 3/6/24.
//

import SwiftUI

struct ViewB: View {
    @EnvironmentObject var viewModel: MainViewModel

    var body: some View {
        VStack{
            ZStack(alignment: .topLeading, content: {
                Button {
                    viewModel.pop()
                } label: {
                    Text("Back to Main View")
                }
                HStack {
                    Spacer()
                    VStack {
                        Text("Hello ViewB!")
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    Spacer()
                }
            }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
           
           
        }.navigationBarBackButtonHidden()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ViewB()
}

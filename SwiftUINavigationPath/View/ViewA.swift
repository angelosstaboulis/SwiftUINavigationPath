//
//  ViewA.swift
//  SwiftUINavigationPath
//
//  Created by Angelos Staboulis on 3/6/24.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading, content: {
                
                BackButton(viewModel: .init(), caption: "Back to Main View")
                HStack {
                    Spacer()
                    VStack {
                        Text("Hello ViewA!")
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    Spacer()
                }
            }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
           
        }.navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ViewA()
}

import SwiftUI

struct ViewB: View {
    @EnvironmentObject var viewModel: MainViewModel

    var body: some View {
        VStack{
            ZStack(alignment: .topLeading, content: {
                BackButton(caption: "Back to Main View")

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

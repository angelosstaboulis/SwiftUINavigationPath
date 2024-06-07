import SwiftUI

struct ViewC: View {
    @EnvironmentObject var viewModel: MainViewModel

    var body: some View {
        VStack{
            ZStack(alignment: .topLeading, content: {
                BackButton(caption: "Back to Main View")

                HStack {
                    Spacer()
                    VStack {
                        Text("Hello ViewC!")
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    Spacer()
                }
            }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
           
           
        }.navigationBarBackButtonHidden()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ViewC()
}

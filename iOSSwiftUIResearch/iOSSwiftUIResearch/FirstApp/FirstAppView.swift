//

import SwiftUI

struct FirstAppView: View {
    @State var outputText = "First State"
    @State var isTapped = false
    var body: some View {
        VStack {
            Text(outputText)
                .padding()

            Button {
                isTapped = !isTapped
                if isTapped {
                    outputText = "Taped"
                } else {
                    outputText = "First State"
                }
            } label: {
                Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(Color.blue)
                    .cornerRadius(16.0)
            }
        }
    }
}

struct FirstAppView_Previews: PreviewProvider {
    static var previews: some View {
        FirstAppView()
    }
}

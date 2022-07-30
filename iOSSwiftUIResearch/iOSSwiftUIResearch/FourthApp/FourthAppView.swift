//

import SwiftUI

struct FourthAppView: View {

    @State var inputText: String = ""
    @State var dispSearchKey: String = ""

    var body: some View {
        VStack {
            TextField(
                "キーワードを入力してください",
                text: $inputText,
                onCommit: { dispSearchKey = inputText }
            )
            .padding()

            MapView(searchKey: dispSearchKey)
        }
    }
}

struct FourthAppView_Previews: PreviewProvider {
    static var previews: some View {
        FourthAppView()
    }
}

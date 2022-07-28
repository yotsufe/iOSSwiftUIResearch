//

import SwiftUI

struct ThirdAppView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)

            HStack {
                Button(action: {
                }) {
                    Image("cymbal")
                }
                Button(action: {
                }) {
                    Image("guitar")
                }
            }
        }
    }
}

struct ThirdAppView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdAppView()
    }
}

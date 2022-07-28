//

import SwiftUI

struct ThirdAppView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
        }
    }
}

struct ThirdAppView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdAppView()
    }
}

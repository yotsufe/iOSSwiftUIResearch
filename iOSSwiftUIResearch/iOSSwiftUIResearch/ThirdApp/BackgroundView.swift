//

import SwiftUI

struct BackgroundView: View {

    let imageName: String

    var body: some View {
        Image("background")
            .resizable()
            .ignoresSafeArea()
            .aspectRatio(contentMode: .fill)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}

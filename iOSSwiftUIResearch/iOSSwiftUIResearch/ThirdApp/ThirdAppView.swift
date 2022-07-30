//

import SwiftUI

struct ThirdAppView: View {

    let soundPlayer = SoundPlayer()

    var body: some View {
        ZStack {
            BackgroundView(imageName: "background")

            HStack {
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image("cymbal")
                }
                Button {
                    soundPlayer.guitarPlay()
                } label: {
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

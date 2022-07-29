//

import SwiftUI

struct ThirdAppView: View {

    let soundPlayer = SoundPlayer()

    var body: some View {
        ZStack {
            BackgroundView(imageName: "background")

            HStack {
                Button(action: {
                    soundPlayer.cymbalPlay()
                }) {
                    Image("cymbal")
                }
                Button(action: {
                    soundPlayer.guitarPlay()
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

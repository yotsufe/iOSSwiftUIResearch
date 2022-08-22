//

import SwiftUI

struct FifthAppView: View {
    var body: some View {
        VStack {
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: SettingView()) {
                    Text("タイマー設定")
                }
            }
        }
    }
}

struct FifthAppView_Previews: PreviewProvider {
    static var previews: some View {
        FifthAppView()
    }
}

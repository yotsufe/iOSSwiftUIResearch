//

import SwiftUI

struct FifthAppView: View {
    var body: some View {
        VStack(spacing: 30.0) {
            Text("残り10秒")
                .font(.largeTitle)

            HStack {
                Button(action: {
                }) {
                    Text("スタート")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 140, height: 140)
                        .background(Color("startColor"))
                        .clipShape(Circle())
                }
                Button(action: {
                }) {
                    Text("ストップ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 140, height: 140)
                        .background(Color("stopColor"))
                        .clipShape(Circle())
                }
            }
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

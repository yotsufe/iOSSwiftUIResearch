//

import SwiftUI

struct FifthAppView: View {

    @AppStorage("timer_value") var timerValue = 10
    @State var timerHandler: Timer?
    @State var count = 0
    @State var showAlert = false

    var body: some View {
        VStack(spacing: 30.0) {
            Text("残り\(timerValue - count)秒")
                .font(.largeTitle)

            HStack {
                Button(action: {
                    startTimer()
                }) {
                    Text("スタート")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 140, height: 140)
                        .background(Color("startColor"))
                        .clipShape(Circle())
                }
                Button(action: {
                    stopTimer()
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
        .onAppear {
            count = 0
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: SettingView()) {
                    Text("タイマー設定")
                }
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("終了"),
                  message: Text("タイマー終了時間です"),
                  dismissButton: .default(Text("閉じる")))
        }
    }

    func startTimer() {
        if let unwrappedTimerHandler = timerHandler {
            if unwrappedTimerHandler.isValid == true {
                return
            }
        }
        if timerValue - count <= 0 {
            count = 0
        }

        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            countDownTimer()
        }
    }

    func countDownTimer() {
        count += 1
        if timerValue - count <= 0 {
            timerHandler?.invalidate()
            showAlert = true
        }
    }

    func stopTimer() {
        if let unwrappedTimerHandler = timerHandler {
            if unwrappedTimerHandler.isValid == true {
                unwrappedTimerHandler.invalidate()
            }
        }
    }
}

struct FifthAppView_Previews: PreviewProvider {
    static var previews: some View {
        FifthAppView()
    }
}

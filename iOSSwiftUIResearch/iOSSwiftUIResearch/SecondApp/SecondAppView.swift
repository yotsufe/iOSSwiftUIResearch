//

import SwiftUI

struct SecondAppView: View {
    @State var answerNum = 0

    var body: some View {
        VStack {
            switch answerNum {
            case 0:
                Text("じゃんけんをします")
                Spacer()
            case 1:
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
            case 2:
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
            default:
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
            }


            Button(action: {
                switch answerNum {
                case 0:
                    answerNum = Int.random(in: 1...3)
                default:
                    answerNum = 0
                }
            }) {
                switch answerNum {
                case 0:
                    Text("じゃんけん")
                        .frame(maxWidth: .infinity)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .font(.title)
                        .background(Color.pink)
                        .foregroundColor(.white)
                default:
                    Text("もう一回")
                        .frame(maxWidth: .infinity)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .font(.title)
                        .background(Color.pink)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct SecondAppView_Previews: PreviewProvider {
    static var previews: some View {
        SecondAppView()
    }
}

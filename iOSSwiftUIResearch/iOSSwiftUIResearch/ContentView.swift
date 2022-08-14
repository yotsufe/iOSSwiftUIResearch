//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FirstAppView()) {
                    Text("First App")
                }.padding()

                NavigationLink(destination: SecondAppView()) {
                    Text("Second App")
                }.padding()

                NavigationLink(destination: ThirdAppView()) {
                    Text("Third App")
                }.padding()

                NavigationLink(destination: FourthAppView()) {
                    Text("Fourth App")
                }.padding()

                NavigationLink(destination: FifthAppView()) {
                    Text("Fifth App")
                }.padding()

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

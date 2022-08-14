//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FirstAppView().navigationTitle("First App")) {
                    Text("First App")
                }.padding()

                NavigationLink(destination: SecondAppView().navigationTitle("Second App")) {
                    Text("Second App")
                }.padding()

                NavigationLink(destination: ThirdAppView().navigationTitle("Third App")) {
                    Text("Third App")
                }.padding()

                NavigationLink(destination: FourthAppView().navigationTitle("Fourth App")) {
                    Text("Fourth App")
                }.padding()

                NavigationLink(destination: FifthAppView().navigationTitle("Fifth App")) {
                    Text("Fifth App")
                }.padding()

                Spacer()
            }
            .navigationTitle("menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

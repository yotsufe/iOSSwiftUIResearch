//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FirstAppView().navigationTitle("First App")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("First App")
                }.padding()

                NavigationLink(destination: SecondAppView().navigationTitle("Second App")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Second App")
                }.padding()

                NavigationLink(destination: ThirdAppView().navigationTitle("Third App")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Third App")
                }.padding()

                NavigationLink(
                    destination: FourthAppView().navigationTitle("Fourth App")
                        .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Fourth App")
                }.padding()

                NavigationLink(destination: FifthAppView().navigationTitle("Fifth App")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Fifth App")
                }.padding()

                NavigationLink(destination: SixthAppView().navigationTitle("Sixth App")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Sixth App")
                }.padding()

                Spacer()
            }
            .navigationTitle("menu")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

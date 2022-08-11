//

import SwiftUI
import MapKit

struct FourthAppView: View {

    @State var inputText: String = ""
    @State var dispSearchKey: String = ""
    @State var dispMapType: MKMapType = .standard

    var body: some View {
        VStack {
            TextField(
                "キーワードを入力してください",
                text: $inputText,
                onCommit: { dispSearchKey = inputText }
            )
            .padding()

            ZStack(alignment: .bottomTrailing) {
                MapView(searchKey: dispSearchKey, mapType: dispMapType)

                Button(action: {
                    switch dispMapType {
                    case .standard:
                        dispMapType = .satellite
                    case .satellite:
                        dispMapType = .hybrid
                    case .hybrid:
                        dispMapType = .satelliteFlyover
                    case .satelliteFlyover:
                        dispMapType = .hybridFlyover
                    case .hybridFlyover:
                        dispMapType = .mutedStandard
                    default:
                        dispMapType = .standard
                    }
                }) {
                    Image(systemName: "map")
                        .resizable()
                        .frame(width: 35.0, height: 35.0, alignment: .leading)
                }
                .padding(.trailing, 20.0)
                .padding(.bottom, 30.0)
            }
        }
    }
}

struct FourthAppView_Previews: PreviewProvider {
    static var previews: some View {
        FourthAppView()
    }
}

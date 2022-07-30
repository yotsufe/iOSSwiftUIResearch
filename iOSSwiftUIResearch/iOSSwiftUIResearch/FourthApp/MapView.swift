//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    let searchKey: String

    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(
            searchKey,
            completionHandler: { (placemarks, error) in
                if let unwrapPlacemarks = placemarks,
                   let firstPlacemark = unwrapPlacemarks.first,
                   let location = firstPlacemark.location {
                    let targetCoordinate = location.coordinate
                }
                
            })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "東京駅")
    }
}

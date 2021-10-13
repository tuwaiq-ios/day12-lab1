
import Foundation
import MapKit

struct ContactDetailsMapViewModel {
    let mapOptions: MKMapSnapshotter.Options
    
    init(mapOptions: MKMapSnapshotter.Options) {
        mapOptions.pointOfInterestFilter = MKPointOfInterestFilter(including: [])
        self.mapOptions = mapOptions
    }
}

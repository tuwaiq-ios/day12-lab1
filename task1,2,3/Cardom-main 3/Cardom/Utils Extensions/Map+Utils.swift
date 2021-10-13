

import Foundation
import MapKit

extension MKCoordinateRegion {
    
    func isValid() -> Bool {
        return ((center.latitude >= -90 && center.latitude <= 90) &&
        (center.longitude >= -180 && center.latitude <= 180) &&
        (span.latitudeDelta >= 0 && span.latitudeDelta <= 180) &&
        (span.longitudeDelta >= 0 && span.longitudeDelta <= 360))
    }
    
}

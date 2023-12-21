//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//  

import Foundation

public enum PointOfInterestEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case launchEvent = "01"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .launchEvent:
            String(localized: "Launch Event (Point of Interest)", bundle: .module, comment: "Point Of Interest Entity Subtype")
        }
    }
}

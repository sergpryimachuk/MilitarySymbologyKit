//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum FireFightingOperationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case fireHydrant = "01"
    case fireStation = "02"
    case otherWaterSupplyLocation = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .fireHydrant:
            return String(localized: "Fire Hydrant", comment: "Firefighting Operation Entity Subtype")
        case .fireStation:
            return String(localized: "Fire Station", comment: "Firefighting Operation Entity Subtype")
        case .otherWaterSupplyLocation:
            return String(localized: "Other Water Supply Location", comment: "Firefighting Operation Entity Subtype")
        }
    }
}

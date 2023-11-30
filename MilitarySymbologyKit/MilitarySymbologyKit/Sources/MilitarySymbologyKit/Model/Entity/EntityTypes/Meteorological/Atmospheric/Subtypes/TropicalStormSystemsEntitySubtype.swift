//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum TropicalStormSystemsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case tropicalDepression = "01"
    case tropicalStorm = "02"
    case hurricaneTyphoon = "03"
    case tropicalStormWindAreas = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .tropicalDepression:
            return String(localized: "Tropical Depression", comment: "Tropical Storm Systems Entity Subtype")
            
        case .tropicalStorm:
            return String(localized: "Tropical Storm", comment: "Tropical Storm Systems Entity Subtype")
            
        case .hurricaneTyphoon:
            return String(localized: "Hurricane/Typhoon", comment: "Tropical Storm Systems Entity Subtype")
            
        case .tropicalStormWindAreas:
            return String(localized: "Tropical Storm Wind Areas and Date/Time Labels", comment: "Tropical Storm Systems Entity Subtype")
        }
    }
}

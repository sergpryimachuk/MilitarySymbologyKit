//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension OceanographicEntity {
    enum HydrographyEntityType: String, CaseIterable, EntityType {
        case depth = "01"
        case coastalHydrography = "02"
        case portsAndHarbors = "03"
        case aidsToNavigation = "04"
        case dangersHazards = "05"
        case bottomFeatures = "06"
        case tideAndCurrent = "07"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .depth:
                return String(localized: "Depth", comment: "Hydrography Entity Type")
                
            case .coastalHydrography:
                return String(localized: "Coastal Hydrography", comment: "Hydrography Entity Type")
                
            case .portsAndHarbors:
                return String(localized: "Ports and Harbors", comment: "Hydrography Entity Type")
                
            case .aidsToNavigation:
                return String(localized: "Aids to Navigation", comment: "Hydrography Entity Type")
                
            case .dangersHazards:
                return String(localized: "Dangers/Hazards", comment: "Hydrography Entity Type")
                
            case .bottomFeatures:
                return String(localized: "Bottom Features", comment: "Hydrography Entity Type")
                
            case .tideAndCurrent:
                return String(localized: "Tide and Current", comment: "Hydrography Entity Type")
            }
        }
    }
}

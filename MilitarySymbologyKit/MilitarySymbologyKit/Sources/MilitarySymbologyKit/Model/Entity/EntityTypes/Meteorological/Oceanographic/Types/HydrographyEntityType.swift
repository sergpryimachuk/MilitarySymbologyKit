//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension OceanographicEntity {
    enum HydrographyEntityType: String, CaseIterable, EntityType {
        var subtypes: [AnyEntitySubtype] { [.none] }
        
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
                String(localized: "Depth", comment: "Hydrography Entity Type")

            case .coastalHydrography:
                String(localized: "Coastal Hydrography", comment: "Hydrography Entity Type")

            case .portsAndHarbors:
                String(localized: "Ports and Harbors", comment: "Hydrography Entity Type")

            case .aidsToNavigation:
                String(localized: "Aids to Navigation", comment: "Hydrography Entity Type")

            case .dangersHazards:
                String(localized: "Dangers/Hazards", comment: "Hydrography Entity Type")

            case .bottomFeatures:
                String(localized: "Bottom Features", comment: "Hydrography Entity Type")

            case .tideAndCurrent:
                String(localized: "Tide and Current", comment: "Hydrography Entity Type")
            }
        }
    }
}

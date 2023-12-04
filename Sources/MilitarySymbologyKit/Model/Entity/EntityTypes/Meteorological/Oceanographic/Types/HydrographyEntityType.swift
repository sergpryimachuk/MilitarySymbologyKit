//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension OceanographicEntity {
    enum HydrographyEntityType: String, CaseIterable, EntityType {
        public var subtypes: [AnyEntitySubtype] { [.none] }

        case depth = "01"
        case coastalHydrography = "02"
        case portsAndHarbors = "03"
        case aidsToNavigation = "04"
        case dangersHazards = "05"
        case bottomFeatures = "06"
        case tideAndCurrent = "07"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .depth:
                String(localized: "Depth", bundle: .module, comment: "Hydrography Entity Type")

            case .coastalHydrography:
                String(localized: "Coastal Hydrography", bundle: .module, comment: "Hydrography Entity Type")

            case .portsAndHarbors:
                String(localized: "Ports and Harbors", bundle: .module, comment: "Hydrography Entity Type")

            case .aidsToNavigation:
                String(localized: "Aids to Navigation", bundle: .module, comment: "Hydrography Entity Type")

            case .dangersHazards:
                String(localized: "Dangers/Hazards", bundle: .module, comment: "Hydrography Entity Type")

            case .bottomFeatures:
                String(localized: "Bottom Features", bundle: .module, comment: "Hydrography Entity Type")

            case .tideAndCurrent:
                String(localized: "Tide and Current", bundle: .module, comment: "Hydrography Entity Type")
            }
        }
    }
}

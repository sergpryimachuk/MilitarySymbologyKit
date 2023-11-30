//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum TropicalStormSystemsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case tropicalDepression = "01"
    case tropicalStorm = "02"
    case hurricaneTyphoon = "03"
    case tropicalStormWindAreas = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .tropicalDepression:
            String(localized: "Tropical Depression", bundle: .module, comment: "Tropical Storm Systems Entity Subtype")

        case .tropicalStorm:
            String(localized: "Tropical Storm", bundle: .module, comment: "Tropical Storm Systems Entity Subtype")

        case .hurricaneTyphoon:
            String(localized: "Hurricane/Typhoon", bundle: .module, comment: "Tropical Storm Systems Entity Subtype")

        case .tropicalStormWindAreas:
            String(localized: "Tropical Storm Wind Areas and Date/Time Labels", bundle: .module, comment: "Tropical Storm Systems Entity Subtype")
        }
    }
}

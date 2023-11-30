//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum MortarEntitySubtype: String, CaseIterable, EntitySubtype {
    case armoredMechanizedTracked = "01"
    case selfPropelledWheeled = "02"
    case towed = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .armoredMechanizedTracked:
            return String(localized: "Armored/Mechanized/Tracked", comment: "Mortar Entity Subtype")

        case .selfPropelledWheeled:
            return String(localized: "Self-Propelled Wheeled", comment: "Mortar Entity Subtype")

        case .towed:
            return String(localized: "Towed", comment: "Mortar Entity Subtype")
        }
    }
}

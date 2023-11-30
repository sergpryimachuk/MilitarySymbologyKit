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
            String(localized: "Armored/Mechanized/Tracked", comment: "Mortar Entity Subtype")

        case .selfPropelledWheeled:
            String(localized: "Self-Propelled Wheeled", comment: "Mortar Entity Subtype")

        case .towed:
            String(localized: "Towed", comment: "Mortar Entity Subtype")
        }
    }
}

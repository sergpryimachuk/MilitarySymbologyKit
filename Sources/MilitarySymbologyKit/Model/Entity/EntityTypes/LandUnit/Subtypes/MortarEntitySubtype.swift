//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum MortarEntitySubtype: String, CaseIterable, EntitySubtype {
    case armoredMechanizedTracked = "01"
    case selfPropelledWheeled = "02"
    case towed = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .armoredMechanizedTracked:
            String(localized: "Armored/Mechanized/Tracked", bundle: .module, comment: "Mortar Entity Subtype")

        case .selfPropelledWheeled:
            String(localized: "Self-Propelled Wheeled", bundle: .module, comment: "Mortar Entity Subtype")

        case .towed:
            String(localized: "Towed", bundle: .module, comment: "Mortar Entity Subtype")
        }
    }
}

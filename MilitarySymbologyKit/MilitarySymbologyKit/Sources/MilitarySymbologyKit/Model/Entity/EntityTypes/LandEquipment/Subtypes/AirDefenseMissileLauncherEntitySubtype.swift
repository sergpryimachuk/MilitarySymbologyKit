//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum AirDefenseMissileLauncherEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case lightTLAR = "02"
    case lightTELAR = "03"
    case medium = "04"
    case mediumTLAR = "05"
    case mediumTELAR = "06"
    case heavy = "07"
    case heavyTLAR = "08"
    case heavyTELAR = "09"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .light:
            return String(localized: "Light", comment: "Air Defense Missile Launcher Entity Subtype")

        case .lightTLAR:
            return String(localized: "Light, TLAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .lightTELAR:
            return String(localized: "Light, TELAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .medium:
            return String(localized: "Medium", comment: "Air Defense Missile Launcher Entity Subtype")

        case .mediumTLAR:
            return String(localized: "Medium, TLAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .mediumTELAR:
            return String(localized: "Medium, TELAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .heavy:
            return String(localized: "Heavy", comment: "Air Defense Missile Launcher Entity Subtype")

        case .heavyTLAR:
            return String(localized: "Heavy, TLAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .heavyTELAR:
            return String(localized: "Heavy, TELAR", comment: "Air Defense Missile Launcher Entity Subtype")
        }
    }
}

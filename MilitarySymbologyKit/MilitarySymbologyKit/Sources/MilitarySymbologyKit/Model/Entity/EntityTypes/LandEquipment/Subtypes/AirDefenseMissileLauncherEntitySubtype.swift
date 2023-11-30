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
            String(localized: "None")

        case .light:
            String(localized: "Light", comment: "Air Defense Missile Launcher Entity Subtype")

        case .lightTLAR:
            String(localized: "Light, TLAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .lightTELAR:
            String(localized: "Light, TELAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .medium:
            String(localized: "Medium", comment: "Air Defense Missile Launcher Entity Subtype")

        case .mediumTLAR:
            String(localized: "Medium, TLAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .mediumTELAR:
            String(localized: "Medium, TELAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .heavy:
            String(localized: "Heavy", comment: "Air Defense Missile Launcher Entity Subtype")

        case .heavyTLAR:
            String(localized: "Heavy, TLAR", comment: "Air Defense Missile Launcher Entity Subtype")

        case .heavyTELAR:
            String(localized: "Heavy, TELAR", comment: "Air Defense Missile Launcher Entity Subtype")
        }
    }
}

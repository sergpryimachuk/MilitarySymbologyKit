//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum SignalEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case radio = "01"
    case radioRelay = "02"
    case teletype = "03"
    case tacticalSatellite = "04"
    case videoImageryCombatCamera = "05"
    case headquartersElement = "95"
    case divisionAndBelowSupport = "96"
    case corpsSupport = "97"
    case theaterEchelonsAboveCorpsSupport = "98"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None", comment: "Signal Entity Subtype")

        case .radio:
            String(localized: "Radio", comment: "Signal Entity Subtype")

        case .radioRelay:
            String(localized: "Radio Relay", comment: "Signal Entity Subtype")

        case .teletype:
            String(localized: "Teletype", comment: "Signal Entity Subtype")

        case .tacticalSatellite:
            String(localized: "Tactical Satellite", comment: "Signal Entity Subtype")

        case .videoImageryCombatCamera:
            String(localized: "Video Imagery (Combat Camera)", comment: "Signal Entity Subtype")

        case .headquartersElement:
            String(localized: "Headquarters Element", comment: "Signal Entity Subtype")

        case .divisionAndBelowSupport:
            String(localized: "Division and Below Support", comment: "Signal Entity Subtype")

        case .corpsSupport:
            String(localized: "Corps Support", comment: "Signal Entity Subtype")

        case .theaterEchelonsAboveCorpsSupport:
            String(localized: "Theater/Echelons Above Corps Support", comment: "Signal Entity Subtype")
        }
    }
}

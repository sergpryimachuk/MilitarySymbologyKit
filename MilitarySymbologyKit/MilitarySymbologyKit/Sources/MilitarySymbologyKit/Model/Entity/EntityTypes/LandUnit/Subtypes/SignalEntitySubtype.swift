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
            String(localized: "None", bundle: .module, comment: "Signal Entity Subtype")

        case .radio:
            String(localized: "Radio", bundle: .module, comment: "Signal Entity Subtype")

        case .radioRelay:
            String(localized: "Radio Relay", bundle: .module, comment: "Signal Entity Subtype")

        case .teletype:
            String(localized: "Teletype", bundle: .module, comment: "Signal Entity Subtype")

        case .tacticalSatellite:
            String(localized: "Tactical Satellite", bundle: .module, comment: "Signal Entity Subtype")

        case .videoImageryCombatCamera:
            String(localized: "Video Imagery (Combat Camera)", bundle: .module, comment: "Signal Entity Subtype")

        case .headquartersElement:
            String(localized: "Headquarters Element", bundle: .module, comment: "Signal Entity Subtype")

        case .divisionAndBelowSupport:
            String(localized: "Division and Below Support", bundle: .module, comment: "Signal Entity Subtype")

        case .corpsSupport:
            String(localized: "Corps Support", bundle: .module, comment: "Signal Entity Subtype")

        case .theaterEchelonsAboveCorpsSupport:
            String(localized: "Theater/Echelons Above Corps Support", bundle: .module, comment: "Signal Entity Subtype")
        }
    }
}

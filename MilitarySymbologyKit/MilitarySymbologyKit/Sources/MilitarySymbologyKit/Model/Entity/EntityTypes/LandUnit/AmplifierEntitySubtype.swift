//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum AmplifierEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case headquartersElement = "95"
    case divisionAndBelowSupport = "96"
    case corpsSupport = "97"
    case theaterEchelonsAboveCorpsSupport = "98"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Amplifier Entity Subtype")

        case .headquartersElement:
            String(localized: "Headquarters Element", bundle: .module, comment: "Amplifier Entity Subtype")

        case .divisionAndBelowSupport:
            String(localized: "Division and Below Support", bundle: .module, comment: "Amplifier Entity Subtype")

        case .corpsSupport:
            String(localized: "Corps Support", bundle: .module, comment: "Amplifier Entity Subtype")

        case .theaterEchelonsAboveCorpsSupport:
            String(localized: "Theater/Echelons Above Corps Support", bundle: .module, comment: "Amplifier Entity Subtype")
        }
    }
}

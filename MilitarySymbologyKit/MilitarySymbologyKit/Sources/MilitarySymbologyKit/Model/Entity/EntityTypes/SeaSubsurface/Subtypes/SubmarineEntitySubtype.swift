//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum SubmarineEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case submarineSurfaced = "01"
    case submarineSnorkeling = "02"
    case submarineBottomed = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .submarineSurfaced:
            return String(localized: "Submarine-Surfaced", comment: "Submarine Entity Subtype")

        case .submarineSnorkeling:
            return String(localized: "Submarine-Snorkeling", comment: "Submarine Entity Subtype")

        case .submarineBottomed:
            return String(localized: "Submarine-Bottomed", comment: "Submarine Entity Subtype")
        }
    }
}

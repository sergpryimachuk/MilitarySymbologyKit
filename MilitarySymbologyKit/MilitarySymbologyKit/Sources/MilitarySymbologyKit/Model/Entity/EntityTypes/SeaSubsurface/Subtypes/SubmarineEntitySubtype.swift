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
            String(localized: "None")

        case .submarineSurfaced:
            String(localized: "Submarine-Surfaced", bundle: .module, comment: "Submarine Entity Subtype")

        case .submarineSnorkeling:
            String(localized: "Submarine-Snorkeling", bundle: .module, comment: "Submarine Entity Subtype")

        case .submarineBottomed:
            String(localized: "Submarine-Bottomed", bundle: .module, comment: "Submarine Entity Subtype")
        }
    }
}

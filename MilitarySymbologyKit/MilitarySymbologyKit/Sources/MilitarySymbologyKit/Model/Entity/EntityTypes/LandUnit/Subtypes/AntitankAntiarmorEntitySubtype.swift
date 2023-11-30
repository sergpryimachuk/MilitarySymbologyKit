//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum AntitankAntiarmorEntitySubtype: String, CaseIterable, EntitySubtype {
    case armored = "01"
    case motorized = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .armored:
            String(localized: "Armored", comment: "Antitank/Antiarmor Entity Subtype")

        case .motorized:
            String(localized: "Motorized", comment: "Antitank/Antiarmor Entity Subtype")
        }
    }
}

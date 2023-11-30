//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum AntitankAntiarmorEntitySubtype: String, CaseIterable, EntitySubtype {
    case armored = "01"
    case motorized = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .armored:
            String(localized: "Armored", bundle: .module, comment: "Antitank/Antiarmor Entity Subtype")

        case .motorized:
            String(localized: "Motorized", bundle: .module, comment: "Antitank/Antiarmor Entity Subtype")
        }
    }
}

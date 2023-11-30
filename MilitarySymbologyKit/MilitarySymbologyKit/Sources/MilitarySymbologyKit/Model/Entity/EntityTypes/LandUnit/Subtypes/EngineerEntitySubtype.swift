//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum EngineerEntitySubtype: String, CaseIterable, EntitySubtype {
    case mechanized = "01"
    case motorized = "02"
    case reconnaissance = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .mechanized:
            String(localized: "Mechanized", bundle: .module, comment: "Engineer Entity Subtype")

        case .motorized:
            String(localized: "Motorized", bundle: .module, comment: "Engineer Entity Subtype")

        case .reconnaissance:
            String(localized: "Reconnaissance", bundle: .module, comment: "Engineer Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum ElectronicWarfareEntitySubtype: String, CaseIterable, EntitySubtype {
    case analysis = "01"
    case directionFinding = "02"
    case intercept = "03"
    case jamming = "04"
    case search = "05"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .analysis:
            return String(localized: "Analysis", comment: "Electronic Warfare Entity Subtype")

        case .directionFinding:
            return String(localized: "Direction Finding", comment: "Electronic Warfare Entity Subtype")

        case .intercept:
            return String(localized: "Intercept", comment: "Electronic Warfare Entity Subtype")

        case .jamming:
            return String(localized: "Jamming", comment: "Electronic Warfare Entity Subtype")

        case .search:
            return String(localized: "Search", comment: "Electronic Warfare Entity Subtype")
        }
    }
}

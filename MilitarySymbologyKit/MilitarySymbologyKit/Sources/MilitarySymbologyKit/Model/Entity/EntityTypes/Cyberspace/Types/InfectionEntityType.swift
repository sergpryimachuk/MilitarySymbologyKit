//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension CyberspaceEntity {
    enum InfectionEntityType: String, CaseIterable, Identifiable, EntityType {
        case none = "00"
        case advancedPersistentThreat = "01"
        case nonAdvancedPersistentThreat = "02"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .advancedPersistentThreat:
                String(localized: "Advanced Persistent Threat (APT)", bundle: .module, comment: "Infection Entity Type")

            case .nonAdvancedPersistentThreat:
                String(localized: "Non-Advanced Persistent Threat (NAPT)", bundle: .module, comment: "Infection Entity Type")
            case .none:
                String(localized: "None")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .advancedPersistentThreat:
                APTEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .nonAdvancedPersistentThreat:
                NAPTEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

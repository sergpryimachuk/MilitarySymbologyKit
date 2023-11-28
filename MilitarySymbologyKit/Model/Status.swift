//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum Status: String, CaseIterable, Identifiable {
    case present = "0"
    case plannedAnticipatedSuspect = "1"
    case presentFullyCapable = "2"
    case presentDamaged = "3"
    case presentDestroyed = "4"
    case presentFullToCapacity = "5"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .present:
            String(localized: "Present", comment: "Status")

        case .plannedAnticipatedSuspect:
            String(localized: "Planned/Anticipated/Suspect", comment: "Status")

        case .presentFullyCapable:
            String(localized: "Present/Fully Capable", comment: "Status")

        case .presentDamaged:
            String(localized: "Present/Damaged", comment: "Status")

        case .presentDestroyed:
            String(localized: "Present/Destroyed", comment: "Status")

        case .presentFullToCapacity:
            String(localized: "Present/Full to Capacity", comment: "Status")
        }
    }
}

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
            String(localized: "Present", bundle: .module, comment: "Status")

        case .plannedAnticipatedSuspect:
            String(localized: "Planned/Anticipated/Suspect", bundle: .module, comment: "Status")

        case .presentFullyCapable:
            String(localized: "Present/Fully Capable", bundle: .module, comment: "Status")

        case .presentDamaged:
            String(localized: "Present/Damaged", bundle: .module, comment: "Status")

        case .presentDestroyed:
            String(localized: "Present/Destroyed", bundle: .module, comment: "Status")

        case .presentFullToCapacity:
            String(localized: "Present/Full to Capacity", bundle: .module, comment: "Status")
        }
    }
}

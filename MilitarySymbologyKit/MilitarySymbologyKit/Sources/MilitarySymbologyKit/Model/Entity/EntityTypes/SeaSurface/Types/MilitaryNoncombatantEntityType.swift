//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

extension SeaSurfaceEntity {
    enum MilitaryNoncombatantEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case auxiliaryShip = "01"
        case serviceCraftYard = "02"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .auxiliaryShip:
                String(localized: "Auxiliary Ship", comment: "Military Noncombatant Entity Type")

            case .serviceCraftYard:
                String(localized: "Service Craft/Yard", comment: "Military Noncombatant Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .auxiliaryShip:
                AuxiliaryShipEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .serviceCraftYard:
                ServiceCraftYardEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension SeaSurfaceEntity {
    enum MilitaryNoncombatantEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case auxiliaryShip = "01"
        case serviceCraftYard = "02"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .auxiliaryShip:
                String(localized: "Auxiliary Ship", bundle: .module, comment: "Military Noncombatant Entity Type")

            case .serviceCraftYard:
                String(localized: "Service Craft/Yard", bundle: .module, comment: "Military Noncombatant Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
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

//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AirUnitEntity {
    enum WeaponEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case bomb = "01"
        case decoy = "02"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .bomb:
                String(localized: "Bomb", bundle: .module, comment: "Weapon Entity Type")

            case .decoy:
                String(localized: "Decoy", bundle: .module, comment: "Weapon Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension SeaSubsurfaceEntity {
    public enum WeaponEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case torpedo = "01"
        case improvisedExplosiveDeviceIED = "02"
        case decoy = "03"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .torpedo:
                String(localized: "Torpedo", bundle: .module, comment: "Weapon Entity Type")

            case .improvisedExplosiveDeviceIED:
                String(localized: "Improvised Explosive Device (IED)", bundle: .module, comment: "Weapon Entity Type")

            case .decoy:
                String(localized: "Decoy", bundle: .module, comment: "Weapon Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum ExplosionEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case grenadeExplosion = "01"
    case incendiaryExplosion = "02"
    case mineExplosion = "03"
    case mortarFireExplosion = "04"
    case rocketExplosion = "05"
    case bombExplosion = "06"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Explosion Entity Subtype")

        case .grenadeExplosion:
            String(localized: "Grenade Explosion", bundle: .module, comment: "Explosion Entity Subtype")

        case .incendiaryExplosion:
            String(localized: "Incendiary Explosion", bundle: .module, comment: "Explosion Entity Subtype")

        case .mineExplosion:
            String(localized: "Mine Explosion", bundle: .module, comment: "Explosion Entity Subtype")

        case .mortarFireExplosion:
            String(localized: "Mortar Fire Explosion", bundle: .module, comment: "Explosion Entity Subtype")

        case .rocketExplosion:
            String(localized: "Rocket Explosion", bundle: .module, comment: "Explosion Entity Subtype")

        case .bombExplosion:
            String(localized: "Bomb Explosion", bundle: .module, comment: "Explosion Entity Subtype")
        }
    }
}

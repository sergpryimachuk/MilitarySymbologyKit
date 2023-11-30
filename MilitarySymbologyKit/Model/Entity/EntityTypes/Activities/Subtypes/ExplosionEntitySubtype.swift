//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum ExplosionEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case grenadeExplosion = "01"
    case incendiaryExplosion = "02"
    case mineExplosion = "03"
    case mortarFireExplosion = "04"
    case rocketExplosion = "05"
    case bombExplosion = "06"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None", comment: "Explosion Entity Subtype")
            
        case .grenadeExplosion:
            return String(localized: "Grenade Explosion", comment: "Explosion Entity Subtype")
            
        case .incendiaryExplosion:
            return String(localized: "Incendiary Explosion", comment: "Explosion Entity Subtype")
            
        case .mineExplosion:
            return String(localized: "Mine Explosion", comment: "Explosion Entity Subtype")
            
        case .mortarFireExplosion:
            return String(localized: "Mortar Fire Explosion", comment: "Explosion Entity Subtype")
            
        case .rocketExplosion:
            return String(localized: "Rocket Explosion", comment: "Explosion Entity Subtype")
            
        case .bombExplosion:
            return String(localized: "Bomb Explosion", comment: "Explosion Entity Subtype")
        }
    }
}

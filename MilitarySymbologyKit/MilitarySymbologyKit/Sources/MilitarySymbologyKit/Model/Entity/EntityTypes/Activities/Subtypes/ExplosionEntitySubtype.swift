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
            String(localized: "None", comment: "Explosion Entity Subtype")
            
        case .grenadeExplosion:
            String(localized: "Grenade Explosion", comment: "Explosion Entity Subtype")
            
        case .incendiaryExplosion:
            String(localized: "Incendiary Explosion", comment: "Explosion Entity Subtype")
            
        case .mineExplosion:
            String(localized: "Mine Explosion", comment: "Explosion Entity Subtype")
            
        case .mortarFireExplosion:
            String(localized: "Mortar Fire Explosion", comment: "Explosion Entity Subtype")
            
        case .rocketExplosion:
            String(localized: "Rocket Explosion", comment: "Explosion Entity Subtype")
            
        case .bombExplosion:
            String(localized: "Bomb Explosion", comment: "Explosion Entity Subtype")
        }
    }
}

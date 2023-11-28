//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension SeaSubsurfaceEntity {
    enum WeaponEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case torpedo = "01"
        case improvisedExplosiveDeviceIED = "02"
        case decoy = "03"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                String(localized: "None")
                
            case .torpedo:
                String(localized: "Torpedo", comment: "Weapon Entity Type")
                
            case .improvisedExplosiveDeviceIED:
                String(localized: "Improvised Explosive Device (IED)", comment: "Weapon Entity Type")
                
            case .decoy:
                String(localized: "Decoy", comment: "Weapon Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

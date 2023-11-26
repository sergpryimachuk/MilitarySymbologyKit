//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AirUnitEntity {
    enum WeaponEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case bomb = "01"
        case decoy = "02"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                String(localized: "None")
                
            case .bomb:
                String(localized: "Bomb", comment: "Weapon Entity Type")
                
            case .decoy:
                String(localized: "Decoy", comment: "Weapon Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

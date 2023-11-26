//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum InfantryEntitySubtype: String, CaseIterable, EntitySubtype {
    case amphibious = "01"
    case armoredMechanizedTracked = "02"
    case mainGunSystem = "03"
    case motorized = "04"
    case infantryFightingVehicle = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .amphibious:
            return String(localized: "Amphibious", comment: "Infantry Entity Subtype")
            
        case .armoredMechanizedTracked:
            return String(localized: "Armored/Mechanized/Tracked", comment: "Infantry Entity Subtype")
            
        case .mainGunSystem:
            return String(localized: "Main Gun System", comment: "Infantry Entity Subtype")
            
        case .motorized:
            return String(localized: "Motorized", comment: "Infantry Entity Subtype")
            
        case .infantryFightingVehicle:
            return String(localized: "Infantry Fighting Vehicle", comment: "Infantry Entity Subtype")
        }
    }
}

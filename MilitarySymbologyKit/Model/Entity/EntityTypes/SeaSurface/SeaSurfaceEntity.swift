//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

enum SeaSurfaceEntity: String, CaseIterable, Entity {
    case military = "11"
    case militaryCombatant = "12"
    case militaryNoncombatant = "13"
    case civilian = "14"
    case ownShip = "15"
    case fusedTrack = "16"
    case manualTrack = "17"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .military:
            return String(localized: "Military", comment: "Sea Surface Entity")
            
        case .militaryCombatant:
            return String(localized: "Military Combatant", comment: "Sea Surface Entity")
            
        case .militaryNoncombatant:
            return String(localized: "Military Noncombatant", comment: "Sea Surface Entity")
            
        case .civilian:
            return String(localized: "Civilian", comment: "Sea Surface Entity")
            
        case .ownShip:
            return String(localized: "Own Ship", comment: "Sea Surface Entity")
            
        case .fusedTrack:
            return String(localized: "Fused Track", comment: "Sea Surface Entity")
            
        case .manualTrack:
            return String(localized: "Manual Track", comment: "Sea Surface Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .military:
            [.none]
        case .militaryCombatant:
            MilitaryCombatantEntityType.allCases.map { AnyEntityType($0) }
        case .militaryNoncombatant:
            MilitaryNoncombatantEntityType.allCases.map { AnyEntityType($0) }
        case .civilian:
            CivilianEntityType.allCases.map { AnyEntityType($0) }
        case .ownShip:
            [.none]
        case .fusedTrack:
            [.none]
        case .manualTrack:
            [.none]
        }
    }
}

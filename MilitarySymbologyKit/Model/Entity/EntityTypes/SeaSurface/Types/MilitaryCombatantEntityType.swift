//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension SeaSurfaceEntity {
    enum MilitaryCombatantEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case carrier = "01"
        case surfaceCombatantLine = "02"
        case amphibiousWarfareShip = "03"
        case mineWarfareShip = "04"
        case patrolBoat = "05"
        case decoy = "06"
        case unmannedSurfaceWaterVehicleUSV = "07"
        case speedboat = "08"
        case jetSki = "09"
        case navyTaskOrganization = "10"
        case seaBasedXBandSBXRadar = "11"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                String(localized: "None")
                
            case .carrier:
                String(localized: "Carrier", comment: "Military Combatant Entity Type")
                
            case .surfaceCombatantLine:
                String(localized: "Surface Combatant, Line", comment: "Military Combatant Entity Type")
                
            case .amphibiousWarfareShip:
                String(localized: "Amphibious Warfare Ship", comment: "Military Combatant Entity Type")
                
            case .mineWarfareShip:
                String(localized: "Mine Warfare Ship", comment: "Military Combatant Entity Type")
                
            case .patrolBoat:
                String(localized: "Patrol Boat", comment: "Military Combatant Entity Type")
                
            case .decoy:
                String(localized: "Decoy", comment: "Military Combatant Entity Type")
                
            case .unmannedSurfaceWaterVehicleUSV:
                String(localized: "Unmanned Surface Water Vehicle (USV)", comment: "Military Combatant Entity Type")
                
            case .speedboat:
                String(localized: "Speedboat", comment: "Military Combatant Entity Type")
                
            case .jetSki:
                String(localized: "Jet Ski", comment: "Military Combatant Entity Type")
                
            case .navyTaskOrganization:
                String(localized: "Navy Task Organization", comment: "Military Combatant Entity Type")
                
            case .seaBasedXBandSBXRadar:
                String(localized: "Sea-Based X-Band (SBX) Radar", comment: "Military Combatant Entity Type")
            }
        }
    }
}

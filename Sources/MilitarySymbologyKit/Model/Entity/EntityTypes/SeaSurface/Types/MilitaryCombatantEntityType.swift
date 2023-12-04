//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension SeaSurfaceEntity {
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

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .carrier:
                String(localized: "Carrier", bundle: .module, comment: "Military Combatant Entity Type")

            case .surfaceCombatantLine:
                String(localized: "Surface Combatant, Line", bundle: .module, comment: "Military Combatant Entity Type")

            case .amphibiousWarfareShip:
                String(localized: "Amphibious Warfare Ship", bundle: .module, comment: "Military Combatant Entity Type")

            case .mineWarfareShip:
                String(localized: "Mine Warfare Ship", bundle: .module, comment: "Military Combatant Entity Type")

            case .patrolBoat:
                String(localized: "Patrol Boat", bundle: .module, comment: "Military Combatant Entity Type")

            case .decoy:
                String(localized: "Decoy", bundle: .module, comment: "Military Combatant Entity Type")

            case .unmannedSurfaceWaterVehicleUSV:
                String(localized: "Unmanned Surface Water Vehicle (USV)", bundle: .module, comment: "Military Combatant Entity Type")

            case .speedboat:
                String(localized: "Speedboat", bundle: .module, comment: "Military Combatant Entity Type")

            case .jetSki:
                String(localized: "Jet Ski", bundle: .module, comment: "Military Combatant Entity Type")

            case .navyTaskOrganization:
                String(localized: "Navy Task Organization", bundle: .module, comment: "Military Combatant Entity Type")

            case .seaBasedXBandSBXRadar:
                String(localized: "Sea-Based X-Band (SBX) Radar", bundle: .module, comment: "Military Combatant Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .surfaceCombatantLine:
                SurfaceCombatantLineEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .amphibiousWarfareShip:
                AmphibiousWarfareShipEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .mineWarfareShip:
                MineWarfareShipEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .patrolBoat:
                PatrolBoatEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .speedboat:
                SpeedboatEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .navyTaskOrganization:
                NavyTaskOrganizationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                [.none]
            }
        }
    }
}

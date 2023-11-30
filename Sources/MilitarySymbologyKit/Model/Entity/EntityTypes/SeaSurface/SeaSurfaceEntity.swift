//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public enum SeaSurfaceEntity: String, CaseIterable, Entity {
    case military = "11"
    case militaryCombatant = "12"
    case militaryNoncombatant = "13"
    case civilian = "14"
    case ownShip = "15"
    case fusedTrack = "16"
    case manualTrack = "17"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .military:
            String(localized: "Military", bundle: .module, comment: "Sea Surface Entity")

        case .militaryCombatant:
            String(localized: "Military Combatant", bundle: .module, comment: "Sea Surface Entity")

        case .militaryNoncombatant:
            String(localized: "Military Noncombatant", bundle: .module, comment: "Sea Surface Entity")

        case .civilian:
            String(localized: "Civilian", bundle: .module, comment: "Sea Surface Entity")

        case .ownShip:
            String(localized: "Own Ship", bundle: .module, comment: "Sea Surface Entity")

        case .fusedTrack:
            String(localized: "Fused Track", bundle: .module, comment: "Sea Surface Entity")

        case .manualTrack:
            String(localized: "Manual Track", bundle: .module, comment: "Sea Surface Entity")
        }
    }

    public var types: [AnyEntityType] {
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

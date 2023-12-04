//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public enum SeaSubsurfaceEntity: String, CaseIterable, Entity {
    case military = "11"
    case civilian = "12"
    case weapon = "13"
    case echoTrackerClassifier = "14"
    case fusedTrack = "15"
    case manualTrack = "16"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .military:
            String(localized: "Military", bundle: .module, comment: "Sea Subsurface Entity")

        case .civilian:
            String(localized: "Civilian", bundle: .module, comment: "Sea Subsurface Entity")

        case .weapon:
            String(localized: "Weapon", bundle: .module, comment: "Sea Subsurface Entity")

        case .echoTrackerClassifier:
            String(localized: "Echo Tracker Classifier (ETC) / Possible Contact (POSCON)", bundle: .module, comment: "Sea Subsurface Entity")

        case .fusedTrack:
            String(localized: "Fused Track", bundle: .module, comment: "Sea Subsurface Entity")

        case .manualTrack:
            String(localized: "Manual Track", bundle: .module, comment: "Sea Subsurface Entity")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .military:
            MilitaryEntityType.allCases.map { AnyEntityType($0) }
        case .civilian:
            CivilianEntityType.allCases.map { AnyEntityType($0) }
        case .weapon:
            WeaponEntityType.allCases.map { AnyEntityType($0) }
        case .echoTrackerClassifier:
            [.none]
        case .fusedTrack:
            [.none]
        case .manualTrack:
            [.none]
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 15.11.2023.
//

import Foundation

enum AirUnitEntity: String, CaseIterable, Identifiable, Entity {
    case military = "11"
    case civilian = "12"
    case weapon = "13"
    case manualTrack = "14"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .military:
            String(localized: "Military", comment: "Air Unit Entity")

        case .civilian:
            String(localized: "Civilian", comment: "Air Unit Entity")

        case .weapon:
            String(localized: "Weapon", comment: "Air Unit Entity")

        case .manualTrack:
            String(localized: "Manual Track", comment: "Air Unit Entity")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .military:
            MilitaryEntityType.allCases.map { AnyEntityType($0) }
        case .civilian:
            CivilianEntityType.allCases.map { AnyEntityType($0) }
        case .weapon:
            WeaponEntityType.allCases.map { AnyEntityType($0) }
        case .manualTrack:
            [.none]
        }
    }
}

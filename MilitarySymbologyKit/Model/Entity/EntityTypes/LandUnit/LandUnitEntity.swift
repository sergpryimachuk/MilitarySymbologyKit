//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum LandUnitEntity: String, CaseIterable, Identifiable, Entity {
    case commandAndControl = "11"
    case movementAndManeuver = "12"
    case fires = "13"
    case protection = "14"
    case intelligence = "15"
    case sustainment = "16"
    case naval = "17"
    case namedHeadquarters = "18"
    case emergencyOperation = "19"
    case lawEnforcement = "20"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .commandAndControl:
            String(localized: "Command and Control", comment: "Land Unit Entity")

        case .movementAndManeuver:
            String(localized: "Movement and Maneuver", comment: "Land Unit Entity")

        case .fires:
            String(localized: "Fires", comment: "Land Unit Entity")

        case .protection:
            String(localized: "Protection", comment: "Land Unit Entity")

        case .intelligence:
            String(localized: "Intelligence", comment: "Land Unit Entity")

        case .sustainment:
            String(localized: "Sustainment", comment: "Land Unit Entity")

        case .naval:
            String(localized: "Naval", comment: "Land Unit Entity")

        case .namedHeadquarters:
            String(localized: "Named Headquarters", comment: "Land Unit Entity")

        case .emergencyOperation:
            String(localized: "Emergency Operation", comment: "Land Unit Entity")

        case .lawEnforcement:
            String(localized: "Law Enforcement", comment: "Land Unit Entity")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .commandAndControl:
            CommandAndControlEntityType.allCases.map { AnyEntityType($0) }
        case .movementAndManeuver:
            MovementAndManeuverEntityType.allCases.map { AnyEntityType($0) }
        case .fires:
            FiresEntityType.allCases.map { AnyEntityType($0) }
        case .protection:
            ProtectionEntityType.allCases.map { AnyEntityType($0) }
        case .intelligence:
            IntelligenceEntityType.allCases.map { AnyEntityType($0) }
        case .sustainment:
            SustainmentEntityType.allCases.map { AnyEntityType($0) }
        case .naval:
            [AnyEntityType(id: "01", name: String(localized: "Naval", comment: "Naval Entity Type"), 
                           subtypes: AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) } )]
        case .namedHeadquarters:
            NamedHeadquartersEntityType.allCases.map { AnyEntityType($0) }
        case .emergencyOperation:
            [.none]
        case .lawEnforcement:
            LawEnforcementEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

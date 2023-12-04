//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum LandUnitEntity: String, CaseIterable, Identifiable, Entity {
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

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .commandAndControl:
            String(localized: "Command and Control", bundle: .module, comment: "Land Unit Entity")

        case .movementAndManeuver:
            String(localized: "Movement and Maneuver", bundle: .module, comment: "Land Unit Entity")

        case .fires:
            String(localized: "Fires", bundle: .module, comment: "Land Unit Entity")

        case .protection:
            String(localized: "Protection", bundle: .module, comment: "Land Unit Entity")

        case .intelligence:
            String(localized: "Intelligence", bundle: .module, comment: "Land Unit Entity")

        case .sustainment:
            String(localized: "Sustainment", bundle: .module, comment: "Land Unit Entity")

        case .naval:
            String(localized: "Naval", bundle: .module, comment: "Land Unit Entity")

        case .namedHeadquarters:
            String(localized: "Named Headquarters", bundle: .module, comment: "Land Unit Entity")

        case .emergencyOperation:
            String(localized: "Emergency Operation", bundle: .module, comment: "Land Unit Entity")

        case .lawEnforcement:
            String(localized: "Law Enforcement", bundle: .module, comment: "Land Unit Entity")
        }
    }

    public var types: [AnyEntityType] {
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
            [AnyEntityType(id: "01", name: String(localized: "Naval", bundle: .module, comment: "Naval Entity Type"),
                           subtypes: AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) })]
        case .namedHeadquarters:
            NamedHeadquartersEntityType.allCases.map { AnyEntityType($0) }
        case .emergencyOperation:
            [.none]
        case .lawEnforcement:
            LawEnforcementEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

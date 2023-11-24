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
            return String(localized: "Command and Control", comment: "Land Unit Entity")
            
        case .movementAndManeuver:
            return String(localized: "Movement and Maneuver", comment: "Land Unit Entity")
            
        case .fires:
            return String(localized: "Fires", comment: "Land Unit Entity")
            
        case .protection:
            return String(localized: "Protection", comment: "Land Unit Entity")
            
        case .intelligence:
            return String(localized: "Intelligence", comment: "Land Unit Entity")
            
        case .sustainment:
            return String(localized: "Sustainment", comment: "Land Unit Entity")
            
        case .naval:
            return String(localized: "Naval", comment: "Land Unit Entity")
            
        case .namedHeadquarters:
            return String(localized: "Named Headquarters", comment: "Land Unit Entity")
            
        case .emergencyOperation:
            return String(localized: "Emergency Operation", comment: "Land Unit Entity")
            
        case .lawEnforcement:
            return String(localized: "Law Enforcement", comment: "Land Unit Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .commandAndControl:
            CommandAndControlEntityType.allCases.map { AnyEntityType($0) }
        case .movementAndManeuver:
            MovementAndManeuverEntityType.allCases.map { AnyEntityType($0)}
        case .fires:
            FiresEntityType.allCases.map { AnyEntityType($0) }
        case .protection:
            ProtectionEntityType.allCases.map { AnyEntityType($0) }
        case .intelligence:
            IntelligenceEntityType.allCases.map { AnyEntityType($0) }
        case .sustainment:
            SustainmentEntityType.allCases.map { AnyEntityType($0) }
        case .naval:
            [.empty]
        case .namedHeadquarters:
            NamedHeadquartersEntityType.allCases.map { AnyEntityType($0) }
        case .emergencyOperation:
            EmergencyOperationEntityType.allCases.map { AnyEntityType($0) }
        case .lawEnforcement:
            LawEnforcementEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

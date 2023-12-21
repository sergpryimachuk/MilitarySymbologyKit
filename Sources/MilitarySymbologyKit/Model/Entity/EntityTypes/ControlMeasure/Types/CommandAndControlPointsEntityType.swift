//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum CommandAndControlPointsEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case actionPoint = "01"
    case amnestyPoint = "02"
    case checkpoint = "03"
    case centerOfMainEffort = "04"
    case contactPoint = "05"
    case coordinatingPoint = "06"
    case decisionPoint = "07"
    case distressCall = "08"
    case entryControlPoint = "09"
    case flyToPoint = "10"
    case linkupPoint = "11"
    case passagePoint = "12"
    case pointOfInterest = "13"
    case rallyPoint = "14"
    case releasePoint = "15"
    case startPoint = "16"
    case specialPoint = "17"
    case waypoint = "18"
    case airfield = "19"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)

        case .actionPoint:
            return String(localized: "Action Point (General)", bundle: .module, comment: "Command and Control Points Entity Type")

        case .amnestyPoint:
            return String(localized: "Amnesty Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .checkpoint:
            return String(localized: "Checkpoint", bundle: .module, comment: "Command and Control Points Entity Type")

        case .centerOfMainEffort:
            return String(localized: "Center of Main Effort", bundle: .module, comment: "Command and Control Points Entity Type")

        case .contactPoint:
            return String(localized: "Contact Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .coordinatingPoint:
            return String(localized: "Coordinating Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .decisionPoint:
            return String(localized: "Decision Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .distressCall:
            return String(localized: "Distress Call", bundle: .module, comment: "Command and Control Points Entity Type")

        case .entryControlPoint:
            return String(localized: "Entry Control Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .flyToPoint:
            return String(localized: "Fly-To-Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .linkupPoint:
            return String(localized: "Linkup Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .passagePoint:
            return String(localized: "Passage Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .pointOfInterest:
            return String(localized: "Point of Interest", bundle: .module, comment: "Command and Control Points Entity Type")

        case .rallyPoint:
            return String(localized: "Rally Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .releasePoint:
            return String(localized: "Release Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .startPoint:
            return String(localized: "Start Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .specialPoint:
            return String(localized: "Special Point", bundle: .module, comment: "Command and Control Points Entity Type")

        case .waypoint:
            return String(localized: "Waypoint", bundle: .module, comment: "Command and Control Points Entity Type")

        case .airfield:
            return String(localized: "Airfield", bundle: .module, comment: "Command and Control Points Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .flyToPoint:
            FlyToPointEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .pointOfInterest:
            PointOfInterestEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}

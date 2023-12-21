//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//  

import Foundation

public enum ControlMeasureEntity: String, CaseIterable, Entity {
//    case commandAndControlLines = "11"
//    case commandAndControlAreas = "12"
    case commandAndControlPoints = "13"
//    case maneuverLines = "14"
//    case maneuverAreas = "15"
    case maneuverPoints = "16"
//    case airspaceControlAreas = "17"
    case airspaceControlPoints = "18"
//    case airspaceControlLines = "19"
//    case maritimeControlAreas = "20"
    case maritimeControlPoints = "21"
//    case maritimeControlLines = "22"
//    case deception = "23"
//    case firesAreas = "24"
    case firesPoints = "25"
//    case fireLines = "26"
//    case protectionAreas = "27"
    case protectionPoints = "28"
//    case protectionLines = "29"
//    case intelligenceLines = "30"
//    case sustainmentAreas = "31"
    case sustainmentPoints = "32"
//    case sustainmentLines = "33"
//    case missionTasks = "34"

    public var id: String { rawValue }

    public var name: String {
        switch self {
//        case .commandAndControlLines:
//            return String(localized: "Command and Control Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .commandAndControlAreas:
//            return String(localized: "Command and Control Areas", bundle: .module, comment: "ControlMeasure Entity")

        case .commandAndControlPoints:
            return String(localized: "Command and Control Points", bundle: .module, comment: "ControlMeasure Entity")

//        case .maneuverLines:
//            return String(localized: "Maneuver Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .maneuverAreas:
//            return String(localized: "Maneuver Areas", bundle: .module, comment: "ControlMeasure Entity")

        case .maneuverPoints:
            return String(localized: "Maneuver Points", bundle: .module, comment: "ControlMeasure Entity")

//        case .airspaceControlAreas:
//            return String(localized: "Airspace Control (Corridors) Areas", bundle: .module, comment: "ControlMeasure Entity")

        case .airspaceControlPoints:
            return String(localized: "Airspace Control Points", bundle: .module, comment: "ControlMeasure Entity")

//        case .airspaceControlLines:
//            return String(localized: "Airspace Control Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .maritimeControlAreas:
//            return String(localized: "Maritime Control Areas", bundle: .module, comment: "ControlMeasure Entity")
//
        case .maritimeControlPoints:
            return String(localized: "Maritime Control Points", bundle: .module, comment: "ControlMeasure Entity")

//        case .maritimeControlLines:
//            return String(localized: "Maritime Control Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .deception:
//            return String(localized: "Deception", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .firesAreas:
//            return String(localized: "Fires Areas", bundle: .module, comment: "ControlMeasure Entity")
//
        case .firesPoints:
            return String(localized: "Fires Points", bundle: .module, comment: "ControlMeasure Entity")

//        case .fireLines:
//            return String(localized: "Fire Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .protectionAreas:
//            return String(localized: "Protection Areas", bundle: .module, comment: "ControlMeasure Entity")
//
        case .protectionPoints:
            return String(localized: "Protection Points", bundle: .module, comment: "ControlMeasure Entity")

//        case .protectionLines:
//            return String(localized: "Protection Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .intelligenceLines:
//            return String(localized: "Intelligence Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .sustainmentAreas:
//            return String(localized: "Sustainment Areas", bundle: .module, comment: "ControlMeasure Entity")
//
        case .sustainmentPoints:
            return String(localized: "Sustainment Points", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .sustainmentLines:
//            return String(localized: "Sustainment Lines", bundle: .module, comment: "ControlMeasure Entity")
//
//        case .missionTasks:
//            return String(localized: "Mission Tasks", bundle: .module, comment: "ControlMeasure Entity")
        }
            
    }
    
    public var types: [AnyEntityType] {
        switch self {
        case .commandAndControlPoints:
            CommandAndControlPointsEntityType.allCases.map { AnyEntityType($0) }
        case .maneuverPoints:
            ManeuverPointsEntityType.allCases.map { AnyEntityType($0) }
        case .airspaceControlPoints:
            AirspaceControlPointsEntityPoints.allCases.map { AnyEntityType($0) }
        case .maritimeControlPoints:
            MaritimeControlPointsEntityType.allCases.map { AnyEntityType($0) }
        case .firesPoints:
            FiresPointsEntityType.allCases.map { AnyEntityType($0) }
        case .protectionPoints:
            ProtectionPointsEntityType.allCases.map { AnyEntityType($0) }
        case .sustainmentPoints:
            SustainmentPointsEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

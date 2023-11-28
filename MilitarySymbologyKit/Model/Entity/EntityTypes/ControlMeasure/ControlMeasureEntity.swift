//
//  ControlMeasureEntity.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ControlMeasureEntity: String, CaseIterable, Entity {
    case commandAndControlLines = "11"
    case commandAndControlAreas = "12"
    case commandAndControlPoints = "13"
    case maneuverLines = "14"
    case maneuverAreas = "15"
    case maneuverPoints = "16"
    case airspaceControlCorridorsAreas = "17"
    case airspaceControlPoints = "18"
    case airspaceControlLines = "19"
    case maritimeControlAreas = "20"
    case maritimeControlPoints = "21"
    case maritimeControlLines = "22"
    case deception = "23"
    case firesAreas = "24"
    case firesPoints = "25"
    case fireLines = "26"
    case protectionAreas = "27"
    case protectionPoints = "28"
    case protectionLines = "29"
    case intelligenceLines = "30"
    case sustainmentAreas = "31"
    case sustainmentPoints = "32"
    case sustainmentLines = "33"
    case missionTasks = "34"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .commandAndControlLines:
            String(localized: "Command and Control Lines", comment: "Control Measure Entity")

        case .commandAndControlAreas:
            String(localized: "Command and Control Areas", comment: "Control Measure Entity")

        case .commandAndControlPoints:
            String(localized: "Command and Control Points", comment: "Control Measure Entity")

        case .maneuverLines:
            String(localized: "Maneuver Lines", comment: "Control Measure Entity")

        case .maneuverAreas:
            String(localized: "Maneuver Areas", comment: "Control Measure Entity")

        case .maneuverPoints:
            String(localized: "Maneuver Points", comment: "Control Measure Entity")

        case .airspaceControlCorridorsAreas:
            String(localized: "Airspace Control (Corridors) Areas", comment: "Control Measure Entity")

        case .airspaceControlPoints:
            String(localized: "Airspace Control Points", comment: "Control Measure Entity")

        case .airspaceControlLines:
            String(localized: "Airspace Control Lines", comment: "Control Measure Entity")

        case .maritimeControlAreas:
            String(localized: "Maritime Control Areas", comment: "Control Measure Entity")

        case .maritimeControlPoints:
            String(localized: "Maritime Control Points", comment: "Control Measure Entity")

        case .maritimeControlLines:
            String(localized: "Maritime Control Lines", comment: "Control Measure Entity")

        case .deception:
            String(localized: "Deception", comment: "Control Measure Entity")

        case .firesAreas:
            String(localized: "Fires Areas", comment: "Control Measure Entity")

        case .firesPoints:
            String(localized: "Fires Points", comment: "Control Measure Entity")

        case .fireLines:
            String(localized: "Fire Lines", comment: "Control Measure Entity")

        case .protectionAreas:
            String(localized: "Protection Areas", comment: "Control Measure Entity")

        case .protectionPoints:
            String(localized: "Protection Points", comment: "Control Measure Entity")

        case .protectionLines:
            String(localized: "Protection Lines", comment: "Control Measure Entity")

        case .intelligenceLines:
            String(localized: "Intelligence Lines", comment: "Control Measure Entity")

        case .sustainmentAreas:
            String(localized: "Sustainment Areas", comment: "Control Measure Entity")

        case .sustainmentPoints:
            String(localized: "Sustainment Points", comment: "Control Measure Entity")

        case .sustainmentLines:
            String(localized: "Sustainment Lines", comment: "Control Measure Entity")

        case .missionTasks:
            String(localized: "Mission Tasks", comment: "Control Measure Entity")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .commandAndControlLines:
            CommandAndControlLinesEntityType.allCases.map { AnyEntityType($0) }
        case .commandAndControlAreas:
            CommandAndControlAreasEntityType.allCases.map { AnyEntityType($0) }
        case .commandAndControlPoints:
            CommandAndControlPointsEntityType.allCases.map { AnyEntityType($0) }
        case .maneuverLines:
            ManeuverLinesEntityType.allCases.map { AnyEntityType($0) }
        case .maneuverAreas:
            ManeuverAreasEntityType.allCases.map { AnyEntityType($0) }
        case .maneuverPoints:
            ManeuverPointsEntityType.allCases.map { AnyEntityType($0) }
        case .airspaceControlCorridorsAreas:
            AirspaceControlCorridorsAreasEntityType.allCases.map { AnyEntityType($0) }
        case .airspaceControlPoints:
            AirspaceControlPointsEntityType.allCases.map { AnyEntityType($0) }
        case .airspaceControlLines:
            AirspaceControlLinesEntityType.allCases.map { AnyEntityType($0) }
        case .maritimeControlAreas:
            MaritimeControlAreasEntityType.allCases.map { AnyEntityType($0) }
        case .maritimeControlPoints:
            MaritimeControlPointsEntityType.allCases.map { AnyEntityType($0) }
        case .maritimeControlLines:
            MaritimeControlLinesEntityType.allCases.map { AnyEntityType($0) }
        case .deception:
            DeceptionEntityType.allCases.map { AnyEntityType($0) }
        case .firesAreas:
            FiresAreasEntityType.allCases.map { AnyEntityType($0) }
        case .firesPoints:
            FiresPointsEntityType.allCases.map { AnyEntityType($0) }
        case .fireLines:
            FireLinesEntityType.allCases.map { AnyEntityType($0) }
        case .protectionAreas:
            ProtectionAreasEntityType.allCases.map { AnyEntityType($0) }
        case .protectionPoints:
            ProtectionPointsEntityType.allCases.map { AnyEntityType($0) }
        case .protectionLines:
            ProtectionLinesEntityType.allCases.map { AnyEntityType($0) }
        case .intelligenceLines:
            IntelligenceLinesEntityType.allCases.map { AnyEntityType($0) }
        case .sustainmentAreas:
            SustainmentAreasEntityType.allCases.map { AnyEntityType($0) }
        case .sustainmentPoints:
            SustainmentPointsEntityType.allCases.map { AnyEntityType($0) }
        case .sustainmentLines:
            SustainmentLinesEntityType.allCases.map { AnyEntityType($0) }
        case .missionTasks:
            MissionTasksEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

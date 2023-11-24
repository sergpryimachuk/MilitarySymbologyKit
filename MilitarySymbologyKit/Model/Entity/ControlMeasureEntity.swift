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
            return String(localized: "Command and Control Lines", comment: "Control Measure Entity")
            
        case .commandAndControlAreas:
            return String(localized: "Command and Control Areas", comment: "Control Measure Entity")
            
        case .commandAndControlPoints:
            return String(localized: "Command and Control Points", comment: "Control Measure Entity")
            
        case .maneuverLines:
            return String(localized: "Maneuver Lines", comment: "Control Measure Entity")
            
        case .maneuverAreas:
            return String(localized: "Maneuver Areas", comment: "Control Measure Entity")
            
        case .maneuverPoints:
            return String(localized: "Maneuver Points", comment: "Control Measure Entity")
            
        case .airspaceControlCorridorsAreas:
            return String(localized: "Airspace Control (Corridors) Areas", comment: "Control Measure Entity")
            
        case .airspaceControlPoints:
            return String(localized: "Airspace Control Points", comment: "Control Measure Entity")
            
        case .airspaceControlLines:
            return String(localized: "Airspace Control Lines", comment: "Control Measure Entity")
            
        case .maritimeControlAreas:
            return String(localized: "Maritime Control Areas", comment: "Control Measure Entity")
            
        case .maritimeControlPoints:
            return String(localized: "Maritime Control Points", comment: "Control Measure Entity")
            
        case .maritimeControlLines:
            return String(localized: "Maritime Control Lines", comment: "Control Measure Entity")
            
        case .deception:
            return String(localized: "Deception", comment: "Control Measure Entity")
            
        case .firesAreas:
            return String(localized: "Fires Areas", comment: "Control Measure Entity")
            
        case .firesPoints:
            return String(localized: "Fires Points", comment: "Control Measure Entity")
            
        case .fireLines:
            return String(localized: "Fire Lines", comment: "Control Measure Entity")
            
        case .protectionAreas:
            return String(localized: "Protection Areas", comment: "Control Measure Entity")
            
        case .protectionPoints:
            return String(localized: "Protection Points", comment: "Control Measure Entity")
            
        case .protectionLines:
            return String(localized: "Protection Lines", comment: "Control Measure Entity")
            
        case .intelligenceLines:
            return String(localized: "Intelligence Lines", comment: "Control Measure Entity")
            
        case .sustainmentAreas:
            return String(localized: "Sustainment Areas", comment: "Control Measure Entity")
            
        case .sustainmentPoints:
            return String(localized: "Sustainment Points", comment: "Control Measure Entity")
            
        case .sustainmentLines:
            return String(localized: "Sustainment Lines", comment: "Control Measure Entity")
            
        case .missionTasks:
            return String(localized: "Mission Tasks", comment: "Control Measure Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .commandAndControlLines:
            []
        case .commandAndControlAreas:
            []
        case .commandAndControlPoints:
            []
        case .maneuverLines:
            []
        case .maneuverAreas:
            []
        case .maneuverPoints:
            []
        case .airspaceControlCorridorsAreas:
            []
        case .airspaceControlPoints:
            []
        case .airspaceControlLines:
            []
        case .maritimeControlAreas:
            []
        case .maritimeControlPoints:
            []
        case .maritimeControlLines:
            []
        case .deception:
            []
        case .firesAreas:
            []
        case .firesPoints:
            []
        case .fireLines:
            []
        case .protectionAreas:
            []
        case .protectionPoints:
            []
        case .protectionLines:
            []
        case .intelligenceLines:
            []
        case .sustainmentAreas:
            []
        case .sustainmentPoints:
            []
        case .sustainmentLines:
            []
        case .missionTasks:
            []
        }
    }
}

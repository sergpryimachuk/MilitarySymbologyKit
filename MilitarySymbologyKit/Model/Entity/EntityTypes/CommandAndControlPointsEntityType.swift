//
//  CommandAndControlPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum CommandAndControlPointsEntityType: String, CaseIterable, Identifiable {
    case actionPointGeneral = "01"
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
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .actionPointGeneral:
            return String(localized: "Action Point (General)", comment: "Command and Control Points Entity Type")
            
        case .amnestyPoint:
            return String(localized: "Amnesty Point", comment: "Command and Control Points Entity Type")
            
        case .checkpoint:
            return String(localized: "Checkpoint", comment: "Command and Control Points Entity Type")
            
        case .centerOfMainEffort:
            return String(localized: "Center of Main Effort", comment: "Command and Control Points Entity Type")
            
        case .contactPoint:
            return String(localized: "Contact Point", comment: "Command and Control Points Entity Type")
            
        case .coordinatingPoint:
            return String(localized: "Coordinating Point", comment: "Command and Control Points Entity Type")
            
        case .decisionPoint:
            return String(localized: "Decision Point", comment: "Command and Control Points Entity Type")
            
        case .distressCall:
            return String(localized: "Distress Call", comment: "Command and Control Points Entity Type")
            
        case .entryControlPoint:
            return String(localized: "Entry Control Point", comment: "Command and Control Points Entity Type")
            
        case .flyToPoint:
            return String(localized: "Fly-To-Point", comment: "Command and Control Points Entity Type")
            
        case .linkupPoint:
            return String(localized: "Linkup Point", comment: "Command and Control Points Entity Type")
            
        case .passagePoint:
            return String(localized: "Passage Point", comment: "Command and Control Points Entity Type")
            
        case .pointOfInterest:
            return String(localized: "Point of Interest", comment: "Command and Control Points Entity Type")
            
        case .rallyPoint:
            return String(localized: "Rally Point", comment: "Command and Control Points Entity Type")
            
        case .releasePoint:
            return String(localized: "Release Point", comment: "Command and Control Points Entity Type")
            
        case .startPoint:
            return String(localized: "Start Point", comment: "Command and Control Points Entity Type")
            
        case .specialPoint:
            return String(localized: "Special Point", comment: "Command and Control Points Entity Type")
            
        case .waypoint:
            return String(localized: "Waypoint", comment: "Command and Control Points Entity Type")
            
        case .airfield:
            return String(localized: "Airfield", comment: "Command and Control Points Entity Type")
        }
    }
}

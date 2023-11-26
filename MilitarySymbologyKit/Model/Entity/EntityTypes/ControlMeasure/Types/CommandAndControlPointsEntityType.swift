//
//  CommandAndControlPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum CommandAndControlPointsEntityType: String, CaseIterable, EntityType {
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
            String(localized: "Action Point (General)", comment: "Command and Control Points Entity Type")
            
        case .amnestyPoint:
            String(localized: "Amnesty Point", comment: "Command and Control Points Entity Type")
            
        case .checkpoint:
            String(localized: "Checkpoint", comment: "Command and Control Points Entity Type")
            
        case .centerOfMainEffort:
            String(localized: "Center of Main Effort", comment: "Command and Control Points Entity Type")
            
        case .contactPoint:
            String(localized: "Contact Point", comment: "Command and Control Points Entity Type")
            
        case .coordinatingPoint:
            String(localized: "Coordinating Point", comment: "Command and Control Points Entity Type")
            
        case .decisionPoint:
            String(localized: "Decision Point", comment: "Command and Control Points Entity Type")
            
        case .distressCall:
            String(localized: "Distress Call", comment: "Command and Control Points Entity Type")
            
        case .entryControlPoint:
            String(localized: "Entry Control Point", comment: "Command and Control Points Entity Type")
            
        case .flyToPoint:
            String(localized: "Fly-To-Point", comment: "Command and Control Points Entity Type")
            
        case .linkupPoint:
            String(localized: "Linkup Point", comment: "Command and Control Points Entity Type")
            
        case .passagePoint:
            String(localized: "Passage Point", comment: "Command and Control Points Entity Type")
            
        case .pointOfInterest:
            String(localized: "Point of Interest", comment: "Command and Control Points Entity Type")
            
        case .rallyPoint:
            String(localized: "Rally Point", comment: "Command and Control Points Entity Type")
            
        case .releasePoint:
            String(localized: "Release Point", comment: "Command and Control Points Entity Type")
            
        case .startPoint:
            String(localized: "Start Point", comment: "Command and Control Points Entity Type")
            
        case .specialPoint:
            String(localized: "Special Point", comment: "Command and Control Points Entity Type")
            
        case .waypoint:
            String(localized: "Waypoint", comment: "Command and Control Points Entity Type")
            
        case .airfield:
            String(localized: "Airfield", comment: "Command and Control Points Entity Type")
        }
    }
}

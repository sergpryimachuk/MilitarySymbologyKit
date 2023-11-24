//
//  ManeuverLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ManeuverLinesEntityType: String, CaseIterable, EntityType {
    case forwardLineOfTroops = "01"
    case lineOfContact = "02"
    case phaseLine = "03"
    case forwardEdgeOfTheBattleArea = "04"
    case principleDirectionOfFire = "05"
    case directionOfAttack = "06"
    case finalCoordinationLine = "07"
    case infiltrationLane = "08"
    case limitOfAdvance = "09"
    case lineOfDeparture = "10"
    case lineOfDepartureLineOfContact = "11"
    case probableLineOfDeployment = "12"
    case airheadLine = "13"
    case bridgeheadLine = "14"
    case holdingLine = "15"
    case releaseLine = "16"
    case ambush = "17"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .forwardLineOfTroops:
            return String(localized: "Forward Line of Troops", comment: "Maneuver Lines Entity Type")
            
        case .lineOfContact:
            return String(localized: "Line of Contact", comment: "Maneuver Lines Entity Type")
            
        case .phaseLine:
            return String(localized: "Phase Line", comment: "Maneuver Lines Entity Type")
            
        case .forwardEdgeOfTheBattleArea:
            return String(localized: "Forward Edge of the Battle Area", comment: "Maneuver Lines Entity Type")
            
        case .principleDirectionOfFire:
            return String(localized: "Principle Direction of Fire", comment: "Maneuver Lines Entity Type")
            
        case .directionOfAttack:
            return String(localized: "Direction of Attack", comment: "Maneuver Lines Entity Type")
            
        case .finalCoordinationLine:
            return String(localized: "Final Coordination Line", comment: "Maneuver Lines Entity Type")
            
        case .infiltrationLane:
            return String(localized: "Infiltration Lane", comment: "Maneuver Lines Entity Type")
            
        case .limitOfAdvance:
            return String(localized: "Limit of Advance", comment: "Maneuver Lines Entity Type")
            
        case .lineOfDeparture:
            return String(localized: "Line of Departure", comment: "Maneuver Lines Entity Type")
            
        case .lineOfDepartureLineOfContact:
            return String(localized: "Line of Departure/Line of Contact", comment: "Maneuver Lines Entity Type")
            
        case .probableLineOfDeployment:
            return String(localized: "Probable Line of Deployment", comment: "Maneuver Lines Entity Type")
            
        case .airheadLine:
            return String(localized: "Airhead Line", comment: "Maneuver Lines Entity Type")
            
        case .bridgeheadLine:
            return String(localized: "Bridgehead Line", comment: "Maneuver Lines Entity Type")
            
        case .holdingLine:
            return String(localized: "Holding Line", comment: "Maneuver Lines Entity Type")
            
        case .releaseLine:
            return String(localized: "Release Line", comment: "Maneuver Lines Entity Type")
            
        case .ambush:
            return String(localized: "Ambush", comment: "Maneuver Lines Entity Type")
        }
    }
}

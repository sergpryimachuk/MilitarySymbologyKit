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
            String(localized: "Forward Line of Troops", comment: "Maneuver Lines Entity Type")

        case .lineOfContact:
            String(localized: "Line of Contact", comment: "Maneuver Lines Entity Type")

        case .phaseLine:
            String(localized: "Phase Line", comment: "Maneuver Lines Entity Type")

        case .forwardEdgeOfTheBattleArea:
            String(localized: "Forward Edge of the Battle Area", comment: "Maneuver Lines Entity Type")

        case .principleDirectionOfFire:
            String(localized: "Principle Direction of Fire", comment: "Maneuver Lines Entity Type")

        case .directionOfAttack:
            String(localized: "Direction of Attack", comment: "Maneuver Lines Entity Type")

        case .finalCoordinationLine:
            String(localized: "Final Coordination Line", comment: "Maneuver Lines Entity Type")

        case .infiltrationLane:
            String(localized: "Infiltration Lane", comment: "Maneuver Lines Entity Type")

        case .limitOfAdvance:
            String(localized: "Limit of Advance", comment: "Maneuver Lines Entity Type")

        case .lineOfDeparture:
            String(localized: "Line of Departure", comment: "Maneuver Lines Entity Type")

        case .lineOfDepartureLineOfContact:
            String(localized: "Line of Departure/Line of Contact", comment: "Maneuver Lines Entity Type")

        case .probableLineOfDeployment:
            String(localized: "Probable Line of Deployment", comment: "Maneuver Lines Entity Type")

        case .airheadLine:
            String(localized: "Airhead Line", comment: "Maneuver Lines Entity Type")

        case .bridgeheadLine:
            String(localized: "Bridgehead Line", comment: "Maneuver Lines Entity Type")

        case .holdingLine:
            String(localized: "Holding Line", comment: "Maneuver Lines Entity Type")

        case .releaseLine:
            String(localized: "Release Line", comment: "Maneuver Lines Entity Type")

        case .ambush:
            String(localized: "Ambush", comment: "Maneuver Lines Entity Type")
        }
    }
}

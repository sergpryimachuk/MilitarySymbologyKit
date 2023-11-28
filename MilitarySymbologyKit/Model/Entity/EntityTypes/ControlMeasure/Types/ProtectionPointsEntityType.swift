//
//  ProtectionPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ProtectionPointsEntityType: String, CaseIterable, EntityType {
    case abatis = "01"
    case antipersonnelMine = "02"
    case antitankMine = "03"
    case antitankMineWithAntiHandlingDevice = "04"
    case wideAreaAntitankMine = "05"
    case unspecifiedMine = "06"
    case boobyTrap = "07"
    case engineerRegulatingPoint = "08"
    case shelter = "09"
    case shelterAboveGround = "10"
    case belowGroundShelter = "11"
    case fort = "12"
    case chemicalEvent = "13"
    case biologicalEvent = "14"
    case nuclearEvent = "15"
    case nuclearFalloutProducingEvent = "16"
    case radiological = "17"
    case generalDecontaminationPoint = "18"
    case tetrahedronsDragonsTeethObstacles = "19"
    case verticalObstructions = "20"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .abatis:
            String(localized: "Abatis", comment: "Protection Points Entity Type")
        case .antipersonnelMine:
            String(localized: "Antipersonnel Mine", comment: "Protection Points Entity Type")
        case .antitankMine:
            String(localized: "Antitank Mine", comment: "Protection Points Entity Type")
        case .antitankMineWithAntiHandlingDevice:
            String(localized: "Antitank Mine with Anti-handling Device", comment: "Protection Points Entity Type")
        case .wideAreaAntitankMine:
            String(localized: "Wide Area Antitank Mine", comment: "Protection Points Entity Type")
        case .unspecifiedMine:
            String(localized: "Unspecified Mine", comment: "Protection Points Entity Type")
        case .boobyTrap:
            String(localized: "Booby Trap", comment: "Protection Points Entity Type")
        case .engineerRegulatingPoint:
            String(localized: "Engineer Regulating Point", comment: "Protection Points Entity Type")
        case .shelter:
            String(localized: "Shelter", comment: "Protection Points Entity Type")
        case .shelterAboveGround:
            String(localized: "Above Ground Shelter", comment: "Protection Points Entity Type")
        case .belowGroundShelter:
            String(localized: "Below Ground Shelter", comment: "Protection Points Entity Type")
        case .fort:
            String(localized: "Fort", comment: "Protection Points Entity Type")
        case .chemicalEvent:
            String(localized: "Chemical Event", comment: "Protection Points Entity Type")
        case .biologicalEvent:
            String(localized: "Biological Event", comment: "Protection Points Entity Type")
        case .nuclearEvent:
            String(localized: "Nuclear Event", comment: "Protection Points Entity Type")
        case .nuclearFalloutProducingEvent:
            String(localized: "Nuclear Fallout Producing Event", comment: "Protection Points Entity Type")
        case .radiological:
            String(localized: "Radiological", comment: "Protection Points Entity Type")
        case .generalDecontaminationPoint:
            String(localized: "General Decontamination Point/Site", comment: "Protection Points Entity Type")
        case .tetrahedronsDragonsTeethObstacles:
            String(localized: "Tetrahedrons, Dragons Teeth, and Other Similar Obstacles", comment: "Protection Points Entity Type")
        case .verticalObstructions:
            String(localized: "Vertical Obstructions", comment: "Protection Points Entity Type")
        }
    }
}

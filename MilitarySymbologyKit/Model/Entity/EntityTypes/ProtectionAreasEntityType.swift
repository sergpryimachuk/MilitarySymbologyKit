//
//  ProtectionAreasEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ProtectionAreasEntityType: String, CaseIterable, EntityType {
    case obstacleBelt = "01"
    case obstacleZone = "02"
    case obstacleFreeZone = "03"
    case obstacleRestrictedZone = "04"
    case obstacleEffects = "05"
    case obstacleBypass = "06"
    case minefield = "07"
    case minedArea = "08"
    case decoyMinedArea = "09"
    case unexplodedExplosiveOrdnanceArea = "10"
    case bridgeOrGap = "11"
    case roadblocksCratersBlownBridges = "12"
    case assaultCrossing = "13"
    case bridge = "14"
    case fordEasy = "15"
    case fordDifficult = "16"
    case biologicalContaminatedArea = "17"
    case chemicalContaminatedArea = "18"
    case nuclearContaminatedArea = "19"
    case radiologicalContaminatedArea = "20"
    case minimumSafeDistanceZone = "21"
    case radiationDoseRateContourLines = "22"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .obstacleBelt:
            return String(localized: "Obstacle Belt", comment: "Protection Areas Entity Type")
        case .obstacleZone:
            return String(localized: "Obstacle Zone", comment: "Protection Areas Entity Type")
        case .obstacleFreeZone:
            return String(localized: "Obstacle Free Zone", comment: "Protection Areas Entity Type")
        case .obstacleRestrictedZone:
            return String(localized: "Obstacle Restricted Zone", comment: "Protection Areas Entity Type")
        case .obstacleEffects:
            return String(localized: "Obstacle Effects", comment: "Protection Areas Entity Type")
        case .obstacleBypass:
            return String(localized: "Obstacle Bypass", comment: "Protection Areas Entity Type")
        case .minefield:
            return String(localized: "Minefield", comment: "Protection Areas Entity Type")
        case .minedArea:
            return String(localized: "Mined Area", comment: "Protection Areas Entity Type")
        case .decoyMinedArea:
            return String(localized: "Decoy Mined Area", comment: "Protection Areas Entity Type")
        case .unexplodedExplosiveOrdnanceArea:
            return String(localized: "Unexploded Explosive Ordnance (UXO) Area", comment: "Protection Areas Entity Type")
        case .bridgeOrGap:
            return String(localized: "Bridge or Gap", comment: "Protection Areas Entity Type")
        case .roadblocksCratersBlownBridges:
            return String(localized: "Roadblocks, Craters and Blown Bridges", comment: "Protection Areas Entity Type")
        case .assaultCrossing:
            return String(localized: "Assault Crossing", comment: "Protection Areas Entity Type")
        case .bridge:
            return String(localized: "Bridge", comment: "Protection Areas Entity Type")
        case .fordEasy:
            return String(localized: "Ford Easy", comment: "Protection Areas Entity Type")
        case .fordDifficult:
            return String(localized: "Ford Difficult", comment: "Protection Areas Entity Type")
        case .biologicalContaminatedArea:
            return String(localized: "Biological Contaminated Area", comment: "Protection Areas Entity Type")
        case .chemicalContaminatedArea:
            return String(localized: "Chemical Contaminated Area", comment: "Protection Areas Entity Type")
        case .nuclearContaminatedArea:
            return String(localized: "Nuclear Contaminated Area", comment: "Protection Areas Entity Type")
        case .radiologicalContaminatedArea:
            return String(localized: "Radiological Contaminated Area", comment: "Protection Areas Entity Type")
        case .minimumSafeDistanceZone:
            return String(localized: "Minimum Safe Distance Zone", comment: "Protection Areas Entity Type")
        case .radiationDoseRateContourLines:
            return String(localized: "Radiation Dose Rate Contour Lines", comment: "Protection Areas Entity Type")
        }
    }
}

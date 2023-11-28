//
//  FiresAreasEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum FiresAreasEntityType: String, CaseIterable, EntityType {
    case airspaceCoordinationArea = "01"
    case freeFireArea = "02"
    case noFireArea = "03"
    case restrictedFireArea = "04"
    case positionAreaForArtillery = "05"
    case pointTargets = "06"
    case linearTargets = "07"
    case areaTargets = "08"
    case fireSupportStation = "09"
    case fireSupportArea = "10"
    case artilleryTargetIntelligenceZone = "11"
    case callForFireArea = "12"
    case censorZone = "13"
    case criticalFriendlyZone = "14"
    case deadSpaceArea = "15"
    case sensorZone = "16"
    case targetBuildUpArea = "17"
    case targetValueArea = "18"
    case zoneOfResponsibility = "19"
    case terminallyGuidedMunitionFootprint = "20"
    case weaponSensorRangeFanCircular = "21"
    case weaponSensorRangeFanSector = "22"
    case killBox = "23"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .airspaceCoordinationArea:
            String(localized: "Airspace Coordination Area", comment: "Fires Areas Entity Type")
        case .freeFireArea:
            String(localized: "Free Fire Area", comment: "Fires Areas Entity Type")
        case .noFireArea:
            String(localized: "No Fire Area", comment: "Fires Areas Entity Type")
        case .restrictedFireArea:
            String(localized: "Restricted Fire Area", comment: "Fires Areas Entity Type")
        case .positionAreaForArtillery:
            String(localized: "Position Area For Artillery (PAA)", comment: "Fires Areas Entity Type")
        case .pointTargets:
            String(localized: "Point Targets", comment: "Fires Areas Entity Type")
        case .linearTargets:
            String(localized: "Linear Targets", comment: "Fires Areas Entity Type")
        case .areaTargets:
            String(localized: "Area Targets", comment: "Fires Areas Entity Type")
        case .fireSupportStation:
            String(localized: "Fire Support Station", comment: "Fires Areas Entity Type")
        case .fireSupportArea:
            String(localized: "Fire Support Area", comment: "Fires Areas Entity Type")
        case .artilleryTargetIntelligenceZone:
            String(localized: "Artillery Target Intelligence Zone", comment: "Fires Areas Entity Type")
        case .callForFireArea:
            String(localized: "Call for Fire Area", comment: "Fires Areas Entity Type")
        case .censorZone:
            String(localized: "Censor Zone", comment: "Fires Areas Entity Type")
        case .criticalFriendlyZone:
            String(localized: "Critical Friendly Zone", comment: "Fires Areas Entity Type")
        case .deadSpaceArea:
            String(localized: "Dead Space Area", comment: "Fires Areas Entity Type")
        case .sensorZone:
            String(localized: "Sensor Zone", comment: "Fires Areas Entity Type")
        case .targetBuildUpArea:
            String(localized: "Target Build-Up Area", comment: "Fires Areas Entity Type")
        case .targetValueArea:
            String(localized: "Target Value Area", comment: "Fires Areas Entity Type")
        case .zoneOfResponsibility:
            String(localized: "Zone of Responsibility", comment: "Fires Areas Entity Type")
        case .terminallyGuidedMunitionFootprint:
            String(localized: "Terminally Guided Munition Footprint (TGMF)", comment: "Fires Areas Entity Type")
        case .weaponSensorRangeFanCircular:
            String(localized: "Weapon/Sensor Range fan-Circular", comment: "Fires Areas Entity Type")
        case .weaponSensorRangeFanSector:
            String(localized: "Weapon/Sensor Range fan-Sector", comment: "Fires Areas Entity Type")
        case .killBox:
            String(localized: "Kill Box", comment: "Fires Areas Entity Type")
        }
    }
}

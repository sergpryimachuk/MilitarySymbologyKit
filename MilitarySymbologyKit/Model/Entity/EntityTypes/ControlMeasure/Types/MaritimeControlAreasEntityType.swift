//
//  MaritimeControlAreasEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum MaritimeControlAreasEntityType: String, CaseIterable, EntityType {
    case launchArea = "01"
    case defendedArea = "02"
    case noAttackNOTACKZone = "03"
    case shipAreaOfInterest = "04"
    case activeManeuverArea = "05"
    case cuedAcquisitionDoctrine = "06"
    case radarSearchDoctrine = "07"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .launchArea:
            String(localized: "Launch Area", comment: "Maritime Control Areas Entity Type")

        case .defendedArea:
            String(localized: "Defended Area", comment: "Maritime Control Areas Entity Type")

        case .noAttackNOTACKZone:
            String(localized: "No Attack (NOTACK) Zone", comment: "Maritime Control Areas Entity Type")

        case .shipAreaOfInterest:
            String(localized: "Ship Area of Interest", comment: "Maritime Control Areas Entity Type")

        case .activeManeuverArea:
            String(localized: "Active Maneuver Area", comment: "Maritime Control Areas Entity Type")

        case .cuedAcquisitionDoctrine:
            String(localized: "Cued Acquisition Doctrine", comment: "Maritime Control Areas Entity Type")

        case .radarSearchDoctrine:
            String(localized: "Radar Search Doctrine", comment: "Maritime Control Areas Entity Type")
        }
    }
}

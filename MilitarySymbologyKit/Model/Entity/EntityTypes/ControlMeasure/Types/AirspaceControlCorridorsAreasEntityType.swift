//
//  AirspaceControlCorridorsAreasEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum AirspaceControlCorridorsAreasEntityType: String, CaseIterable, EntityType {
    case airCorridor = "01"
    case lowLevelTransitRoute = "02"
    case minimumRiskRoute = "03"
    case safeLane = "04"
    case standardUseArmyAircraftFlightRoute = "05"
    case transitCorridor = "06"
    case unmannedAircraftUARoute = "07"
    case baseDefenseZone = "08"
    case highDensityAirspaceControlZone = "09"
    case restrictedOperationsZone = "10"
    case airToAirRestrictedOperatingZone = "11"
    case unmannedAircraftRestrictedOperatingZone = "12"
    case weaponEngagementZone = "13"
    case fighterEngagementZone = "14"
    case jointEngagementZone = "15"
    case missileEngagementZone = "16"
    case lowAltitudeMissileEngagementZone = "17"
    case highAltitudeMissileEngagementZone = "18"
    case shortRangeAirDefenseEngagementZone = "19"
    case weaponsFreeZone = "20"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .airCorridor:
            String(localized: "Air Corridor", comment: "Airspace Control Corridors/Areas Entity Type")

        case .lowLevelTransitRoute:
            String(localized: "Low Level Transit Route", comment: "Airspace Control Corridors/Areas Entity Type")

        case .minimumRiskRoute:
            String(localized: "Minimum-Risk Route", comment: "Airspace Control Corridors/Areas Entity Type")

        case .safeLane:
            String(localized: "Safe Lane", comment: "Airspace Control Corridors/Areas Entity Type")

        case .standardUseArmyAircraftFlightRoute:
            String(localized: "Standard Use Army Aircraft Flight Route", comment: "Airspace Control Corridors/Areas Entity Type")

        case .transitCorridor:
            String(localized: "Transit Corridor", comment: "Airspace Control Corridors/Areas Entity Type")

        case .unmannedAircraftUARoute:
            String(localized: "Unmanned Aircraft (UA) Route", comment: "Airspace Control Corridors/Areas Entity Type")

        case .baseDefenseZone:
            String(localized: "Base Defense Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .highDensityAirspaceControlZone:
            String(localized: "High-Density Airspace Control Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .restrictedOperationsZone:
            String(localized: "Restricted Operations Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .airToAirRestrictedOperatingZone:
            String(localized: "Air-to-Air Restricted Operating Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .unmannedAircraftRestrictedOperatingZone:
            String(localized: "Unmanned Aircraft Restricted Operating Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .weaponEngagementZone:
            String(localized: "Weapon Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .fighterEngagementZone:
            String(localized: "Fighter Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .jointEngagementZone:
            String(localized: "Joint Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .missileEngagementZone:
            String(localized: "Missile Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .lowAltitudeMissileEngagementZone:
            String(localized: "Low Altitude Missile Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .highAltitudeMissileEngagementZone:
            String(localized: "High Altitude Missile Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .shortRangeAirDefenseEngagementZone:
            String(localized: "Short Range Air Defense Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")

        case .weaponsFreeZone:
            String(localized: "Weapons Free Zone", comment: "Airspace Control Corridors/Areas Entity Type")
        }
    }
}

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
            return String(localized: "Air Corridor", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .lowLevelTransitRoute:
            return String(localized: "Low Level Transit Route", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .minimumRiskRoute:
            return String(localized: "Minimum-Risk Route", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .safeLane:
            return String(localized: "Safe Lane", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .standardUseArmyAircraftFlightRoute:
            return String(localized: "Standard Use Army Aircraft Flight Route", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .transitCorridor:
            return String(localized: "Transit Corridor", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .unmannedAircraftUARoute:
            return String(localized: "Unmanned Aircraft (UA) Route", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .baseDefenseZone:
            return String(localized: "Base Defense Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .highDensityAirspaceControlZone:
            return String(localized: "High-Density Airspace Control Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .restrictedOperationsZone:
            return String(localized: "Restricted Operations Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .airToAirRestrictedOperatingZone:
            return String(localized: "Air-to-Air Restricted Operating Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .unmannedAircraftRestrictedOperatingZone:
            return String(localized: "Unmanned Aircraft Restricted Operating Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .weaponEngagementZone:
            return String(localized: "Weapon Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .fighterEngagementZone:
            return String(localized: "Fighter Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .jointEngagementZone:
            return String(localized: "Joint Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .missileEngagementZone:
            return String(localized: "Missile Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .lowAltitudeMissileEngagementZone:
            return String(localized: "Low Altitude Missile Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .highAltitudeMissileEngagementZone:
            return String(localized: "High Altitude Missile Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .shortRangeAirDefenseEngagementZone:
            return String(localized: "Short Range Air Defense Engagement Zone", comment: "Airspace Control Corridors/Areas Entity Type")
            
        case .weaponsFreeZone:
            return String(localized: "Weapons Free Zone", comment: "Airspace Control Corridors/Areas Entity Type")
        }
    }
}

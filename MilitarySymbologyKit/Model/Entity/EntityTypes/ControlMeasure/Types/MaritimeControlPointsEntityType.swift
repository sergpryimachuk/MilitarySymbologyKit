//
//  MaritimeControlPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum MaritimeControlPointsEntityType: String, CaseIterable, EntityType {
    case planShip = "01"
    case aimPoint = "02"
    case defendedAsset = "03"
    case dropPoint = "04"
    case entryPoint = "05"
    case airDetonation = "06"
    case groundZero = "07"
    case impactPoint = "08"
    case predictedImpactPoint = "09"
    case launchedTorpedo = "10"
    case missileDetectionPoint = "11"
    case acousticCountermeasureDecoy = "12"
    case electronicCountermeasuresECMDecoy = "13"
    case briefContact = "14"
    case datumLostContact = "15"
    case btBuoyDrop = "16"
    case reportedBottomSub = "17"
    case movingHaven = "18"
    case screenCenter = "19"
    case lostContact = "20"
    case sinker = "21"
    case trialTrack = "22"
    case acousticFix = "23"
    case electromagneticFix = "24"
    case electromagneticMagneticAnomalyDetectionMAD = "25"
    case opticalFix = "26"
    case formation = "27"
    case harbor = "28"
    case harborEntrancePoint = "29"
    case dipPosition = "30"
    case search = "31"
    case searchArea = "32"
    case searchCenter = "33"
    case navigationalReferencePoint = "34"
    case sonobuoy = "35"
    case referencePoint = "36"
    case specialPoint = "37"
    case navigationalReferencePoint2 = "38"
    case dataLinkReferencePoint = "39"
    case forwardObserverSpotterPosition = "40"
    case vitalAreaCenter = "41"
    case corridorTabPoint = "42"
    case enemyPoint = "43"
    case marshallPoint = "44"
    case positionAndIntendedMovementPIM = "45"
    case preLandfallWaypoint = "46"
    case estimatedPositionEP = "47"
    case waypoint = "48"
    case generalSubsurfaceStation = "49"
    case submarineSubsurfaceStation = "50"
    case submarineAntisubmarineWarfareSubsurfaceStation = "51"
    case unmannedUnderwaterVehicleSubsurfaceStation = "52"
    case antisubmarineWarfareASWUnmannedUnderwaterVehicleSubsurfaceStation = "53"
    case mineWarfareUnmannedUnderwaterVehicleSubsurfaceStation = "54"
    case surfaceWarfareUnmannedUnderwaterVehicleSubsurfaceStation = "55"
    case generalSurfaceStation = "56"
    case antisubmarineWarfareASWSurfaceStation = "57"
    case mineWarfareSurfaceStation = "58"
    case nonCombatantSurfaceStation = "59"
    case picketSurfaceStation = "60"
    case rendezvousSurfaceStation = "61"
    case replenishmentAtSeaSurfaceStation = "62"
    case rescueSurfaceStation = "63"
    case surfaceWarfareSurfaceStation = "64"
    case unmannedUnderwaterVehicleSurfaceStation = "65"
    case antisubmarineWarfareASWUnmannedUnderwaterVehicleSurfaceStation = "66"
    case mineWarfareUnmannedUnderwaterVehicleSurfaceStation = "67"
    case remoteMultiMissionVehicleMineWarfareUnmannedUnderwaterVehicle = "68"
    case surfaceWarfareMineWarfareUnmannedUnderwaterVehicle = "69"
    case shoreControlStation = "70"
    case generalRoute = "71"
    case diversionRoute = "72"
    case positionAndIntendedMovementPIMRoute = "73"
    case picketRoute = "74"
    case pointRRoute = "75"
    case rendezvousRoute = "76"
    case waypointRoute = "77"
    case clutterStationaryOrCeaseReporting = "78"
    case tentativeOrProvisionalTrack = "79"
    case distressedVessel = "80"
    case ditchedAircraftDownedAircraft = "81"
    case personInWaterBailout = "82"
    case iceberg = "83"
    case navigational = "84"
    case oilRig = "85"
    case seaMineLike = "86"
    case bottomReturnNonMineLikeBottomObjectNOMBO = "87"
    case bottomReturnNonMineLikeBottomObjectNOMBOInstallationManmade = "88"
    case marineLife = "89"
    case seaAnomalyWakeCurrentKnuckle = "90"
    case bottomReturnNonMILCOWreckDangerous = "91"
    case bottomReturnNonMILCOWreckNonDangerous = "92"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .planShip:
            String(localized: "Plan Ship", comment: "Maritime Control Points Entity Type")
        case .aimPoint:
            String(localized: "Aim Point", comment: "Maritime Control Points Entity Type")
        case .defendedAsset:
            String(localized: "Defended Asset", comment: "Maritime Control Points Entity Type")
        case .dropPoint:
            String(localized: "Drop Point", comment: "Maritime Control Points Entity Type")
        case .entryPoint:
            String(localized: "Entry Point", comment: "Maritime Control Points Entity Type")
        case .airDetonation:
            String(localized: "Air Detonation", comment: "Maritime Control Points Entity Type")
        case .groundZero:
            String(localized: "Ground Zero", comment: "Maritime Control Points Entity Type")
        case .impactPoint:
            String(localized: "Impact Point", comment: "Maritime Control Points Entity Type")
        case .predictedImpactPoint:
            String(localized: "Predicted Impact Point", comment: "Maritime Control Points Entity Type")
        case .launchedTorpedo:
            String(localized: "Launched Torpedo", comment: "Maritime Control Points Entity Type")
        case .missileDetectionPoint:
            String(localized: "Missile Detection Point", comment: "Maritime Control Points Entity Type")
        case .acousticCountermeasureDecoy:
            String(localized: "Acoustic Countermeasure (Decoy)", comment: "Maritime Control Points Entity Type")
        case .electronicCountermeasuresECMDecoy:
            String(localized: "Electronic Countermeasures (ECM) Decoy", comment: "Maritime Control Points Entity Type")
        case .briefContact:
            String(localized: "Brief Contact", comment: "Maritime Control Points Entity Type")
        case .datumLostContact:
            String(localized: "Datum Lost Contact", comment: "Maritime Control Points Entity Type")
        case .btBuoyDrop:
            String(localized: "BT Buoy Drop", comment: "Maritime Control Points Entity Type")
        case .reportedBottomSub:
            String(localized: "Reported Bottom Sub", comment: "Maritime Control Points Entity Type")
        case .movingHaven:
            String(localized: "Moving Haven", comment: "Maritime Control Points Entity Type")
        case .screenCenter:
            String(localized: "Screen Center", comment: "Maritime Control Points Entity Type")
        case .lostContact:
            String(localized: "Lost Contact", comment: "Maritime Control Points Entity Type")
        case .sinker:
            String(localized: "Sinker", comment: "Maritime Control Points Entity Type")
        case .trialTrack:
            String(localized: "Trial Track", comment: "Maritime Control Points Entity Type")
        case .acousticFix:
            String(localized: "Acoustic Fix", comment: "Maritime Control Points Entity Type")
        case .electromagneticFix:
            String(localized: "Electromagnetic Fix", comment: "Maritime Control Points Entity Type")
        case .electromagneticMagneticAnomalyDetectionMAD:
            String(localized: "Electromagnetic - Magnetic Anomaly Detection (MAD)", comment: "Maritime Control Points Entity Type")
        case .opticalFix:
            String(localized: "Optical Fix", comment: "Maritime Control Points Entity Type")
        case .formation:
            String(localized: "Formation", comment: "Maritime Control Points Entity Type")
        case .harbor:
            String(localized: "Harbor", comment: "Maritime Control Points Entity Type")
        case .harborEntrancePoint:
            String(localized: "Harbor Entrance Point", comment: "Maritime Control Points Entity Type")
        case .dipPosition:
            String(localized: "Dip Position", comment: "Maritime Control Points Entity Type")
        case .search:
            String(localized: "Search", comment: "Maritime Control Points Entity Type")
        case .searchArea:
            String(localized: "Search Area", comment: "Maritime Control Points Entity Type")
        case .searchCenter:
            String(localized: "Search Center", comment: "Maritime Control Points Entity Type")
        case .navigationalReferencePoint:
            String(localized: "Navigational Reference Point", comment: "Maritime Control Points Entity Type")
        case .sonobuoy:
            String(localized: "Sonobuoy", comment: "Maritime Control Points Entity Type")
        case .referencePoint:
            String(localized: "Reference Point", comment: "Maritime Control Points Entity Type")
        case .specialPoint:
            String(localized: "Special Point", comment: "Maritime Control Points Entity Type")
        case .navigationalReferencePoint2:
            String(localized: "Navigational Reference Point", comment: "Maritime Control Points Entity Type")
        case .dataLinkReferencePoint:
            String(localized: "Data Link Reference Point", comment: "Maritime Control Points Entity Type")
        case .forwardObserverSpotterPosition:
            String(localized: "Forward Observer / Spotter Position", comment: "Maritime Control Points Entity Type")
        case .vitalAreaCenter:
            String(localized: "Vital Area Center", comment: "Maritime Control Points Entity Type")
        case .corridorTabPoint:
            String(localized: "Corridor Tab Point", comment: "Maritime Control Points Entity Type")
        case .enemyPoint:
            String(localized: "Enemy Point", comment: "Maritime Control Points Entity Type")
        case .marshallPoint:
            String(localized: "Marshall Point", comment: "Maritime Control Points Entity Type")
        case .positionAndIntendedMovementPIM:
            String(localized: "Position and Intended Movement (PIM)", comment: "Maritime Control Points Entity Type")
        case .preLandfallWaypoint:
            String(localized: "Pre-Landfall Waypoint", comment: "Maritime Control Points Entity Type")
        case .estimatedPositionEP:
            String(localized: "Estimated Position (EP)", comment: "Maritime Control Points Entity Type")
        case .waypoint:
            String(localized: "Waypoint", comment: "Maritime Control Points Entity Type")
        case .generalSubsurfaceStation:
            String(localized: "General Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .submarineSubsurfaceStation:
            String(localized: "Submarine Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .submarineAntisubmarineWarfareSubsurfaceStation:
            String(localized: "Submarine Antisubmarine Warfare Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .unmannedUnderwaterVehicleSubsurfaceStation:
            String(localized: "Unmanned Underwater Vehicle Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .antisubmarineWarfareASWUnmannedUnderwaterVehicleSubsurfaceStation:
            String(localized: "Antisubmarine Warfare (ASW) Unmanned Underwater Vehicle Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .mineWarfareUnmannedUnderwaterVehicleSubsurfaceStation:
            String(localized: "Mine Warfare Unmanned Underwater Vehicle Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .surfaceWarfareUnmannedUnderwaterVehicleSubsurfaceStation:
            String(localized: "Surface Warfare Unmanned Underwater Vehicle Subsurface Station", comment: "Maritime Control Points Entity Type")
        case .generalSurfaceStation:
            String(localized: "General Surface Station", comment: "Maritime Control Points Entity Type")
        case .antisubmarineWarfareASWSurfaceStation:
            String(localized: "Antisubmarine Warfare (ASW) Surface Station", comment: "Maritime Control Points Entity Type")
        case .mineWarfareSurfaceStation:
            String(localized: "Mine Warfare Surface Station", comment: "Maritime Control Points Entity Type")
        case .nonCombatantSurfaceStation:
            String(localized: "Non-Combatant Surface Station", comment: "Maritime Control Points Entity Type")
        case .picketSurfaceStation:
            String(localized: "Picket Surface Station", comment: "Maritime Control Points Entity Type")
        case .rendezvousSurfaceStation:
            String(localized: "Rendezvous Surface Station", comment: "Maritime Control Points Entity Type")
        case .replenishmentAtSeaSurfaceStation:
            String(localized: "Replenishment at Sea Surface Station", comment: "Maritime Control Points Entity Type")
        case .rescueSurfaceStation:
            String(localized: "Rescue Surface Station", comment: "Maritime Control Points Entity Type")
        case .surfaceWarfareSurfaceStation:
            String(localized: "Surface Warfare Surface Station", comment: "Maritime Control Points Entity Type")
        case .unmannedUnderwaterVehicleSurfaceStation:
            String(localized: "Unmanned Underwater Vehicle Surface Station", comment: "Maritime Control Points Entity Type")
        case .antisubmarineWarfareASWUnmannedUnderwaterVehicleSurfaceStation:
            String(localized: "Antisubmarine Warfare (ASW) Unmanned Underwater Vehicle Surface Station", comment: "Maritime Control Points Entity Type")
        case .mineWarfareUnmannedUnderwaterVehicleSurfaceStation:
            String(localized: "Mine Warfare Unmanned Underwater Vehicle Surface Station", comment: "Maritime Control Points Entity Type")
        case .remoteMultiMissionVehicleMineWarfareUnmannedUnderwaterVehicle:
            String(localized: "Remote Multi-Mission Vehicle Mine Warfare Unmanned Underwater Vehicle", comment: "Maritime Control Points Entity Type")
        case .surfaceWarfareMineWarfareUnmannedUnderwaterVehicle:
            String(localized: "Surface Warfare Mine Warfare Unmanned Underwater Vehicle", comment: "Maritime Control Points Entity Type")
        case .shoreControlStation:
            String(localized: "Shore Control Station", comment: "Maritime Control Points Entity Type")
        case .generalRoute:
            String(localized: "General Route", comment: "Maritime Control Points Entity Type")
        case .diversionRoute:
            String(localized: "Diversion Route", comment: "Maritime Control Points Entity Type")
        case .positionAndIntendedMovementPIMRoute:
            String(localized: "Position and Intended Movement (PIM) Route", comment: "Maritime Control Points Entity Type")
        case .picketRoute:
            String(localized: "Picket Route", comment: "Maritime Control Points Entity Type")
        case .pointRRoute:
            String(localized: "Point R Route", comment: "Maritime Control Points Entity Type")
        case .rendezvousRoute:
            String(localized: "Rendezvous Route", comment: "Maritime Control Points Entity Type")
        case .waypointRoute:
            String(localized: "Waypoint Route", comment: "Maritime Control Points Entity Type")
        case .clutterStationaryOrCeaseReporting:
            String(localized: "Clutter-Stationary or Cease Reporting", comment: "Maritime Control Points Entity Type")
        case .tentativeOrProvisionalTrack:
            String(localized: "Tentative or Provisional Track", comment: "Maritime Control Points Entity Type")
        case .distressedVessel:
            String(localized: "Distressed Vessel", comment: "Maritime Control Points Entity Type")
        case .ditchedAircraftDownedAircraft:
            String(localized: "Ditched Aircraft/Downed Aircraft", comment: "Maritime Control Points Entity Type")
        case .personInWaterBailout:
            String(localized: "Person in Water/Bailout", comment: "Maritime Control Points Entity Type")
        case .iceberg:
            String(localized: "Iceberg", comment: "Maritime Control Points Entity Type")
        case .navigational:
            String(localized: "Navigational", comment: "Maritime Control Points Entity Type")
        case .oilRig:
            String(localized: "Oil Rig", comment: "Maritime Control Points Entity Type")
        case .seaMineLike:
            String(localized: "Sea Mine-Like", comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMineLikeBottomObjectNOMBO:
            String(localized: "Bottom Return/Non-Mine Like Bottom Object (NOMBO)", comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMineLikeBottomObjectNOMBOInstallationManmade:
            String(localized: "Bottom Return/Non-Mine Like Bottom Object (NOMBO)/Installation Manmade", comment: "Maritime Control Points Entity Type")
        case .marineLife:
            String(localized: "Marine Life", comment: "Maritime Control Points Entity Type")
        case .seaAnomalyWakeCurrentKnuckle:
            String(localized: "Sea Anomaly (Wake-Current-Knuckle)", comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMILCOWreckDangerous:
            String(localized: "Bottom Return/Non-MILCO-Wreck-Dangerous", comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMILCOWreckNonDangerous:
            String(localized: "Bottom Return/Non-MILCO-Wreck-Non Dangerous", comment: "Maritime Control Points Entity Type")
        }
    }
}

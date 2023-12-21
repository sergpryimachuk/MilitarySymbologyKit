//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum MaritimeControlPointsEntityType: String, CaseIterable, EntityType {
    case none = "00"
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
    case electromagneticMAD = "25"
    case opticalFix = "26"
    case formation = "27"
    case harbor = "28"
    case harborEntrancePoint = "29"
    case dipPosition = "30"
    case search = "31"
    case searchArea = "32"
    case searchCenter = "33"
    case navigationalReferencePoint1 = "34"
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
    case aswUnmannedUnderwaterVehicleSubsurfaceStation = "53"
    case mineWarfareUnmannedUnderwaterVehicleSubsurfaceStation = "54"
    case surfaceWarfareUnmannedUnderwaterVehicleSubsurfaceStation = "55"
    case generalSurfaceStation = "56"
    case aswSurfaceStation = "57"
    case mineWarfareSurfaceStation = "58"
    case nonCombatantSurfaceStation = "59"
    case picketSurfaceStation = "60"
    case rendezvousSurfaceStation = "61"
    case replenishmentAtSeaSurfaceStation = "62"
    case rescueSurfaceStation = "63"
    case surfaceWarfareSurfaceStation = "64"
    case unmannedUnderwaterVehicleSurfaceStation = "65"
    case aswUnmannedUnderwaterVehicleSurfaceStation = "66"
    case mineWarfareUnmannedUnderwaterVehicleSurfaceStation = "67"
    case remoteMultiMissionVehicleMineWarfareUnmannedUnderwater = "68"
    case surfaceWarfareMineWarfareUnmannedUnderwaterVehicle = "69"
    case shoreControlStation = "70"
    case generalRoute = "71"
    case diversionRoute = "72"
    case pimRoute = "73"
    case picketRoute = "74"
    case pointRRoute = "75"
    case rendezvousRoute = "76"
    case waypointRoute = "77"
    case clutterStationaryCeaseReporting = "78"
    case tentativeProvisionalTrack = "79"
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
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .planShip:
            return String(localized: "Plan Ship", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .aimPoint:
            return String(localized: "Aim Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .defendedAsset:
            return String(localized: "Defended Asset", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .dropPoint:
            return String(localized: "Drop Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .entryPoint:
            return String(localized: "Entry Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .airDetonation:
            return String(localized: "Air Detonation", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .groundZero:
            return String(localized: "Ground Zero", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .impactPoint:
            return String(localized: "Impact Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .predictedImpactPoint:
            return String(localized: "Predicted Impact Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .launchedTorpedo:
            return String(localized: "Launched Torpedo", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .missileDetectionPoint:
            return String(localized: "Missile Detection Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .acousticCountermeasureDecoy:
            return String(localized: "Acoustic Countermeasure (Decoy)", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .electronicCountermeasuresECMDecoy:
            return String(localized: "Electronic Countermeasures (ECM) Decoy", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .briefContact:
            return String(localized: "Brief Contact", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .datumLostContact:
            return String(localized: "Datum Lost Contact", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .btBuoyDrop:
            return String(localized: "BT Buoy Drop", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .reportedBottomSub:
            return String(localized: "Reported Bottom Sub", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .movingHaven:
            return String(localized: "Moving Haven", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .screenCenter:
            return String(localized: "Screen Center", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .lostContact:
            return String(localized: "Lost Contact", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .sinker:
            return String(localized: "Sinker", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .trialTrack:
            return String(localized: "Trial Track", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .acousticFix:
            return String(localized: "Acoustic Fix", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .electromagneticFix:
            return String(localized: "Electromagnetic Fix", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .electromagneticMAD:
            return String(localized: "Electromagnetic - Magnetic Anomaly Detection (MAD)", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .opticalFix:
            return String(localized: "Optical Fix", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .formation:
            return String(localized: "Formation", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .harbor:
            return String(localized: "Harbor", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .harborEntrancePoint:
            return String(localized: "Harbor Entrance Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .dipPosition:
            return String(localized: "Dip Position", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .search:
            return String(localized: "Search", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .searchArea:
            return String(localized: "Search Area", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .searchCenter:
            return String(localized: "Search Center", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .navigationalReferencePoint1:
            return String(localized: "Navigational Reference Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .sonobuoy:
            return String(localized: "Sonobuoy", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .referencePoint:
            return String(localized: "Reference Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .specialPoint:
            return String(localized: "Special Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .navigationalReferencePoint2:
            return String(localized: "Navigational Reference Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .dataLinkReferencePoint:
            return String(localized: "Data Link Reference Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .forwardObserverSpotterPosition:
            return String(localized: "Forward Observer / Spotter Position", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .vitalAreaCenter:
            return String(localized: "Vital Area Center", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .corridorTabPoint:
            return String(localized: "Corridor Tab Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .enemyPoint:
            return String(localized: "Enemy Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .marshallPoint:
            return String(localized: "Marshall Point", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .positionAndIntendedMovementPIM:
            return String(localized: "Position and Intended Movement (PIM)", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .preLandfallWaypoint:
            return String(localized: "Pre-Landfall Waypoint", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .estimatedPositionEP:
            return String(localized: "Estimated Position (EP)", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .waypoint:
            return String(localized: "Waypoint", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .generalSubsurfaceStation:
            return String(localized: "General Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .submarineSubsurfaceStation:
            return String(localized: "Submarine Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .submarineAntisubmarineWarfareSubsurfaceStation:
            return String(localized: "Submarine Antisubmarine Warfare Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .unmannedUnderwaterVehicleSubsurfaceStation:
            return String(localized: "Unmanned Underwater Vehicle Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .aswUnmannedUnderwaterVehicleSubsurfaceStation:
            return String(localized: "ASW Unmanned Underwater Vehicle Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .mineWarfareUnmannedUnderwaterVehicleSubsurfaceStation:
            return String(localized: "Mine Warfare Unmanned Underwater Vehicle Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .surfaceWarfareUnmannedUnderwaterVehicleSubsurfaceStation:
            return String(localized: "Surface Warfare Unmanned Underwater Vehicle Subsurface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .generalSurfaceStation:
            return String(localized: "General Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .aswSurfaceStation:
            return String(localized: "ASW Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .mineWarfareSurfaceStation:
            return String(localized: "Mine Warfare Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .nonCombatantSurfaceStation:
            return String(localized: "Non-Combatant Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .picketSurfaceStation:
            return String(localized: "Picket Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .rendezvousSurfaceStation:
            return String(localized: "Rendezvous Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .replenishmentAtSeaSurfaceStation:
            return String(localized: "Replenishment at Sea Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .rescueSurfaceStation:
            return String(localized: "Rescue Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .surfaceWarfareSurfaceStation:
            return String(localized: "Surface Warfare Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .unmannedUnderwaterVehicleSurfaceStation:
            return String(localized: "Unmanned Underwater Vehicle Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .aswUnmannedUnderwaterVehicleSurfaceStation:
            return String(localized: "ASW Unmanned Underwater Vehicle Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .mineWarfareUnmannedUnderwaterVehicleSurfaceStation:
            return String(localized: "Mine Warfare Unmanned Underwater Vehicle Surface Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .remoteMultiMissionVehicleMineWarfareUnmannedUnderwater:
            return String(localized: "Remote Multi-Mission Vehicle Mine Warfare Unmanned Underwater", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .surfaceWarfareMineWarfareUnmannedUnderwaterVehicle:
            return String(localized: "Surface Warfare Mine Warfare Unmanned Underwater Vehicle", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .shoreControlStation:
            return String(localized: "Shore Control Station", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .generalRoute:
            return String(localized: "General Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .diversionRoute:
            return String(localized: "Diversion Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .pimRoute:
            return String(localized: "Position and Intended Movement (PIM) Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .picketRoute:
            return String(localized: "Picket Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .pointRRoute:
            return String(localized: "Point R Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .rendezvousRoute:
            return String(localized: "Rendezvous Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .waypointRoute:
            return String(localized: "Waypoint Route", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .clutterStationaryCeaseReporting:
            return String(localized: "Clutter-Stationary or Cease Reporting", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .tentativeProvisionalTrack:
            return String(localized: "Tentative or Provisional Track", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .distressedVessel:
            return String(localized: "Distressed Vessel", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .ditchedAircraftDownedAircraft:
            return String(localized: "Ditched Aircraft/Downed Aircraft", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .personInWaterBailout:
            return String(localized: "Person in Water/Bailout", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .iceberg:
            return String(localized: "Iceberg", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .navigational:
            return String(localized: "Navigational", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .oilRig:
            return String(localized: "Oil Rig", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .seaMineLike:
            return String(localized: "Sea Mine-Like", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMineLikeBottomObjectNOMBO:
            return String(localized: "Bottom Return/Non-Mine Like Bottom Object (NOMBO)", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMineLikeBottomObjectNOMBOInstallationManmade:
            return String(localized: "Bottom Return/Non-Mine Like Bottom Object (NOMBO)/Installation Manmade", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .marineLife:
            return String(localized: "Marine Life", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .seaAnomalyWakeCurrentKnuckle:
            return String(localized: "Sea Anomaly (Wake-Current-Knuckle)", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMILCOWreckDangerous:
            return String(localized: "Bottom Return/Non-MILCO-Wreck-Dangerous", bundle: .module, comment: "Maritime Control Points Entity Type")
        case .bottomReturnNonMILCOWreckNonDangerous:
            return String(localized: "Bottom Return/Non-MILCO-Wreck-Non Dangerous", bundle: .module, comment: "Maritime Control Points Entity Type")
        }
    }
    
    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .harborEntrancePoint:
            HarborEntrancePointEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .sonobuoy:
            SonobuoyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}

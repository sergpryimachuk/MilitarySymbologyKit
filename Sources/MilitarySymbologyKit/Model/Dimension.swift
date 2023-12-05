//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum Dimension: String, CaseIterable, Identifiable {
    case air = "01"
    case airMissile = "02"
    case space = "05"
    case spaceMissile = "06"
    case landUnits = "10"
    case landCivilian = "11"
    case landEquipment = "15"
    case landInstallation = "20"
//    case controlMeasure = "25"
    case seaSurface = "30"
    case seaSubsurface = "35"
    case mineWarfare = "36"
    case activities = "40"
//    case meteorologicalAtmospheric = "45"
//    case meteorologicalOceanographic = "46"
//    case meteorologicalSpace = "47"
//    case signalsIntelligenceSpace = "50"
//    case signalsIntelligenceAir = "51"
//    case signalsIntelligenceLand = "52"
//    case signalsIntelligenceSurface = "53"
//    case signalsIntelligenceSubsurface = "54"
    case cyberspace = "60"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .air:
            String(localized: "Air", bundle: .module, comment: "Dimension")

        case .airMissile:
            String(localized: "Air Missile", bundle: .module, comment: "Dimension")

        case .space:
            String(localized: "Space", bundle: .module, comment: "Dimension")

        case .spaceMissile:
            String(localized: "Space Missile", bundle: .module, comment: "Dimension")

        case .landUnits:
            String(localized: "Land Units", bundle: .module, comment: "Dimension")

        case .landCivilian:
            String(localized: "Land Civilian", bundle: .module, comment: "Dimension")

        case .landEquipment:
            String(localized: "Land Equipment", bundle: .module, comment: "Dimension")

        case .landInstallation:
            String(localized: "Land Installation", bundle: .module, comment: "Dimension")

//        case .controlMeasure:
//            String(localized: "Control Measure", bundle: .module, comment: "Dimension")

        case .seaSurface:
            String(localized: "Sea Surface", bundle: .module, comment: "Dimension")

        case .seaSubsurface:
            String(localized: "Sea Subsurface", bundle: .module, comment: "Dimension")

        case .mineWarfare:
            String(localized: "Mine Warfare", bundle: .module, comment: "Dimension")

        case .activities:
            String(localized: "Activities", bundle: .module, comment: "Dimension")

//        case .meteorologicalAtmospheric:
//            String(localized: "Meteorological - Atmospheric", bundle: .module, comment: "Dimension")
//
//        case .meteorologicalOceanographic:
//            String(localized: "Meteorological - Oceanographic", bundle: .module, comment: "Dimension")
//
//        case .meteorologicalSpace:
//            String(localized: "Meteorological - Space", bundle: .module, comment: "Dimension")
//
//        case .signalsIntelligenceSpace:
//            String(localized: "Signals Intelligence - Space", bundle: .module, comment: "Dimension")
//
//        case .signalsIntelligenceAir:
//            String(localized: "Signals Intelligence - Air", bundle: .module, comment: "Dimension")
//
//        case .signalsIntelligenceLand:
//            String(localized: "Signals Intelligence - Land", bundle: .module, comment: "Dimension")
//
//        case .signalsIntelligenceSurface:
//            String(localized: "Signals Intelligence - Surface", bundle: .module, comment: "Dimension")
//
//        case .signalsIntelligenceSubsurface:
//            String(localized: "Signals Intelligence - Subsurface", bundle: .module, comment: "Dimension")

        case .cyberspace:
            String(localized: "Cyberspace", bundle: .module, comment: "Dimension")
        }
    }

    public var entities: [AnyEntity] {
        switch self {
        case .air:
            AirUnitEntity.allCases.map { AnyEntity($0) }
        case .airMissile:
            MissileEntity.allCases.map { AnyEntity($0) }
        case .space:
            [.none]
        case .spaceMissile:
            MissileEntity.allCases.map { AnyEntity($0) }
        case .landUnits:
            LandUnitEntity.allCases.map { AnyEntity($0) }
        case .landCivilian:
            [.none]
        case .landEquipment:
            LandEquipmentEntity.allCases.map { AnyEntity($0) }
        case .landInstallation:
            LandInstallationEntity.allCases.map { AnyEntity($0) }
//        case .controlMeasure:
//            ControlMeasureEntity.allCases.map { AnyEntity($0) }
        case .seaSurface:
            SeaSurfaceEntity.allCases.map { AnyEntity($0) }
        case .seaSubsurface:
            SeaSubsurfaceEntity.allCases.map { AnyEntity($0) }
        case .mineWarfare:
            MineWarfareEntity.allCases.map { AnyEntity($0) }
        case .activities:
            ActivitiesEntity.allCases.map { AnyEntity($0) }
//        case .meteorologicalAtmospheric:
//            AtmosphericEntity.allCases.map { AnyEntity($0) }
//        case .meteorologicalOceanographic:
//            OceanographicEntity.allCases.map { AnyEntity($0) }
//        case .meteorologicalSpace:
//            SpaceEntity.allCases.map { AnyEntity($0) }
//        case .signalsIntelligenceSpace, .signalsIntelligenceAir, .signalsIntelligenceLand, .signalsIntelligenceSurface, .signalsIntelligenceSubsurface:
//            SignalsIntelligenceEntity.allCases.map { AnyEntity($0) }
        case .cyberspace:
            CyberspaceEntity.allCases.map { AnyEntity($0) }
        }
    }
}

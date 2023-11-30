//
//  InstallationEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum InstallationEntityType: String, CaseIterable, EntityType {
    case aircraftProductionAssembly = "01"
    case ammunitionAndExplosivesAssembly = "02"
    case ammunitionCache = "03"
    case armamentProduction = "04"
    case blackListLocation = "05"
    case chemicalBiologicalRadiologicalNuclearCBRN = "06"
    case engineeringEquipmentProduction = "07"
    case equipmentManufacture = "08"
    case governmentLeadership = "09"
    case grayListLocation = "10"
    case massGraveSite = "11"
    case materiel = "12"
    case mine = "13"
    case missileAndSpaceSystemProduction = "14"
    case nuclearNonCBRNDefense = "15"
    case printedMedia = "16"
    case safeHouse = "17"
    case whiteListLocation = "18"
    case tentedCamp = "19"
    case warehouseStorageFacility = "20"
    case lawEnforcement = "21"
    case emergencyOperation = "22"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .aircraftProductionAssembly:
            String(localized: "Aircraft Production/Assembly", bundle: .module, comment: "Installation Entity Type")

        case .ammunitionAndExplosivesAssembly:
            String(localized: "Ammunition and Explosives/Assembly", bundle: .module, comment: "Installation Entity Type")

        case .ammunitionCache:
            String(localized: "Ammunition Cache", bundle: .module, comment: "Installation Entity Type")

        case .armamentProduction:
            String(localized: "Armament Production", bundle: .module, comment: "Installation Entity Type")

        case .blackListLocation:
            String(localized: "Black List Location", bundle: .module, comment: "Installation Entity Type")

        case .chemicalBiologicalRadiologicalNuclearCBRN:
            String(localized: "Chemical-Biological-Radiological and Nuclear (CBRN)", bundle: .module, comment: "Installation Entity Type")

        case .engineeringEquipmentProduction:
            String(localized: "Engineering Equipment Production", bundle: .module, comment: "Installation Entity Type")

        case .equipmentManufacture:
            String(localized: "Equipment Manufacture", bundle: .module, comment: "Installation Entity Type")

        case .governmentLeadership:
            String(localized: "Government Leadership", bundle: .module, comment: "Installation Entity Type")

        case .grayListLocation:
            String(localized: "Gray List Location", bundle: .module, comment: "Installation Entity Type")

        case .massGraveSite:
            String(localized: "Mass Grave Site", bundle: .module, comment: "Installation Entity Type")

        case .materiel:
            String(localized: "Materiel", bundle: .module, comment: "Installation Entity Type")

        case .mine:
            String(localized: "Mine", bundle: .module, comment: "Installation Entity Type")

        case .missileAndSpaceSystemProduction:
            String(localized: "Missile and Space System Production", bundle: .module, comment: "Installation Entity Type")

        case .nuclearNonCBRNDefense:
            String(localized: "Nuclear (Non CBRN Defense)", bundle: .module, comment: "Installation Entity Type")

        case .printedMedia:
            String(localized: "Printed Media", bundle: .module, comment: "Installation Entity Type")

        case .safeHouse:
            String(localized: "Safe House", bundle: .module, comment: "Installation Entity Type")

        case .whiteListLocation:
            String(localized: "White List Location", bundle: .module, comment: "Installation Entity Type")

        case .tentedCamp:
            String(localized: "Tented Camp", bundle: .module, comment: "Installation Entity Type")

        case .warehouseStorageFacility:
            String(localized: "Warehouse/Storage Facility", bundle: .module, comment: "Installation Entity Type")

        case .lawEnforcement:
            String(localized: "Law Enforcement", bundle: .module, comment: "Installation Entity Type")

        case .emergencyOperation:
            String(localized: "Emergency Operation", bundle: .module, comment: "Installation Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .engineeringEquipmentProduction: BridgeSubtype.allCases.map { AnyEntitySubtype($0) }
        case .tentedCamp: TentedCampSubtype.allCases.map { AnyEntitySubtype($0) }
        case .lawEnforcement: LawEnforcementSubtype.allCases.map { AnyEntitySubtype($0) }
        case .emergencyOperation: EmergencyOperationSubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}

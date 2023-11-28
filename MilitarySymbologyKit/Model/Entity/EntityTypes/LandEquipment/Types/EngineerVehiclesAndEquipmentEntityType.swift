//
//  EngineerVehiclesAndEquipmentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum EngineerVehiclesAndEquipmentEntityType: String, CaseIterable, EntityType {
    case bridge = "01"
    case bridgeMountedOnUtilityVehicle = "02"
    case fixedBridge = "03"
    case floatingBridge = "04"
    case foldingGirderBridge = "05"
    case hollowDeckBridge = "06"
    case drill = "07"
    case earthmover = "08"
    case mineClearingEquipment = "09"
    case mineLayingEquipment = "10"
    case dozer = "11"
    case armoredAssault = "12"
    case armoredEngineerReconVehicle = "13"
    case backhoe = "14"
    case constructionVehicle = "15"
    case ferryTransporter = "16"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .bridge:
            String(localized: "Bridge", comment: "Engineer Vehicles and Equipment Entity Type")

        case .bridgeMountedOnUtilityVehicle:
            String(localized: "Bridge Mounted on Utility Vehicle", comment: "Engineer Vehicles and Equipment Entity Type")

        case .fixedBridge:
            String(localized: "Fixed Bridge", comment: "Engineer Vehicles and Equipment Entity Type")

        case .floatingBridge:
            String(localized: "Floating Bridge", comment: "Engineer Vehicles and Equipment Entity Type")

        case .foldingGirderBridge:
            String(localized: "Folding Girder Bridge", comment: "Engineer Vehicles and Equipment Entity Type")

        case .hollowDeckBridge:
            String(localized: "Hollow Deck Bridge", comment: "Engineer Vehicles and Equipment Entity Type")

        case .drill:
            String(localized: "Drill", comment: "Engineer Vehicles and Equipment Entity Type")

        case .earthmover:
            String(localized: "Earthmover", comment: "Engineer Vehicles and Equipment Entity Type")

        case .mineClearingEquipment:
            String(localized: "Mine Clearing Equipment", comment: "Engineer Vehicles and Equipment Entity Type")

        case .mineLayingEquipment:
            String(localized: "Mine Laying Equipment", comment: "Engineer Vehicles and Equipment Entity Type")

        case .dozer:
            String(localized: "Dozer", comment: "Engineer Vehicles and Equipment Entity Type")

        case .armoredAssault:
            String(localized: "Armored Assault", comment: "Engineer Vehicles and Equipment Entity Type")

        case .armoredEngineerReconVehicle:
            String(localized: "Armored Engineer Recon Vehicle (AERV)", comment: "Engineer Vehicles and Equipment Entity Type")

        case .backhoe:
            String(localized: "Backhoe", comment: "Engineer Vehicles and Equipment Entity Type")

        case .constructionVehicle:
            String(localized: "Construction Vehicle", comment: "Engineer Vehicles and Equipment Entity Type")

        case .ferryTransporter:
            String(localized: "Ferry Transporter", comment: "Engineer Vehicles and Equipment Entity Type")
        }
    }

    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .drill:
            DrillEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .earthmover:
            EarthmoverEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .mineClearingEquipment:
            MineClearingEquipmentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            // TODO: Finished at Mine Laying Equipment
            [.none]
        }
    }
}

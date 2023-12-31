//
//  EngineerVehiclesAndEquipmentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum EngineerVehiclesAndEquipmentEntityType: String, CaseIterable, EntityType {
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

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .bridge:
            String(localized: "Bridge", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .bridgeMountedOnUtilityVehicle:
            String(localized: "Bridge Mounted on Utility Vehicle", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .fixedBridge:
            String(localized: "Fixed Bridge", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .floatingBridge:
            String(localized: "Floating Bridge", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .foldingGirderBridge:
            String(localized: "Folding Girder Bridge", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .hollowDeckBridge:
            String(localized: "Hollow Deck Bridge", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .drill:
            String(localized: "Drill", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .earthmover:
            String(localized: "Earthmover", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .mineClearingEquipment:
            String(localized: "Mine Clearing Equipment", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .mineLayingEquipment:
            String(localized: "Mine Laying Equipment", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .dozer:
            String(localized: "Dozer", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .armoredAssault:
            String(localized: "Armored Assault", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .armoredEngineerReconVehicle:
            String(localized: "Armored Engineer Recon Vehicle (AERV)", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .backhoe:
            String(localized: "Backhoe", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .constructionVehicle:
            String(localized: "Construction Vehicle", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")

        case .ferryTransporter:
            String(localized: "Ferry Transporter", bundle: .module, comment: "Engineer Vehicles and Equipment Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .drill:
            DrillEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .earthmover:
            EarthmoverEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .mineClearingEquipment:
            MineClearingEquipmentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .mineLayingEquipment:
            MineLayingEquipmentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .dozer:
            [.none,
             AnyEntitySubtype(
                 id: "01", name: String(localized: "Dozer-Armored", bundle: .module, comment: "Entity Subtype")
             )]
        default:
            [.none]
        }
    }
}

//
//  VehicleEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum VehicleEntityType: String, CaseIterable, EntityType {
    case none
    case armoredVehicle = "01"
    case tank = "02"
    case tankRecoveryVehicle = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .armoredVehicle:
            String(localized: "Armored Vehicle", bundle: .module, comment: "Vehicle Entity Type")

        case .tank:
            String(localized: "Tank", bundle: .module, comment: "Vehicle Entity Type")

        case .tankRecoveryVehicle:
            String(localized: "Tank Recovery Vehicle", bundle: .module, comment: "Vehicle Entity Type")
        case .none:
            String(localized: "None", bundle: .module)
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .armoredVehicle:
            ArmoredVehicleEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            LightMediumHeavyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

//
//  VehicleEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum VehicleEntityType: String, CaseIterable, EntityType {
    case none
    case armoredVehicle = "01"
    case tank = "02"
    case tankRecoveryVehicle = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .armoredVehicle:
            String(localized: "Armored Vehicle", comment: "Vehicle Entity Type")
            
        case .tank:
            String(localized: "Tank", comment: "Vehicle Entity Type")
            
        case .tankRecoveryVehicle:
            String(localized: "Tank Recovery Vehicle", comment: "Vehicle Entity Type")
        case .none:
            String(localized: "None")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
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

//
//  VehicleEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum VehicleEntityType: String, CaseIterable, Identifiable {
    case armoredVehicle = "01"
    case tank = "02"
    case tankRecoveryVehicle = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .armoredVehicle:
            return String(localized: "Armored Vehicle", comment: "Vehicle Entity Type")
            
        case .tank:
            return String(localized: "Tank", comment: "Vehicle Entity Type")
            
        case .tankRecoveryVehicle:
            return String(localized: "Tank Recovery Vehicle", comment: "Vehicle Entity Type")
        }
    }
}

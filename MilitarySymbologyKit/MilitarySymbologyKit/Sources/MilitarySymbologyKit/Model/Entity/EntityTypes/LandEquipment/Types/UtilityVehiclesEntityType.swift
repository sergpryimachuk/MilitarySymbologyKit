//
//  UtilityVehiclesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum UtilityVehiclesEntityType: String, CaseIterable, EntityType {
    case utilityVehicle = "01"
    case medical = "02"
    case medicalEvacuation = "03"
    case mobileEmergencyPhysician = "04"
    case bus = "05"
    case semiTrailerAndTruck = "06"
    case limitedCrossCountryTruck = "07"
    case crossCountryTruck = "08"
    case petroleumOilLubricant = "09"
    case water = "10"
    case amphibiousUtilityWheeledVehicle = "11"
    case towTruck = "12"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .utilityVehicle:
            String(localized: "Utility Vehicle", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .medical:
            String(localized: "Medical", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .medicalEvacuation:
            String(localized: "Medical Evacuation", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .mobileEmergencyPhysician:
            String(localized: "Mobile Emergency Physician", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .bus:
            String(localized: "Bus", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .semiTrailerAndTruck:
            String(localized: "Semi-Trailer and Truck", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .limitedCrossCountryTruck:
            String(localized: "Limited Cross Country Truck", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .crossCountryTruck:
            String(localized: "Cross Country Truck", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .petroleumOilLubricant:
            String(localized: "Petroleum-Oil and Lubricant", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .water:
            String(localized: "Water", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .amphibiousUtilityWheeledVehicle:
            String(localized: "Amphibious Utility Wheeled Vehicle", bundle: .module, comment: "Utility Vehicles Entity Type")

        case .towTruck:
            String(localized: "Tow Truck", bundle: .module, comment: "Utility Vehicles Entity Type")
        }
    }
    
    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .semiTrailerAndTruck:
            LightMediumHeavyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .towTruck:
            LightHeavyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}

//
//  UtilityVehiclesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum UtilityVehiclesEntityType: String, CaseIterable, EntityType {
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
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .utilityVehicle:
            String(localized: "Utility Vehicle", comment: "Utility Vehicles Entity Type")
            
        case .medical:
            String(localized: "Medical", comment: "Utility Vehicles Entity Type")
            
        case .medicalEvacuation:
            String(localized: "Medical Evacuation", comment: "Utility Vehicles Entity Type")
            
        case .mobileEmergencyPhysician:
            String(localized: "Mobile Emergency Physician", comment: "Utility Vehicles Entity Type")
            
        case .bus:
            String(localized: "Bus", comment: "Utility Vehicles Entity Type")
            
        case .semiTrailerAndTruck:
            String(localized: "Semi-Trailer and Truck", comment: "Utility Vehicles Entity Type")
            
        case .limitedCrossCountryTruck:
            String(localized: "Limited Cross Country Truck", comment: "Utility Vehicles Entity Type")
            
        case .crossCountryTruck:
            String(localized: "Cross Country Truck", comment: "Utility Vehicles Entity Type")
            
        case .petroleumOilLubricant:
            String(localized: "Petroleum-Oil and Lubricant", comment: "Utility Vehicles Entity Type")
            
        case .water:
            String(localized: "Water", comment: "Utility Vehicles Entity Type")
            
        case .amphibiousUtilityWheeledVehicle:
            String(localized: "Amphibious Utility Wheeled Vehicle", comment: "Utility Vehicles Entity Type")
            
        case .towTruck:
            String(localized: "Tow Truck", comment: "Utility Vehicles Entity Type")
        }
    }
}

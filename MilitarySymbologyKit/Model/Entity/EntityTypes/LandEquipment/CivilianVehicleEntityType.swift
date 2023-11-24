//
//  CivilianVehicleEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum CivilianVehicleEntityType: String, CaseIterable, EntityType {
    case automobile = "01"
    case openBedTruck = "02"
    case multiplePassengerVehicle = "03"
    case utilityVehicle = "04"
    case jeepTypeVehicle = "05"
    case tractorTrailerTruckWithBox = "06"
    case tractorTrailerTruckWithFlatbedTrailer = "07"
    case knownInsurgentVehicle = "08"
    case drugVehicle = "09"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .automobile:
            return String(localized: "Automobile", comment: "Civilian Vehicle Entity Type")
            
        case .openBedTruck:
            return String(localized: "Open-Bed Truck", comment: "Civilian Vehicle Entity Type")
            
        case .multiplePassengerVehicle:
            return String(localized: "Multiple Passenger Vehicle", comment: "Civilian Vehicle Entity Type")
            
        case .utilityVehicle:
            return String(localized: "Utility Vehicle", comment: "Civilian Vehicle Entity Type")
            
        case .jeepTypeVehicle:
            return String(localized: "Jeep Type Vehicle", comment: "Civilian Vehicle Entity Type")
            
        case .tractorTrailerTruckWithBox:
            return String(localized: "Tractor Trailer Truck with Box", comment: "Civilian Vehicle Entity Type")
            
        case .tractorTrailerTruckWithFlatbedTrailer:
            return String(localized: "Tractor Trailer Truck with Flatbed Trailer", comment: "Civilian Vehicle Entity Type")
            
        case .knownInsurgentVehicle:
            return String(localized: "Known Insurgent Vehicle", comment: "Civilian Vehicle Entity Type")
            
        case .drugVehicle:
            return String(localized: "Drug Vehicle", comment: "Civilian Vehicle Entity Type")
        }
    }
}

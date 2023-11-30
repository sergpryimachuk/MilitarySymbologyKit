//
//  CivilianVehicleEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum CivilianVehicleEntityType: String, CaseIterable, EntityType {
    case automobile = "01"
    case openBedTruck = "02"
    case multiplePassengerVehicle = "03"
    case utilityVehicle = "04"
    case jeepTypeVehicle = "05"
    case tractorTrailerTruckWithBox = "06"
    case tractorTrailerTruckWithFlatbedTrailer = "07"
    case knownInsurgentVehicle = "08"
    case drugVehicle = "09"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .automobile:
            String(localized: "Automobile", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .openBedTruck:
            String(localized: "Open-Bed Truck", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .multiplePassengerVehicle:
            String(localized: "Multiple Passenger Vehicle", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .utilityVehicle:
            String(localized: "Utility Vehicle", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .jeepTypeVehicle:
            String(localized: "Jeep Type Vehicle", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .tractorTrailerTruckWithBox:
            String(localized: "Tractor Trailer Truck with Box", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .tractorTrailerTruckWithFlatbedTrailer:
            String(localized: "Tractor Trailer Truck with Flatbed Trailer", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .knownInsurgentVehicle:
            String(localized: "Known Insurgent Vehicle", bundle: .module, comment: "Civilian Vehicle Entity Type")

        case .drugVehicle:
            String(localized: "Drug Vehicle", bundle: .module, comment: "Civilian Vehicle Entity Type")
        }
    }

    // TODO: Complete this one.
    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

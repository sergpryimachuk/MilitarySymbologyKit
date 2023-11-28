//
//  WaterSupplyInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum WaterSupplyInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case controlValve = "01"
    case dam = "02"
    case dischargeOutfall = "03"
    case groundWaterWell = "04"
    case pumpingStation = "05"
    case reservoir = "06"
    case storageTower = "07"
    case surfaceWaterIntake = "08"
    case wastewaterTreatmentFacility = "09"
    case water = "10"
    case waterTreatment = "11"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .controlValve:
            return String(localized: "Control Valve", comment: "Water Supply Infrastructure Subtype")
        case .dam:
            return String(localized: "Dam", comment: "Water Supply Infrastructure Subtype")
        case .dischargeOutfall:
            return String(localized: "Discharge Outfall", comment: "Water Supply Infrastructure Subtype")
        case .groundWaterWell:
            return String(localized: "Ground Water Well", comment: "Water Supply Infrastructure Subtype")
        case .pumpingStation:
            return String(localized: "Pumping Station", comment: "Water Supply Infrastructure Subtype")
        case .reservoir:
            return String(localized: "Reservoir", comment: "Water Supply Infrastructure Subtype")
        case .storageTower:
            return String(localized: "Storage Tower", comment: "Water Supply Infrastructure Subtype")
        case .surfaceWaterIntake:
            return String(localized: "Surface Water Intake", comment: "Water Supply Infrastructure Subtype")
        case .wastewaterTreatmentFacility:
            return String(localized: "Wastewater Treatment Facility", comment: "Water Supply Infrastructure Subtype")
        case .water:
            return String(localized: "Water", comment: "Water Supply Infrastructure Subtype")
        case .waterTreatment:
            return String(localized: "Water Treatment", comment: "Water Supply Infrastructure Subtype")
        }
    }
}

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
            String(localized: "None")
        case .controlValve:
            String(localized: "Control Valve", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .dam:
            String(localized: "Dam", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .dischargeOutfall:
            String(localized: "Discharge Outfall", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .groundWaterWell:
            String(localized: "Ground Water Well", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .pumpingStation:
            String(localized: "Pumping Station", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .reservoir:
            String(localized: "Reservoir", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .storageTower:
            String(localized: "Storage Tower", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .surfaceWaterIntake:
            String(localized: "Surface Water Intake", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .wastewaterTreatmentFacility:
            String(localized: "Wastewater Treatment Facility", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .water:
            String(localized: "Water", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        case .waterTreatment:
            String(localized: "Water Treatment", bundle: .module, comment: "Water Supply Infrastructure Subtype")
        }
    }
}

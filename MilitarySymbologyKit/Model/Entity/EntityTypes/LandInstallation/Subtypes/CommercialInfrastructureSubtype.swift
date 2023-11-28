//
//  CommercialInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum CommercialInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case chemicalPlant = "01"
    case firearmsManufacturer = "02"
    case firearmsRetailer = "03"
    case hazardousMaterialProduction = "04"
    case hazardousMaterialStorage = "05"
    case industrialSite = "06"
    case landfill = "07"
    case pharmaceuticalManufacturer = "08"
    case contaminatedHazardousWasteSite = "09"
    case toxicReleaseInventory = "10"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .chemicalPlant:
            return String(localized: "Chemical Plant", comment: "Commercial Infrastructure Subtype")
        case .firearmsManufacturer:
            return String(localized: "Firearms Manufacturer", comment: "Commercial Infrastructure Subtype")
        case .firearmsRetailer:
            return String(localized: "Firearms Retailer", comment: "Commercial Infrastructure Subtype")
        case .hazardousMaterialProduction:
            return String(localized: "Hazardous Material Production", comment: "Commercial Infrastructure Subtype")
        case .hazardousMaterialStorage:
            return String(localized: "Hazardous Material Storage", comment: "Commercial Infrastructure Subtype")
        case .industrialSite:
            return String(localized: "Industrial Site", comment: "Commercial Infrastructure Subtype")
        case .landfill:
            return String(localized: "Landfill", comment: "Commercial Infrastructure Subtype")
        case .pharmaceuticalManufacturer:
            return String(localized: "Pharmaceutical Manufacturer", comment: "Commercial Infrastructure Subtype")
        case .contaminatedHazardousWasteSite:
            return String(localized: "Contaminated Hazardous Waste Site", comment: "Commercial Infrastructure Subtype")
        case .toxicReleaseInventory:
            return String(localized: "Toxic Release Inventory", comment: "Commercial Infrastructure Subtype")
        }
    }
}

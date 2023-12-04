//
//  CommercialInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum CommercialInfrastructureSubtype: String, CaseIterable, EntitySubtype {
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

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .chemicalPlant:
            String(localized: "Chemical Plant", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .firearmsManufacturer:
            String(localized: "Firearms Manufacturer", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .firearmsRetailer:
            String(localized: "Firearms Retailer", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .hazardousMaterialProduction:
            String(localized: "Hazardous Material Production", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .hazardousMaterialStorage:
            String(localized: "Hazardous Material Storage", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .industrialSite:
            String(localized: "Industrial Site", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .landfill:
            String(localized: "Landfill", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .pharmaceuticalManufacturer:
            String(localized: "Pharmaceutical Manufacturer", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .contaminatedHazardousWasteSite:
            String(localized: "Contaminated Hazardous Waste Site", bundle: .module, comment: "Commercial Infrastructure Subtype")
        case .toxicReleaseInventory:
            String(localized: "Toxic Release Inventory", bundle: .module, comment: "Commercial Infrastructure Subtype")
        }
    }
}

//
//  EnergyFacilityInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum EnergyFacilityInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case electricPower = "01"
    case generationStation = "02"
    case naturalGasFacility = "03"
    case petroleumFacility = "04"
    case petroleumGasOil = "05"
    case propaneFacility = "06"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .electricPower:
            return String(localized: "Electric Power", comment: "Energy Facility Infrastructure Subtype")
        case .generationStation:
            return String(localized: "Generation Station", comment: "Energy Facility Infrastructure Subtype")
        case .naturalGasFacility:
            return String(localized: "Natural Gas Facility", comment: "Energy Facility Infrastructure Subtype")
        case .petroleumFacility:
            return String(localized: "Petroleum Facility", comment: "Energy Facility Infrastructure Subtype")
        case .petroleumGasOil:
            return String(localized: "Petroleum/Gas/Oil", comment: "Energy Facility Infrastructure Subtype")
        case .propaneFacility:
            return String(localized: "Propane Facility", comment: "Energy Facility Infrastructure Subtype")
        }
    }
}

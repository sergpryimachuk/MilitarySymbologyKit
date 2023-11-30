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
            String(localized: "None")
        case .electricPower:
            String(localized: "Electric Power", bundle: .module, comment: "Energy Facility Infrastructure Subtype")
        case .generationStation:
            String(localized: "Generation Station", bundle: .module, comment: "Energy Facility Infrastructure Subtype")
        case .naturalGasFacility:
            String(localized: "Natural Gas Facility", bundle: .module, comment: "Energy Facility Infrastructure Subtype")
        case .petroleumFacility:
            String(localized: "Petroleum Facility", bundle: .module, comment: "Energy Facility Infrastructure Subtype")
        case .petroleumGasOil:
            String(localized: "Petroleum/Gas/Oil", bundle: .module, comment: "Energy Facility Infrastructure Subtype")
        case .propaneFacility:
            String(localized: "Propane Facility", bundle: .module, comment: "Energy Facility Infrastructure Subtype")
        }
    }
}

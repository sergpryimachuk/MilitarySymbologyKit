//
//  AgricultureAndFoodInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum AgricultureAndFoodInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case agricultureLaboratory = "01"
    case animalFeedlot = "02"
    case commercialFoodDistributionCenter = "03"
    case farmRanch = "04"
    case foodDistribution = "05"
    case foodProductionCenter = "06"
    case foodRetail = "07"
    case grainStorage = "08"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .agricultureLaboratory:
            return String(localized: "Agriculture Laboratory", comment: "Agriculture and Food Infrastructure Subtype")
        case .animalFeedlot:
            return String(localized: "Animal Feedlot", comment: "Agriculture and Food Infrastructure Subtype")
        case .commercialFoodDistributionCenter:
            return String(localized: "Commercial Food Distribution Center", comment: "Agriculture and Food Infrastructure Subtype")
        case .farmRanch:
            return String(localized: "Farm/Ranch", comment: "Agriculture and Food Infrastructure Subtype")
        case .foodDistribution:
            return String(localized: "Food Distribution", comment: "Agriculture and Food Infrastructure Subtype")
        case .foodProductionCenter:
            return String(localized: "Food Production Center", comment: "Agriculture and Food Infrastructure Subtype")
        case .foodRetail:
            return String(localized: "Food Retail", comment: "Agriculture and Food Infrastructure Subtype")
        case .grainStorage:
            return String(localized: "Grain Storage", comment: "Agriculture and Food Infrastructure Subtype")
        }
    }
}

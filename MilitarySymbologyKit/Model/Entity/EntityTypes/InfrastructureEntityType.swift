//
//  InfrastructureEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum InfrastructureEntityType: String, CaseIterable, EntityType {
    case agricultureAndFoodInfrastructure = "01"
    case bankingFinanceAndInsuranceInfrastructure = "02"
    case commercialInfrastructure = "03"
    case educationalFacilitiesInfrastructure = "04"
    case energyFacilityInfrastructure = "05"
    case governmentSiteInfrastructure = "06"
    case medicalInfrastructure = "07"
    case militaryInfrastructure = "08"
    case postalServicesInfrastructure = "09"
    case publicVenuesInfrastructure = "10"
    case specialNeedsInfrastructure = "11"
    case telecommunicationsInfrastructure = "12"
    case transportationInfrastructure = "13"
    case waterSupplyInfrastructure = "14"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .agricultureAndFoodInfrastructure:
            return String(localized: "Agriculture and Food Infrastructure", comment: "Infrastructure Entity Type")
            
        case .bankingFinanceAndInsuranceInfrastructure:
            return String(localized: "Banking, Finance, and Insurance Infrastructure", comment: "Infrastructure Entity Type")
            
        case .commercialInfrastructure:
            return String(localized: "Commercial Infrastructure", comment: "Infrastructure Entity Type")
            
        case .educationalFacilitiesInfrastructure:
            return String(localized: "Educational Facilities Infrastructure", comment: "Infrastructure Entity Type")
            
        case .energyFacilityInfrastructure:
            return String(localized: "Energy Facility Infrastructure", comment: "Infrastructure Entity Type")
            
        case .governmentSiteInfrastructure:
            return String(localized: "Government Site Infrastructure", comment: "Infrastructure Entity Type")
            
        case .medicalInfrastructure:
            return String(localized: "Medical Infrastructure", comment: "Infrastructure Entity Type")
            
        case .militaryInfrastructure:
            return String(localized: "Military Infrastructure", comment: "Infrastructure Entity Type")
            
        case .postalServicesInfrastructure:
            return String(localized: "Postal Services Infrastructure", comment: "Infrastructure Entity Type")
            
        case .publicVenuesInfrastructure:
            return String(localized: "Public Venues Infrastructure", comment: "Infrastructure Entity Type")
            
        case .specialNeedsInfrastructure:
            return String(localized: "Special Needs Infrastructure", comment: "Infrastructure Entity Type")
            
        case .telecommunicationsInfrastructure:
            return String(localized: "Telecommunications Infrastructure", comment: "Infrastructure Entity Type")
            
        case .transportationInfrastructure:
            return String(localized: "Transportation Infrastructure", comment: "Infrastructure Entity Type")
            
        case .waterSupplyInfrastructure:
            return String(localized: "Water Supply Infrastructure", comment: "Infrastructure Entity Type")
        }
    }
}

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
            String(localized: "Agriculture and Food Infrastructure", comment: "Infrastructure Entity Type")
            
        case .bankingFinanceAndInsuranceInfrastructure:
            String(localized: "Banking, Finance, and Insurance Infrastructure", comment: "Infrastructure Entity Type")
            
        case .commercialInfrastructure:
            String(localized: "Commercial Infrastructure", comment: "Infrastructure Entity Type")
            
        case .educationalFacilitiesInfrastructure:
            String(localized: "Educational Facilities Infrastructure", comment: "Infrastructure Entity Type")
            
        case .energyFacilityInfrastructure:
            String(localized: "Energy Facility Infrastructure", comment: "Infrastructure Entity Type")
            
        case .governmentSiteInfrastructure:
            String(localized: "Government Site Infrastructure", comment: "Infrastructure Entity Type")
            
        case .medicalInfrastructure:
            String(localized: "Medical Infrastructure", comment: "Infrastructure Entity Type")
            
        case .militaryInfrastructure:
            String(localized: "Military Infrastructure", comment: "Infrastructure Entity Type")
            
        case .postalServicesInfrastructure:
            String(localized: "Postal Services Infrastructure", comment: "Infrastructure Entity Type")
            
        case .publicVenuesInfrastructure:
            String(localized: "Public Venues Infrastructure", comment: "Infrastructure Entity Type")
            
        case .specialNeedsInfrastructure:
            String(localized: "Special Needs Infrastructure", comment: "Infrastructure Entity Type")
            
        case .telecommunicationsInfrastructure:
            String(localized: "Telecommunications Infrastructure", comment: "Infrastructure Entity Type")
            
        case .transportationInfrastructure:
            String(localized: "Transportation Infrastructure", comment: "Infrastructure Entity Type")
            
        case .waterSupplyInfrastructure:
            String(localized: "Water Supply Infrastructure", comment: "Infrastructure Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .agricultureAndFoodInfrastructure: AgricultureAndFoodInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .bankingFinanceAndInsuranceInfrastructure: BankingFinanceAndInsuranceInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .commercialInfrastructure: CommercialInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .educationalFacilitiesInfrastructure: EducationalFacilitiesInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .energyFacilityInfrastructure: EnergyFacilityInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .medicalInfrastructure: MedicalInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .militaryInfrastructure: MilitaryInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .postalServicesInfrastructure: PostalServicesInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .publicVenuesInfrastructure: PublicVenuesInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .specialNeedsInfrastructure: SpecialNeedsInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .telecommunicationsInfrastructure: TelecommunicationsInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .transportationInfrastructure: TransportationInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        case .waterSupplyInfrastructure: WaterSupplyInfrastructureSubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
    
}

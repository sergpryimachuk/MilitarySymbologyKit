//
//  LawEnforcementEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum LawEnforcementEntityType: String, CaseIterable, EntityType {
    case alcoholTobaccoFirearmsExplosivesATF = "01"
    case borderPatrol = "02"
    case customsService = "03"
    case drugEnforcementAdministrationDEA = "04"
    case departmentOfJusticeDOJ = "05"
    case federalBureauOfInvestigationFBI = "06"
    case police = "07"
    case prison = "08"
    case unitedStatesSecretServiceUSSS = "09"
    case transportationSecurityAdministrationTSA = "10"
    case coastGuard = "11"
    case usMarshalsService = "12"
    case internalSecurityForce = "13"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .alcoholTobaccoFirearmsExplosivesATF:
            String(localized: "Bureau of Alcohol Tobacco Firearms and Explosives (ATF) (Department of Justice)", comment: "Law Enforcement Entity Type")

        case .borderPatrol:
            String(localized: "Border Patrol", comment: "Law Enforcement Entity Type")

        case .customsService:
            String(localized: "Customs Service", comment: "Law Enforcement Entity Type")

        case .drugEnforcementAdministrationDEA:
            String(localized: "Drug Enforcement Administration (DEA)", comment: "Law Enforcement Entity Type")

        case .departmentOfJusticeDOJ:
            String(localized: "Department of Justice (DOJ)", comment: "Law Enforcement Entity Type")

        case .federalBureauOfInvestigationFBI:
            String(localized: "Federal Bureau of Investigation (FBI)", comment: "Law Enforcement Entity Type")

        case .police:
            String(localized: "Police", comment: "Law Enforcement Entity Type")

        case .prison:
            String(localized: "Prison", comment: "Law Enforcement Entity Type")

        case .unitedStatesSecretServiceUSSS:
            String(localized: "United States Secret Service (USSS)", comment: "Law Enforcement Entity Type")

        case .transportationSecurityAdministrationTSA:
            String(localized: "Transportation Security Administration (TSA)", comment: "Law Enforcement Entity Type")

        case .coastGuard:
            String(localized: "Coast Guard", comment: "Law Enforcement Entity Type")

        case .usMarshalsService:
            String(localized: "US Marshals Service", comment: "Law Enforcement Entity Type")

        case .internalSecurityForce:
            String(localized: "Internal Security Force", comment: "Law Enforcement Entity Type")
        }
    }

    var subtypes: [AnyEntitySubtype] {
        AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
    }
}

//
//  LandUnitLawEnforcementEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public extension LandUnitEntity {
    enum LawEnforcementEntityType: String, CaseIterable, EntityType {
        case none = "00"
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

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)
            case .alcoholTobaccoFirearmsExplosivesATF:
                String(localized: "Bureau of Alcohol Tobacco Firearms and Explosives (ATF) (Department of Justice)", bundle: .module, comment: "Law Enforcement Entity Type")

            case .borderPatrol:
                String(localized: "Border Patrol", bundle: .module, comment: "Law Enforcement Entity Type")

            case .customsService:
                String(localized: "Customs Service", bundle: .module, comment: "Law Enforcement Entity Type")

            case .drugEnforcementAdministrationDEA:
                String(localized: "Drug Enforcement Administration (DEA)", bundle: .module, comment: "Law Enforcement Entity Type")

            case .departmentOfJusticeDOJ:
                String(localized: "Department of Justice (DOJ)", bundle: .module, comment: "Law Enforcement Entity Type")

            case .federalBureauOfInvestigationFBI:
                String(localized: "Federal Bureau of Investigation (FBI)", bundle: .module, comment: "Law Enforcement Entity Type")

            case .police:
                String(localized: "Police", bundle: .module, comment: "Law Enforcement Entity Type")

            case .prison:
                String(localized: "Prison", bundle: .module, comment: "Law Enforcement Entity Type")

            case .unitedStatesSecretServiceUSSS:
                String(localized: "United States Secret Service (USSS)", bundle: .module, comment: "Law Enforcement Entity Type")

            case .transportationSecurityAdministrationTSA:
                String(localized: "Transportation Security Administration (TSA)", bundle: .module, comment: "Law Enforcement Entity Type")

            case .coastGuard:
                String(localized: "Coast Guard", bundle: .module, comment: "Law Enforcement Entity Type")

            case .usMarshalsService:
                String(localized: "US Marshals Service", bundle: .module, comment: "Law Enforcement Entity Type")

            case .internalSecurityForce:
                String(localized: "Internal Security Force", bundle: .module, comment: "Law Enforcement Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            default:
                AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

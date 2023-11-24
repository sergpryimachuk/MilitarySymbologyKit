//
//  LawEnforcementEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum LawEnforcementEntityType: String, CaseIterable, Identifiable {
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
            return String(localized: "Bureau of Alcohol Tobacco Firearms and Explosives (ATF) (Department of Justice)", comment: "Law Enforcement Entity Type")
            
        case .borderPatrol:
            return String(localized: "Border Patrol", comment: "Law Enforcement Entity Type")
            
        case .customsService:
            return String(localized: "Customs Service", comment: "Law Enforcement Entity Type")
            
        case .drugEnforcementAdministrationDEA:
            return String(localized: "Drug Enforcement Administration (DEA)", comment: "Law Enforcement Entity Type")
            
        case .departmentOfJusticeDOJ:
            return String(localized: "Department of Justice (DOJ)", comment: "Law Enforcement Entity Type")
            
        case .federalBureauOfInvestigationFBI:
            return String(localized: "Federal Bureau of Investigation (FBI)", comment: "Law Enforcement Entity Type")
            
        case .police:
            return String(localized: "Police", comment: "Law Enforcement Entity Type")
            
        case .prison:
            return String(localized: "Prison", comment: "Law Enforcement Entity Type")
            
        case .unitedStatesSecretServiceUSSS:
            return String(localized: "United States Secret Service (USSS)", comment: "Law Enforcement Entity Type")
            
        case .transportationSecurityAdministrationTSA:
            return String(localized: "Transportation Security Administration (TSA)", comment: "Law Enforcement Entity Type")
            
        case .coastGuard:
            return String(localized: "Coast Guard", comment: "Law Enforcement Entity Type")
            
        case .usMarshalsService:
            return String(localized: "US Marshals Service", comment: "Law Enforcement Entity Type")
            
        case .internalSecurityForce:
            return String(localized: "Internal Security Force", comment: "Law Enforcement Entity Type")
        }
    }
}

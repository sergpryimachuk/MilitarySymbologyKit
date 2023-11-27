//
//  LawEnforcementSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum LawEnforcementSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case ATF = "01"
    case borderPatrol = "02"
    case customsService = "03"
    case DEA = "04"
    case DOJ = "05"
    case FBI = "06"
    case police = "07"
    case prison = "08"
    case USSS = "09"
    case TSA = "10"
    case coastGuard = "11"
    case USMarshalsService = "12"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None", comment: "Law Enforcement Subtype")
        case .ATF:
            return String(localized: "Bureau of Alcohol-Tobacco-Firearms and Explosives (ATF) (Department of Justice)", comment: "Law Enforcement Subtype")
        case .borderPatrol:
            return String(localized: "Border Patrol", comment: "Law Enforcement Subtype")
        case .customsService:
            return String(localized: "Customs Service", comment: "Law Enforcement Subtype")
        case .DEA:
            return String(localized: "Drug Enforcement Administration (DEA)", comment: "Law Enforcement Subtype")
        case .DOJ:
            return String(localized: "Department of Justice (DOJ)", comment: "Law Enforcement Subtype")
        case .FBI:
            return String(localized: "Federal Bureau of Investigation (FBI)", comment: "Law Enforcement Subtype")
        case .police:
            return String(localized: "Police", comment: "Law Enforcement Subtype")
        case .prison:
            return String(localized: "Prison", comment: "Law Enforcement Subtype")
        case .USSS:
            return String(localized: "United States Secret Service (USSS)", comment: "Law Enforcement Subtype")
        case .TSA:
            return String(localized: "Transportation Security Administration (TSA)", comment: "Law Enforcement Subtype")
        case .coastGuard:
            return String(localized: "Coast Guard", comment: "Law Enforcement Subtype")
        case .USMarshalsService:
            return String(localized: "US Marshals Service", comment: "Law Enforcement Subtype")
        }
    }
}

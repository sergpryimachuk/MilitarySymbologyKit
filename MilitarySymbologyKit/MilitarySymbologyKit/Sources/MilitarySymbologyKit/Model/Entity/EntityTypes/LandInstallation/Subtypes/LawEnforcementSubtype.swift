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
            String(localized: "None", comment: "Law Enforcement Subtype")
        case .ATF:
            String(localized: "Bureau of Alcohol-Tobacco-Firearms and Explosives (ATF) (Department of Justice)", comment: "Law Enforcement Subtype")
        case .borderPatrol:
            String(localized: "Border Patrol", comment: "Law Enforcement Subtype")
        case .customsService:
            String(localized: "Customs Service", comment: "Law Enforcement Subtype")
        case .DEA:
            String(localized: "Drug Enforcement Administration (DEA)", comment: "Law Enforcement Subtype")
        case .DOJ:
            String(localized: "Department of Justice (DOJ)", comment: "Law Enforcement Subtype")
        case .FBI:
            String(localized: "Federal Bureau of Investigation (FBI)", comment: "Law Enforcement Subtype")
        case .police:
            String(localized: "Police", comment: "Law Enforcement Subtype")
        case .prison:
            String(localized: "Prison", comment: "Law Enforcement Subtype")
        case .USSS:
            String(localized: "United States Secret Service (USSS)", comment: "Law Enforcement Subtype")
        case .TSA:
            String(localized: "Transportation Security Administration (TSA)", comment: "Law Enforcement Subtype")
        case .coastGuard:
            String(localized: "Coast Guard", comment: "Law Enforcement Subtype")
        case .USMarshalsService:
            String(localized: "US Marshals Service", comment: "Law Enforcement Subtype")
        }
    }
}

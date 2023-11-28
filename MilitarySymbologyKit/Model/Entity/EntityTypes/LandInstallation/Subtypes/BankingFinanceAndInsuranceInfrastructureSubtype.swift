//
//  BankingFinanceAndInsuranceInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum BankingFinanceAndInsuranceInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case atm = "01"
    case bank = "02"
    case bullionStorage = "03"
    case economicInfrastructureAsset = "04"
    case federalReserveBank = "05"
    case financialExchange = "06"
    case financialServicesOther = "07"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .atm:
            return String(localized: "ATM", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .bank:
            return String(localized: "Bank", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .bullionStorage:
            return String(localized: "Bullion Storage", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .economicInfrastructureAsset:
            return String(localized: "Economic Infrastructure Asset", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .federalReserveBank:
            return String(localized: "Federal Reserve Bank", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .financialExchange:
            return String(localized: "Financial Exchange", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .financialServicesOther:
            return String(localized: "Financial Services-Other", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        }
    }
}

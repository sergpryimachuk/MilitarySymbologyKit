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
            String(localized: "None")
        case .atm:
            String(localized: "ATM", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .bank:
            String(localized: "Bank", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .bullionStorage:
            String(localized: "Bullion Storage", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .economicInfrastructureAsset:
            String(localized: "Economic Infrastructure Asset", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .federalReserveBank:
            String(localized: "Federal Reserve Bank", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .financialExchange:
            String(localized: "Financial Exchange", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .financialServicesOther:
            String(localized: "Financial Services-Other", comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        }
    }
}

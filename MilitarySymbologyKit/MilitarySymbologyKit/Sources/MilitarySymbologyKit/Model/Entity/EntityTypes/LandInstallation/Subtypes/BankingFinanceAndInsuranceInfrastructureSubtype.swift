//
//  BankingFinanceAndInsuranceInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum BankingFinanceAndInsuranceInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case atm = "01"
    case bank = "02"
    case bullionStorage = "03"
    case economicInfrastructureAsset = "04"
    case federalReserveBank = "05"
    case financialExchange = "06"
    case financialServicesOther = "07"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .atm:
            String(localized: "ATM", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .bank:
            String(localized: "Bank", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .bullionStorage:
            String(localized: "Bullion Storage", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .economicInfrastructureAsset:
            String(localized: "Economic Infrastructure Asset", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .federalReserveBank:
            String(localized: "Federal Reserve Bank", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .financialExchange:
            String(localized: "Financial Exchange", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        case .financialServicesOther:
            String(localized: "Financial Services-Other", bundle: .module, comment: "Banking, Finance, and Insurance Infrastructure Subtype")
        }
    }
}

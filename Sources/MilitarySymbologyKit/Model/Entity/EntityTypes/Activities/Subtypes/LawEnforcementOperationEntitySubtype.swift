//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum LawEnforcementOperationEntitySubtype: String, CaseIterable, EntitySubtype {
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
    case internalSecurityForce = "13"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .ATF:
            String(localized: "Bureau of Alcohol, Tobacco, Firearms and Explosives (ATF)", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .borderPatrol:
            String(localized: "Border Patrol", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .customsService:
            String(localized: "Customs Service", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .DEA:
            String(localized: "Drug Enforcement Administration (DEA)", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .DOJ:
            String(localized: "Department of Justice (DOJ)", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .FBI:
            String(localized: "Federal Bureau of Investigation (FBI)", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .police:
            String(localized: "Police", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .prison:
            String(localized: "Prison", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .USSS:
            String(localized: "United States Secret Service (USSS)", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .TSA:
            String(localized: "Transportation Security Administration (TSA)", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .coastGuard:
            String(localized: "Coast Guard", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .USMarshalsService:
            String(localized: "US Marshals Service", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        case .internalSecurityForce:
            String(localized: "Internal Security Force", bundle: .module, comment: "Law Enforcement Operation Entity Subtype")
        }
    }
}

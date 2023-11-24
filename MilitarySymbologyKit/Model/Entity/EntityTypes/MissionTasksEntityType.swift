//
//  MissionTasksEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum MissionTasksEntityType: String, CaseIterable, Identifiable {
    case block = "01"
    case breach = "02"
    case bypass = "03"
    case canalize = "04"
    case clear = "05"
    case counterattack = "06"
    case counterattackByFire = "07"
    case delay = "08"
    case destroy = "09"
    case disrupt = "10"
    case fix = "11"
    case followAndAssume = "12"
    case followAndSupport = "13"
    case interdict = "14"
    case isolate = "15"
    case neutralize = "16"
    case ossiru = "17"
    case penetrate = "18"
    case reliefInPlace = "19"
    case retireRetirement = "20"
    case secure = "21"
    case security = "22"
    case seize = "23"
    case withdraw = "24"
    case withdrawUnderPressure = "25"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .block:
            return String(localized: "Block", comment: "Mission Tasks Entity Type")
        case .breach:
            return String(localized: "Breach", comment: "Mission Tasks Entity Type")
        case .bypass:
            return String(localized: "Bypass", comment: "Mission Tasks Entity Type")
        case .canalize:
            return String(localized: "Canalize", comment: "Mission Tasks Entity Type")
        case .clear:
            return String(localized: "Clear", comment: "Mission Tasks Entity Type")
        case .counterattack:
            return String(localized: "Counterattack", comment: "Mission Tasks Entity Type")
        case .counterattackByFire:
            return String(localized: "Counterattack by Fire", comment: "Mission Tasks Entity Type")
        case .delay:
            return String(localized: "Delay", comment: "Mission Tasks Entity Type")
        case .destroy:
            return String(localized: "Destroy", comment: "Mission Tasks Entity Type")
        case .disrupt:
            return String(localized: "Disrupt", comment: "Mission Tasks Entity Type")
        case .fix:
            return String(localized: "Fix", comment: "Mission Tasks Entity Type")
        case .followAndAssume:
            return String(localized: "Follow and Assume", comment: "Mission Tasks Entity Type")
        case .followAndSupport:
            return String(localized: "Follow and Support", comment: "Mission Tasks Entity Type")
        case .interdict:
            return String(localized: "Interdict", comment: "Mission Tasks Entity Type")
        case .isolate:
            return String(localized: "Isolate", comment: "Mission Tasks Entity Type")
        case .neutralize:
            return String(localized: "Neutralize", comment: "Mission Tasks Entity Type")
        case .ossiru:
            return String(localized: "Ossiru", comment: "Mission Tasks Entity Type")
        case .penetrate:
            return String(localized: "Penetrate", comment: "Mission Tasks Entity Type")
        case .reliefInPlace:
            return String(localized: "Relief in Place", comment: "Mission Tasks Entity Type")
        case .retireRetirement:
            return String(localized: "Retire/Retirement", comment: "Mission Tasks Entity Type")
        case .secure:
            return String(localized: "Secure", comment: "Mission Tasks Entity Type")
        case .security:
            return String(localized: "Security", comment: "Mission Tasks Entity Type")
        case .seize:
            return String(localized: "Seize", comment: "Mission Tasks Entity Type")
        case .withdraw:
            return String(localized: "Withdraw", comment: "Mission Tasks Entity Type")
        case .withdrawUnderPressure:
            return String(localized: "Withdraw Under Pressure", comment: "Mission Tasks Entity Type")
        }
    }
}

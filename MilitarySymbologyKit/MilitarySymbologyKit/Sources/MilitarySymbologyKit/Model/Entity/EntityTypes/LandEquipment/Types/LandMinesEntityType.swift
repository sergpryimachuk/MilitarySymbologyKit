//
//  LandMinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum LandMinesEntityType: String, CaseIterable, EntityType {
    case landMine = "01"
    case antipersonnelLandMineAPL = "02"
    case antitankMine = "03"
    case improvisedExplosivesDeviceIED = "04"
    case lessThanLethal = "05"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .landMine:
            String(localized: "Land Mine")

        case .antipersonnelLandMineAPL:
            String(localized: "Antipersonnel Land Mine (APL)", bundle: .module, comment: "Land Mines Entity Type")

        case .antitankMine:
            String(localized: "Antitank Mine", bundle: .module, comment: "Land Mines Entity Type")

        case .improvisedExplosivesDeviceIED:
            String(localized: "Improvised Explosives Device (IED)", bundle: .module, comment: "Land Mines Entity Type")

        case .lessThanLethal:
            String(localized: "Less than Lethal", bundle: .module, comment: "Land Mines Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum AmphibiousWarfareShipEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case amphibiousCommandShip = "01"
    case amphibiousAssaultNonspecified = "02"
    case amphibiousAssaultShipGeneral = "03"
    case amphibiousAssaultShipMultipurpose = "04"
    case amphibiousAssaultShipHelicopter = "05"
    case amphibiousTransportDock = "06"
    case landingShip = "07"
    case landingCraft = "08"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .amphibiousCommandShip:
            String(localized: "Amphibious Command Ship", comment: "Amphibious Warfare Ship Entity Subtype")

        case .amphibiousAssaultNonspecified:
            String(localized: "Amphibious Assault, Non-specified", comment: "Amphibious Warfare Ship Entity Subtype")

        case .amphibiousAssaultShipGeneral:
            String(localized: "Amphibious Assault Ship, General", comment: "Amphibious Warfare Ship Entity Subtype")

        case .amphibiousAssaultShipMultipurpose:
            String(localized: "Amphibious Assault Ship, Multipurpose", comment: "Amphibious Warfare Ship Entity Subtype")

        case .amphibiousAssaultShipHelicopter:
            String(localized: "Amphibious Assault Ship, Helicopter", comment: "Amphibious Warfare Ship Entity Subtype")

        case .amphibiousTransportDock:
            String(localized: "Amphibious Transport Dock", comment: "Amphibious Warfare Ship Entity Subtype")

        case .landingShip:
            String(localized: "Landing Ship", comment: "Amphibious Warfare Ship Entity Subtype")

        case .landingCraft:
            String(localized: "Landing Craft", comment: "Amphibious Warfare Ship Entity Subtype")
        }
    }
}

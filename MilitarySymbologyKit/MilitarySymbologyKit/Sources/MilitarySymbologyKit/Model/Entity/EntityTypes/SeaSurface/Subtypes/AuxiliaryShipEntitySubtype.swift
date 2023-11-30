//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum AuxiliaryShipEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case ammunitionShip = "01"
    case navalStoresShip = "02"
    case auxiliaryFlagShip = "03"
    case intelligenceCollector = "04"
    case oceanographicResearchShip = "05"
    case surveyShip = "06"
    case hospitalShip = "07"
    case navalCargoShip = "08"
    case combatSupportShipFast = "09"
    case oilerReplenishment = "10"
    case repairShip = "11"
    case submarineTender = "12"
    case tugOceanGoing = "13"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .ammunitionShip:
            return String(localized: "Ammunition Ship", comment: "Auxiliary Ship Entity Subtype")

        case .navalStoresShip:
            return String(localized: "Naval Stores Ship", comment: "Auxiliary Ship Entity Subtype")

        case .auxiliaryFlagShip:
            return String(localized: "Auxiliary Flag Ship", comment: "Auxiliary Ship Entity Subtype")

        case .intelligenceCollector:
            return String(localized: "Intelligence Collector", comment: "Auxiliary Ship Entity Subtype")

        case .oceanographicResearchShip:
            return String(localized: "Oceanographic Research Ship", comment: "Auxiliary Ship Entity Subtype")

        case .surveyShip:
            return String(localized: "Survey Ship", comment: "Auxiliary Ship Entity Subtype")

        case .hospitalShip:
            return String(localized: "Hospital Ship", comment: "Auxiliary Ship Entity Subtype")

        case .navalCargoShip:
            return String(localized: "Naval Cargo Ship", comment: "Auxiliary Ship Entity Subtype")

        case .combatSupportShipFast:
            return String(localized: "Combat Support Ship, Fast", comment: "Auxiliary Ship Entity Subtype")

        case .oilerReplenishment:
            return String(localized: "Oiler, Replenishment", comment: "Auxiliary Ship Entity Subtype")

        case .repairShip:
            return String(localized: "Repair Ship", comment: "Auxiliary Ship Entity Subtype")

        case .submarineTender:
            return String(localized: "Submarine Tender", comment: "Auxiliary Ship Entity Subtype")

        case .tugOceanGoing:
            return String(localized: "Tug, Ocean Going", comment: "Auxiliary Ship Entity Subtype")
        }
    }
}

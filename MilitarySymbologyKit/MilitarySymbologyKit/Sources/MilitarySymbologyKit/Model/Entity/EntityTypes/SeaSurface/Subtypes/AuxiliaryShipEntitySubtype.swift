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
            String(localized: "None")

        case .ammunitionShip:
            String(localized: "Ammunition Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .navalStoresShip:
            String(localized: "Naval Stores Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .auxiliaryFlagShip:
            String(localized: "Auxiliary Flag Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .intelligenceCollector:
            String(localized: "Intelligence Collector", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .oceanographicResearchShip:
            String(localized: "Oceanographic Research Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .surveyShip:
            String(localized: "Survey Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .hospitalShip:
            String(localized: "Hospital Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .navalCargoShip:
            String(localized: "Naval Cargo Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .combatSupportShipFast:
            String(localized: "Combat Support Ship, Fast", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .oilerReplenishment:
            String(localized: "Oiler, Replenishment", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .repairShip:
            String(localized: "Repair Ship", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .submarineTender:
            String(localized: "Submarine Tender", bundle: .module, comment: "Auxiliary Ship Entity Subtype")

        case .tugOceanGoing:
            String(localized: "Tug, Ocean Going", bundle: .module, comment: "Auxiliary Ship Entity Subtype")
        }
    }
}

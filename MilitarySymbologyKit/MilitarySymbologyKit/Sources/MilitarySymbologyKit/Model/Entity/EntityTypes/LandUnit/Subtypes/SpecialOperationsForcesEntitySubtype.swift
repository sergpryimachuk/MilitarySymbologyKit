//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum SpecialOperationsForcesEntitySubtype: String, CaseIterable, EntitySubtype {
    case fixedWingMISO = "01"
    case ground = "02"
    case specialBoat = "03"
    case specialSSNR = "04"
    case underwaterDemolitionTeam = "05"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .fixedWingMISO:
            String(localized: "Fixed Wing MISO", bundle: .module, comment: "Special Operations Forces Entity Subtype")

        case .ground:
            String(localized: "Ground", bundle: .module, comment: "Special Operations Forces Entity Subtype")

        case .specialBoat:
            String(localized: "Special Boat", bundle: .module, comment: "Special Operations Forces Entity Subtype")

        case .specialSSNR:
            String(localized: "Special SSNR", bundle: .module, comment: "Special Operations Forces Entity Subtype")

        case .underwaterDemolitionTeam:
            String(localized: "Underwater Demolition Team", bundle: .module, comment: "Special Operations Forces Entity Subtype")
        }
    }
}

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
            String(localized: "Fixed Wing MISO", comment: "Special Operations Forces Entity Subtype")

        case .ground:
            String(localized: "Ground", comment: "Special Operations Forces Entity Subtype")

        case .specialBoat:
            String(localized: "Special Boat", comment: "Special Operations Forces Entity Subtype")

        case .specialSSNR:
            String(localized: "Special SSNR", comment: "Special Operations Forces Entity Subtype")

        case .underwaterDemolitionTeam:
            String(localized: "Underwater Demolition Team", comment: "Special Operations Forces Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum MineClearingEquipmentEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case trailerMounted = "01"
    case mineClearingEquipmentOnTankChassis = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None", comment: "Mine Clearing Equipment Entity Subtype")

        case .trailerMounted:
            String(localized: "Trailer Mounted", comment: "Mine Clearing Equipment Entity Subtype")

        case .mineClearingEquipmentOnTankChassis:
            String(localized: "Mine Clearing Equipment on Tank Chassis", comment: "Mine Clearing Equipment Entity Subtype")
        }
    }
}

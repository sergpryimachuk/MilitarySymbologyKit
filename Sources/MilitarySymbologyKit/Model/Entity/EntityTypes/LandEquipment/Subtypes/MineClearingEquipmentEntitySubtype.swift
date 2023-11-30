//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum MineClearingEquipmentEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case trailerMounted = "01"
    case mineClearingEquipmentOnTankChassis = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Mine Clearing Equipment Entity Subtype")

        case .trailerMounted:
            String(localized: "Trailer Mounted", bundle: .module, comment: "Mine Clearing Equipment Entity Subtype")

        case .mineClearingEquipmentOnTankChassis:
            String(localized: "Mine Clearing Equipment on Tank Chassis", bundle: .module, comment: "Mine Clearing Equipment Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum DrillEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case drillMountedOnUtilityVehicle = "01"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .drillMountedOnUtilityVehicle:
            String(localized: "Drill Mounted on Utility Vehicle", bundle: .module, comment: "Drill Entity Subtype")
        }
    }
}

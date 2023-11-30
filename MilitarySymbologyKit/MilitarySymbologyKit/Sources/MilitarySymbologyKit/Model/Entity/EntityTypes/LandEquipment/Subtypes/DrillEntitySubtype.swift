//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum DrillEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case drillMountedOnUtilityVehicle = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .drillMountedOnUtilityVehicle:
            String(localized: "Drill Mounted on Utility Vehicle", bundle: .module, comment: "Drill Entity Subtype")
        }
    }
}

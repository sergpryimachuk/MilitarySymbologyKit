//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum FireFightingOperationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case fireHydrant = "01"
    case fireStation = "02"
    case otherWaterSupplyLocation = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .fireHydrant:
            String(localized: "Fire Hydrant", bundle: .module, comment: "Firefighting Operation Entity Subtype")
        case .fireStation:
            String(localized: "Fire Station", bundle: .module, comment: "Firefighting Operation Entity Subtype")
        case .otherWaterSupplyLocation:
            String(localized: "Other Water Supply Location", bundle: .module, comment: "Firefighting Operation Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum ServiceCraftYardEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bargeNotSelfPropelled = "01"
    case bargeSelfPropelled = "02"
    case tugHarbor = "03"
    case launch = "04"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .bargeNotSelfPropelled:
            String(localized: "Barge, Not Self-Propelled", comment: "Service Craft Yard Entity Subtype")

        case .bargeSelfPropelled:
            String(localized: "Barge, Self-Propelled", comment: "Service Craft Yard Entity Subtype")

        case .tugHarbor:
            String(localized: "Tug, Harbor", comment: "Service Craft Yard Entity Subtype")

        case .launch:
            String(localized: "Launch", comment: "Service Craft Yard Entity Subtype")
        }
    }
}

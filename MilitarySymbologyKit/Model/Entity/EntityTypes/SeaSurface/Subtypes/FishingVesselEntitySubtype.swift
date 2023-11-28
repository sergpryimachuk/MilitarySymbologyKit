//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum FishingVesselEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case drifter = "01"
    case trawler = "02"
    case dredger = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .drifter:
            return String(localized: "Drifter", comment: "Fishing Vessel Entity Subtype")

        case .trawler:
            return String(localized: "Trawler", comment: "Fishing Vessel Entity Subtype")

        case .dredger:
            return String(localized: "Dredger", comment: "Fishing Vessel Entity Subtype")
        }
    }
}

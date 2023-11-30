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
            String(localized: "None")

        case .drifter:
            String(localized: "Drifter", bundle: .module, comment: "Fishing Vessel Entity Subtype")

        case .trawler:
            String(localized: "Trawler", bundle: .module, comment: "Fishing Vessel Entity Subtype")

        case .dredger:
            String(localized: "Dredger", bundle: .module, comment: "Fishing Vessel Entity Subtype")
        }
    }
}

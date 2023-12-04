//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum FishingVesselEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case drifter = "01"
    case trawler = "02"
    case dredger = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .drifter:
            String(localized: "Drifter", bundle: .module, comment: "Fishing Vessel Entity Subtype")

        case .trawler:
            String(localized: "Trawler", bundle: .module, comment: "Fishing Vessel Entity Subtype")

        case .dredger:
            String(localized: "Dredger", bundle: .module, comment: "Fishing Vessel Entity Subtype")
        }
    }
}

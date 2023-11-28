//
//  Created with ♥ by Serhii Pryimachuk on 27.11.2023.
//

import Foundation

extension CyberspaceEntity.InfectionEntityType {
    enum APTEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case aptWithC2 = "01"
        case aptWithSelfPropagation = "02"
        case aptWithC2AndSelfPropagation = "03"
        case aptOther = "04"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                return String(localized: "None")

            case .aptWithC2:
                return String(localized: "APT with C2", comment: "APT Entity Subtype")

            case .aptWithSelfPropagation:
                return String(localized: "APT with Self Propagation", comment: "APT Entity Subtype")

            case .aptWithC2AndSelfPropagation:
                return String(localized: "APT with C2 and Self Propagation", comment: "APT Entity Subtype")

            case .aptOther:
                return String(localized: "APT Other", comment: "APT Entity Subtype")
            }
        }
    }
}

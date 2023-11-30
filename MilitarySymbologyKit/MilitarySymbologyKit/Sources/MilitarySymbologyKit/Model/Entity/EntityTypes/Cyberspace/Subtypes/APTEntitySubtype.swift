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
                String(localized: "None")

            case .aptWithC2:
                String(localized: "APT with C2", bundle: .module, comment: "APT Entity Subtype")

            case .aptWithSelfPropagation:
                String(localized: "APT with Self Propagation", bundle: .module, comment: "APT Entity Subtype")

            case .aptWithC2AndSelfPropagation:
                String(localized: "APT with C2 and Self Propagation", bundle: .module, comment: "APT Entity Subtype")

            case .aptOther:
                String(localized: "APT Other", bundle: .module, comment: "APT Entity Subtype")
            }
        }
    }
}

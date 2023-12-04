//
//  Created with ♥ by Serhii Pryimachuk on 27.11.2023.
//

import Foundation

public extension CyberspaceEntity.InfectionEntityType {
    enum NAPTEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case naptWithC2 = "01"
        case naptWithSelfPropagation = "02"
        case naptWithC2AndSelfPropagation = "03"
        case naptOther = "04"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .naptWithC2:
                String(localized: "NAPT with C2", bundle: .module, comment: "NAPT Entity Subtype")

            case .naptWithSelfPropagation:
                String(localized: "NAPT with Self Propagation", bundle: .module, comment: "NAPT Entity Subtype")

            case .naptWithC2AndSelfPropagation:
                String(localized: "NAPT with C2 and Self Propagation", bundle: .module, comment: "NAPT Entity Subtype")

            case .naptOther:
                String(localized: "NAPT Other", bundle: .module, comment: "NAPT Entity Subtype")
            }
        }
    }
}

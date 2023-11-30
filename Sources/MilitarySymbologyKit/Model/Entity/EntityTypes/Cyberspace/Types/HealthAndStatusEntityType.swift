//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension CyberspaceEntity {
    enum HealthAndStatusEntityType: String, CaseIterable, Identifiable, EntityType {
        case normal = "01"
        case networkOutage = "02"
        case unknown = "03"
        case impaired = "04"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .normal:
                String(localized: "Normal", bundle: .module, comment: "Health and Status Entity Type")

            case .networkOutage:
                String(localized: "Network Outage", bundle: .module, comment: "Health and Status Entity Type")

            case .unknown:
                String(localized: "Unknown", bundle: .module, comment: "Health and Status Entity Type")

            case .impaired:
                String(localized: "Impaired", bundle: .module, comment: "Health and Status Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

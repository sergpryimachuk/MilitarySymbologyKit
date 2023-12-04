//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension OceanographicEntity {
    enum OceanographyEntityType: String, CaseIterable, EntityType {
        public var subtypes: [AnyEntitySubtype] { [.none] }

        case bioluminescence = "01"
        case beachSlope = "02"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .bioluminescence:
                String(localized: "Bioluminescence", bundle: .module, comment: "Oceanography Entity Type")

            case .beachSlope:
                String(localized: "Beach Slope", bundle: .module, comment: "Oceanography Entity Type")
            }
        }
    }
}

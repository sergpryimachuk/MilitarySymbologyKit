//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension OceanographicEntity {
    enum OceanographyEntityType: String, CaseIterable, EntityType {
        var subtypes: [AnyEntitySubtype] { [.none] }
        
        case bioluminescence = "01"
        case beachSlope = "02"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .bioluminescence:
                String(localized: "Bioluminescence", comment: "Oceanography Entity Type")

            case .beachSlope:
                String(localized: "Beach Slope", comment: "Oceanography Entity Type")
            }
        }
    }
}

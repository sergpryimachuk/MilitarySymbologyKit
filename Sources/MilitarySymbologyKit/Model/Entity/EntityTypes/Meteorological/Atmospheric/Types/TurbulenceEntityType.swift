//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    enum TurbulenceEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case light = "01"
        case moderate = "02"
        case severe = "03"
        case extreme = "04"
        case mountainWaves = "05"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")
            case .light:
                String(localized: "Light", bundle: .module, comment: "Turbulence Entity Type")

            case .moderate:
                String(localized: "Moderate", bundle: .module, comment: "Turbulence Entity Type")

            case .severe:
                String(localized: "Severe", bundle: .module, comment: "Turbulence Entity Type")

            case .extreme:
                String(localized: "Extreme", bundle: .module, comment: "Turbulence Entity Type")

            case .mountainWaves:
                String(localized: "Mountain Waves", bundle: .module, comment: "Turbulence Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

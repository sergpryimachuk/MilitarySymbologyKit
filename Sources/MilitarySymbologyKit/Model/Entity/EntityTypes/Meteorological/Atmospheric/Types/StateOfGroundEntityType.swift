//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    enum StateOfGroundEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case withoutSnowOrMeasurableIceCover = "01"
        case withSnowOrMeasurableIceCover = "02"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .withoutSnowOrMeasurableIceCover:
                String(localized: "Without Snow or Measurable Ice Cover", bundle: .module, comment: "State of Ground Entity Type")

            case .withSnowOrMeasurableIceCover:
                String(localized: "With Snow or Measurable Ice Cover", bundle: .module, comment: "State of Ground Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .withoutSnowOrMeasurableIceCover:
                WithoutSnowOrMeasurableIceCoverEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .withSnowOrMeasurableIceCover:
                WithSnowOrMeasurableIceCoverEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

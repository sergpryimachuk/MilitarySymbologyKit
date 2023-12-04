//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    enum CloudCoverEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case cloudCoverageSymbols = "01"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .cloudCoverageSymbols:
                String(localized: "Cloud Coverage Symbols", bundle: .module, comment: "Cloud Cover Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            case .cloudCoverageSymbols:
                CloudCoverageSymbolsEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    public enum IcingEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case clearIcing = "01"
        case rimeIcing = "02"
        case mixedIcing = "03"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")
            case .clearIcing:
                String(localized: "Clear Icing", bundle: .module, comment: "Icing Entity Type")

            case .rimeIcing:
                String(localized: "Rime Icing", bundle: .module, comment: "Icing Entity Type")

            case .mixedIcing:
                String(localized: "Mixed Icing", bundle: .module, comment: "Icing Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            LightMediumSevereEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

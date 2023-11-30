//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension MineWarfareEntity {
    public enum NegativeReacquisitionGeneralEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case bottom = "01"
        case moored = "02"
        case floating = "03"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Negative Reacquisition - General Entity Type")

            case .bottom:
                String(localized: "Negative Reacquisition-Bottom", bundle: .module, comment: "Negative Reacquisition - General Entity Type")

            case .moored:
                String(localized: "Negative Reacquisition-Moored", bundle: .module, comment: "Negative Reacquisition - General Entity Type")

            case .floating:
                String(localized: "Negative Reacquisition-Floating", bundle: .module, comment: "Negative Reacquisition - General Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

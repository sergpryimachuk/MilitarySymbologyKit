//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension MineWarfareEntity {
    enum NegativeReacquisitionGeneralEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case bottom = "01"
        case moored = "02"
        case floating = "03"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None", comment: "Negative Reacquisition - General Entity Type")

            case .bottom:
                String(localized: "Negative Reacquisition-Bottom", comment: "Negative Reacquisition - General Entity Type")

            case .moored:
                String(localized: "Negative Reacquisition-Moored", comment: "Negative Reacquisition - General Entity Type")

            case .floating:
                String(localized: "Negative Reacquisition-Floating", comment: "Negative Reacquisition - General Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

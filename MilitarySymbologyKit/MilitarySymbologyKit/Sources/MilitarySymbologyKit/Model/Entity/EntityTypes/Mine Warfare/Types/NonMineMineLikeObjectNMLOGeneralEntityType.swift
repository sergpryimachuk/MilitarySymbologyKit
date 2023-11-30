//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension MineWarfareEntity {
    enum NonMineMineLikeObjectNMLOGeneralEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case bottom = "01"
        case moored = "02"
        case floating = "03"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")

            case .bottom:
                String(localized: "Non-Mine Mine-Like Object-Bottom", bundle: .module, comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")

            case .moored:
                String(localized: "Non-Mine Mine-Like Object-Moored", bundle: .module, comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")

            case .floating:
                String(localized: "Non-Mine Mine-Like Object-Floating", bundle: .module, comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

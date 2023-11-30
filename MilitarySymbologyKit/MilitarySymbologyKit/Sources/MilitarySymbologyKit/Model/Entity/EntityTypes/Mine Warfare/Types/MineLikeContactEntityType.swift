//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension MineWarfareEntity {
    enum MineLikeContactEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case milcoGeneral = "01"
        case milcoBottom = "02"
        case milcoMoored = "03"
        case milcoFloating = "04"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Mine-Like Contact Entity Type")

            case .milcoGeneral:
                String(localized: "MILCO - General", bundle: .module, comment: "Mine-Like Contact Entity Type")

            case .milcoBottom:
                String(localized: "MILCO - Bottom", bundle: .module, comment: "Mine-Like Contact Entity Type")

            case .milcoMoored:
                String(localized: "MILCO - Moored", bundle: .module, comment: "Mine-Like Contact Entity Type")

            case .milcoFloating:
                String(localized: "MILCO - Floating", bundle: .module, comment: "Mine-Like Contact Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                [.none]
            default:
                MILCOConfidenceLevelSubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

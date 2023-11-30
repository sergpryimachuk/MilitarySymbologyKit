//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension MineWarfareEntity {
    public enum MineLikeEchoMILECGeneralEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case mineLikeEchoBottom = "01"
        case mineLikeEchoMoored = "02"
        case mineLikeEchoFloating = "03"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Mine-Like Echo (MILEC) - General Entity Type")

            case .mineLikeEchoBottom:
                String(localized: "Mine-Like Echo-Bottom", bundle: .module, comment: "Mine-Like Echo (MILEC) - General Entity Type")

            case .mineLikeEchoMoored:
                String(localized: "Mine-Like Echo-Moored", bundle: .module, comment: "Mine-Like Echo (MILEC) - General Entity Type")

            case .mineLikeEchoFloating:
                String(localized: "Mine-Like Echo-Floating", bundle: .module, comment: "Mine-Like Echo (MILEC) - General Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

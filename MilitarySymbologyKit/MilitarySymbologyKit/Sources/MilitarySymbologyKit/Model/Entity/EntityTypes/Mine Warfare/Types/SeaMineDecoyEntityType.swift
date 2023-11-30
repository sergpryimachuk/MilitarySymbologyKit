//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension MineWarfareEntity {
    public enum SeaMineDecoyEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case seaMineDecoyBottom = "01"
        case seaMineDecoyMoored = "02"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .seaMineDecoyBottom:
                String(localized: "Sea Mine Decoy-Bottom", bundle: .module, comment: "Sea Mine Decoy Entity Type")

            case .seaMineDecoyMoored:
                String(localized: "Sea Mine Decoy-Moored", bundle: .module, comment: "Sea Mine Decoy Entity Type")
            case .none:
                String(localized: "None", bundle: .module, comment: "Sea Mine Decoy Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

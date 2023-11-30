//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension MineWarfareEntity {
    enum SeaMineDecoyEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case seaMineDecoyBottom = "01"
        case seaMineDecoyMoored = "02"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .seaMineDecoyBottom:
                String(localized: "Sea Mine Decoy-Bottom", bundle: .module, comment: "Sea Mine Decoy Entity Type")

            case .seaMineDecoyMoored:
                String(localized: "Sea Mine Decoy-Moored", bundle: .module, comment: "Sea Mine Decoy Entity Type")
            case .none:
                String(localized: "None", bundle: .module, comment: "Sea Mine Decoy Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

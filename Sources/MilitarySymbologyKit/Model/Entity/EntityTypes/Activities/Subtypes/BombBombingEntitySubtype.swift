//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum BombBombingEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bombThreat = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .bombThreat:
            String(localized: "Bomb Threat", bundle: .module, comment: "Bomb/Bombing Entity Subtype")
        }
    }
}

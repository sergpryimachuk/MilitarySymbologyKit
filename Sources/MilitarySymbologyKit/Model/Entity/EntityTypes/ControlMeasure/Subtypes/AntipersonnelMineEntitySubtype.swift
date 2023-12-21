//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum AntipersonnelMineEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case antipersonnelMineWithDirectionalEffects = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .antipersonnelMineWithDirectionalEffects:
            return String(localized: "Antipersonnel Mine with Directional Effects", bundle: .module, comment: "Antipersonnel Mine Entity Subtype")
        }
    }
}

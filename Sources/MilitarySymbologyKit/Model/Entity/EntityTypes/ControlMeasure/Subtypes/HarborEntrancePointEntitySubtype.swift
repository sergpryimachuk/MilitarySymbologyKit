//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum HarborEntrancePointEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case a = "01"
    case q = "02"
    case х = "03"
    case y = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .a:
            return String(localized: "A", bundle: .module, comment: "Harbor Entrance Point Entity Subtype")
        case .q:
            return String(localized: "Q", bundle: .module, comment: "Harbor Entrance Point Entity Subtype")
        case .х:
            return String(localized: "Х", bundle: .module, comment: "Harbor Entrance Point Entity Subtype")
        case .y:
            return String(localized: "Y", bundle: .module, comment: "Harbor Entrance Point Entity Subtype")
        }
    }
}

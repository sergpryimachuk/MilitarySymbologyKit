//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum VolcanicEruptionEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case volcanicAsh = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .volcanicAsh:
            String(localized: "Volcanic Ash", bundle: .module, comment: "Volcanic Eruption Entity Subtype")
        }
    }
}

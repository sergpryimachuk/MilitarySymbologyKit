//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum FogEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case shallowPatches = "01"
    case shallowContinuous = "02"
    case patchy = "03"
    case skyVisible = "04"
    case skyObscured = "05"
    case freezingSkyVisible = "06"
    case freezingSkyObscured = "07"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Fog Entity Subtype")

        case .shallowPatches:
            String(localized: "Shallow Patches", bundle: .module, comment: "Fog Entity Subtype")

        case .shallowContinuous:
            String(localized: "Shallow Continuous", bundle: .module, comment: "Fog Entity Subtype")

        case .patchy:
            String(localized: "Patchy", bundle: .module, comment: "Fog Entity Subtype")

        case .skyVisible:
            String(localized: "Sky Visible", bundle: .module, comment: "Fog Entity Subtype")

        case .skyObscured:
            String(localized: "Sky Obscured", bundle: .module, comment: "Fog Entity Subtype")

        case .freezingSkyVisible:
            String(localized: "Freezing-Sky Visible", bundle: .module, comment: "Fog Entity Subtype")

        case .freezingSkyObscured:
            String(localized: "Freezing-Sky Obscured", bundle: .module, comment: "Fog Entity Subtype")
        }
    }
}

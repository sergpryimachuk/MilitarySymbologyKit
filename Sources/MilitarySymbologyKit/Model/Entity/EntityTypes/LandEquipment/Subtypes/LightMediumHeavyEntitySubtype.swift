//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum LightMediumHeavyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case medium = "02"
    case heavy = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .light:
            String(localized: "Light", bundle: .module, comment: "Light/Medium/Heavy Entity Subtype")

        case .medium:
            String(localized: "Medium", bundle: .module, comment: "Light/Medium/Heavy Entity Subtype")

        case .heavy:
            String(localized: "Heavy", bundle: .module, comment: "Light/Medium/Heavy Entity Subtype")
        }
    }
}

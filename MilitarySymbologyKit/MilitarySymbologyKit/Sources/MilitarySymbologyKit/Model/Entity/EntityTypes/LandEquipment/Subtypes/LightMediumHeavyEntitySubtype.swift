//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum LightMediumHeavyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case medium = "02"
    case heavy = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .light:
            String(localized: "Light", comment: "Light/Medium/Heavy Entity Subtype")

        case .medium:
            String(localized: "Medium", comment: "Light/Medium/Heavy Entity Subtype")

        case .heavy:
            String(localized: "Heavy", comment: "Light/Medium/Heavy Entity Subtype")
        }
    }
}

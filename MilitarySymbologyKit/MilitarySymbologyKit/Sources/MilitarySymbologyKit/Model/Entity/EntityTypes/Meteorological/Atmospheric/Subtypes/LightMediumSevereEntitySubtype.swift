//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum LightMediumSevereEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case medium = "02"
    case severe = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .light:
            String(localized: "Light", comment: "Light/Medium/Severe Entity Subtype")

        case .medium:
            String(localized: "Medium", comment: "Light/Medium/Severe Entity Subtype")

        case .severe:
            String(localized: "Severe", comment: "Light/Medium/Severe Entity Subtype")
        }
    }
}

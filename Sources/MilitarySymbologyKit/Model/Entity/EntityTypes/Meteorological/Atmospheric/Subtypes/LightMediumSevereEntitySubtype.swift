//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum LightMediumSevereEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case medium = "02"
    case severe = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .light:
            String(localized: "Light", bundle: .module, comment: "Light/Medium/Severe Entity Subtype")

        case .medium:
            String(localized: "Medium", bundle: .module, comment: "Light/Medium/Severe Entity Subtype")

        case .severe:
            String(localized: "Severe", bundle: .module, comment: "Light/Medium/Severe Entity Subtype")
        }
    }
}

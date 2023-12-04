//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum LightHeavyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case heavy = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .light:
            String(localized: "Light", bundle: .module, comment: "Light/Heavy Entity Subtype")

        case .heavy:
            String(localized: "Heavy", bundle: .module, comment: "Light/Heavy Entity Subtype")
        }
    }
}

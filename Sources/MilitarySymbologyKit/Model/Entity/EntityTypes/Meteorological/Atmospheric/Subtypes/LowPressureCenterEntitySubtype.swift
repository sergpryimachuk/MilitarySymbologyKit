//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum LowPressureCenterEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case cycloneCenter = "01"
    case tropopauseLow = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .cycloneCenter:
            String(localized: "Cyclone Center", bundle: .module, comment: "Low Pressure Center Entity Subtype")

        case .tropopauseLow:
            String(localized: "Tropopause Low", bundle: .module, comment: "Low Pressure Center Entity Subtype")
        }
    }
}

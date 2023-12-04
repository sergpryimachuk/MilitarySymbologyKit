//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum HighPressureCenterEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case anticycloneCenter = "01"
    case tropopauseHigh = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .anticycloneCenter:
            String(localized: "Anticyclone Center", bundle: .module, comment: "High Pressure Center Entity Subtype")

        case .tropopauseHigh:
            String(localized: "Tropopause High", bundle: .module, comment: "High Pressure Center Entity Subtype")
        }
    }
}

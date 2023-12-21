//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum VerticalObstructionsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case towerLow = "01"
    case towerHigh = "02"
    case overheadWire = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .towerLow:
            return String(localized: "Tower-Low", bundle: .module, comment: "Vertical Obstructions Entity Subtype")
        case .towerHigh:
            return String(localized: "Tower-High", bundle: .module, comment: "Vertical Obstructions Entity Subtype")
        case .overheadWire:
            return String(localized: "Overhead Wire", bundle: .module, comment: "Vertical Obstructions Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum LeisureCraftMotorizedEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case rigidHullInflatableBoat = "01"
    case speedboat = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .rigidHullInflatableBoat:
            String(localized: "Rigid-Hull Inflatable Boat (RHIB)", bundle: .module, comment: "Leisure Craft Motorized Entity Subtype")

        case .speedboat:
            String(localized: "Speedboat", bundle: .module, comment: "Leisure Craft Motorized Entity Subtype")
        }
    }
}

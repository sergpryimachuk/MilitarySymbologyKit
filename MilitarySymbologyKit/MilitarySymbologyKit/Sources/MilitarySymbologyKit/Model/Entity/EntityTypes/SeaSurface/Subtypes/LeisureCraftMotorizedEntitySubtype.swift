//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum LeisureCraftMotorizedEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case rigidHullInflatableBoat = "01"
    case speedboat = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .rigidHullInflatableBoat:
            String(localized: "Rigid-Hull Inflatable Boat (RHIB)", comment: "Leisure Craft Motorized Entity Subtype")

        case .speedboat:
            String(localized: "Speedboat", comment: "Leisure Craft Motorized Entity Subtype")
        }
    }
}

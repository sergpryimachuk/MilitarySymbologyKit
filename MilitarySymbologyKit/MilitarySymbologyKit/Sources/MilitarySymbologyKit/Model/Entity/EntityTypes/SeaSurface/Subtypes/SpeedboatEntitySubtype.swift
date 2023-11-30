//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum SpeedboatEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case rigidHullInflatableBoatRHIB = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .rigidHullInflatableBoatRHIB:
            String(localized: "Rigid-Hull Inflatable Boat (RHIB)", bundle: .module, comment: "Speedboat Entity Subtype")
        }
    }
}

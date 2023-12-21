//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum TetrahedronsDragonsTeethSimilarObstaclesEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case fixedAndPrefabricated = "01"
    case movable = "02"
    case movableAndPrefabricated = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .fixedAndPrefabricated:
            return String(localized: "Fixed and Prefabricated", bundle: .module, comment: "Tetrahedrons, Dragons Teeth, and Other Similar Obstacles Entity Subtype")
        case .movable:
            return String(localized: "Movable", bundle: .module, comment: "Tetrahedrons, Dragons Teeth, and Other Similar Obstacles Entity Subtype")
        case .movableAndPrefabricated:
            return String(localized: "Movable and Prefabricated", bundle: .module, comment: "Tetrahedrons, Dragons Teeth, and Other Similar Obstacles Entity Subtype")
        }
    }
}

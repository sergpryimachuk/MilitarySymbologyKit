//
//  Created with ♥ by Serhii Pryimachuk on 18.12.2023.
//

import Foundation

public enum LandCivilianEntity: String, CaseIterable, Entity {
    case civilian = "11"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .civilian:
            String(localized: "Civilian", bundle: .module, comment: "Land Civilian Entity")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .civilian:
            CivilianEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

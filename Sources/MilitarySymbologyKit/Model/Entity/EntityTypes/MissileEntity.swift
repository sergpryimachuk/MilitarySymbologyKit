//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public enum MissileEntity: String, CaseIterable, Entity {
    case missile = "11"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .missile:
            String(localized: "Missile")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .missile:
            [.none]
        }
    }
}

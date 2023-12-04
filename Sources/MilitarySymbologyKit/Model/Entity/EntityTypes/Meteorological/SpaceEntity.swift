//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public enum SpaceEntity: String, CaseIterable, Entity {
    case space = "11"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .space:
            String(localized: "Space", bundle: .module, comment: "Space Entity")
        }
    }

    public var types: [AnyEntityType] {
        [.none]
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

enum SpaceEntity: String, CaseIterable, Entity {
    case space = "11"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .space:
            String(localized: "Space", bundle: .module, comment: "Space Entity")
        }
    }

    var types: [AnyEntityType] {
        [.none]
    }
}

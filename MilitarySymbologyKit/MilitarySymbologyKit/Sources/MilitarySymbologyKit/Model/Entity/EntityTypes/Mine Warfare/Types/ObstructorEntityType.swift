//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension MineWarfareEntity {
    public enum ObstructorEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case neutralized = "01"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module, comment: "Not selected.")
            case .neutralized:
                String(localized: "Neutralized Obstructor", bundle: .module, comment: "Obstructor Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

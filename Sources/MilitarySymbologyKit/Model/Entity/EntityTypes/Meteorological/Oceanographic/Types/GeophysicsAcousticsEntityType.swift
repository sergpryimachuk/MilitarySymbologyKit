//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension OceanographicEntity {
    enum GeophysicsAcousticsEntityType: String, CaseIterable, EntityType {
        public var subtypes: [AnyEntitySubtype] { [.none] }

        case none = "00"
        case mineWarfareBottomDescriptors = "01"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .mineWarfareBottomDescriptors:
                String(localized: "Mine Warfare (MIW) Bottom Descriptors", bundle: .module, comment: "Geophysics/Acoustics Entity Type")
            case .none:
                String(localized: "None", bundle: .module)
            }
        }
    }
}

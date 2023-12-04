//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension SeaSubsurfaceEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case submersible = "01"
        case autonomousUnderwaterVehicleAUV_UUV = "02"
        case diver = "03"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .submersible:
                String(localized: "Submersible", bundle: .module, comment: "Civilian Entity Type")

            case .autonomousUnderwaterVehicleAUV_UUV:
                String(localized: "Autonomous Underwater Vehicle (AUV)/Underwater Vehicle (UUV)", bundle: .module, comment: "Civilian Entity Type")

            case .diver:
                String(localized: "Diver", bundle: .module, comment: "Civilian Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

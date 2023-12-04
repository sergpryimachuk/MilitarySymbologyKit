//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension SeaSubsurfaceEntity {
    enum MilitaryEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case submarine = "01"
        case otherSubmersible = "02"
        case nonsubmarine = "03"
        case autonomousUnderwaterVehicleAUV_UUV = "04"
        case diver = "05"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .submarine:
                String(localized: "Submarine", bundle: .module, comment: "Military Entity Type")

            case .otherSubmersible:
                String(localized: "Other Submersible", bundle: .module, comment: "Military Entity Type")

            case .nonsubmarine:
                String(localized: "Nonsubmarine", bundle: .module, comment: "Military Entity Type")

            case .autonomousUnderwaterVehicleAUV_UUV:
                String(localized: "Autonomous Underwater Vehicle (AUV)/Unmanned Underwater Vehicle (UUV)", bundle: .module, comment: "Military Entity Type")

            case .diver:
                String(localized: "Diver", bundle: .module, comment: "Military Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .submarine:
                SubmarineEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                [.none]
            }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AirUnitEntity {
    enum MilitaryEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case fixedWing = "01"
        case rotaryWing = "02"
        case unmannedAircraftUA_UAV_UAS_RPV = "03"
        case verticalTakeoffUAVVT_UAV = "04"
        case lighterThanAir = "05"
        case airship = "06"
        case tetheredLighterThanAir = "07"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .fixedWing:
                String(localized: "Fixed-Wing", bundle: .module, comment: "Military Entity Type")

            case .rotaryWing:
                String(localized: "Rotary-Wing", bundle: .module, comment: "Military Entity Type")

            case .unmannedAircraftUA_UAV_UAS_RPV:
                String(localized: "Unmanned Aircraft (UA)/Unmanned Aerial Vehicle (UAV)/Unmanned Aircraft System (UAS)/Remote Piloted Vehicle (RPV)", bundle: .module, comment: "Military Entity Type")

            case .verticalTakeoffUAVVT_UAV:
                String(localized: "Vertical-Takeoff UAV (VT-UAV)", bundle: .module, comment: "Military Entity Type")

            case .lighterThanAir:
                String(localized: "Lighter Than Air", bundle: .module, comment: "Military Entity Type")

            case .airship:
                String(localized: "Airship", bundle: .module, comment: "Military Entity Type")

            case .tetheredLighterThanAir:
                String(localized: "Tethered Lighter Than Air", bundle: .module, comment: "Military Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .fixedWing:
                FixedWingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                [.none]
            }
        }
    }
}

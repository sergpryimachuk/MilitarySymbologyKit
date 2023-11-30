//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AirUnitEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case fixedWing = "01"
        case rotaryWing = "02"
        case unmannedAircraftUA_UAV_UAS_RPV = "03"
        case lighterThanAir = "04"
        case airship = "05"
        case tetheredLighterThanAir = "06"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .fixedWing:
                String(localized: "Fixed Wing", bundle: .module, comment: "Civilian Entity Type")

            case .rotaryWing:
                String(localized: "Rotary Wing", bundle: .module, comment: "Civilian Entity Type")

            case .unmannedAircraftUA_UAV_UAS_RPV:
                String(localized: "Unmanned Aircraft (UA)/Unmanned Aerial Vehicle (UAV)/Unmanned Aircraft System (UAS)/Remote Piloted Vehicle (RPV)", bundle: .module, comment: "Civilian Entity Type")

            case .lighterThanAir:
                String(localized: "Lighter Than Air", bundle: .module, comment: "Civilian Entity Type")

            case .airship:
                String(localized: "Airship", bundle: .module, comment: "Civilian Entity Type")

            case .tetheredLighterThanAir:
                String(localized: "Tethered Lighter than Air", bundle: .module, comment: "Civilian Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

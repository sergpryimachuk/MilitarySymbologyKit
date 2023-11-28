//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

extension AirUnitEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case fixedWing = "01"
        case rotaryWing = "02"
        case unmannedAircraftUA_UAV_UAS_RPV = "03"
        case lighterThanAir = "04"
        case airship = "05"
        case tetheredLighterThanAir = "06"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .fixedWing:
                String(localized: "Fixed Wing", comment: "Civilian Entity Type")

            case .rotaryWing:
                String(localized: "Rotary Wing", comment: "Civilian Entity Type")

            case .unmannedAircraftUA_UAV_UAS_RPV:
                String(localized: "Unmanned Aircraft (UA)/Unmanned Aerial Vehicle (UAV)/Unmanned Aircraft System (UAS)/Remote Piloted Vehicle (RPV)", comment: "Civilian Entity Type")

            case .lighterThanAir:
                String(localized: "Lighter Than Air", comment: "Civilian Entity Type")

            case .airship:
                String(localized: "Airship", comment: "Civilian Entity Type")

            case .tetheredLighterThanAir:
                String(localized: "Tethered Lighter than Air", comment: "Civilian Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

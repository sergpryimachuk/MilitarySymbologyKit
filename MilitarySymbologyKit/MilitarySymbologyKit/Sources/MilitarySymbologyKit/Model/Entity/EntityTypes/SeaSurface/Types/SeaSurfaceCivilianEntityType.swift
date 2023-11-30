//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

extension SeaSurfaceEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case merchantShip = "01"
        case fishingVessel = "02"
        case lawEnforcementVessel = "03"
        case leisureCraftSailing = "04"
        case leisureCraftMotorized = "05"
        case jetSki = "06"
        case unmannedSurfaceWaterVehicleUSV = "07"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .merchantShip:
                String(localized: "Merchant Ship", bundle: .module, comment: "Civilian Entity Type")

            case .fishingVessel:
                String(localized: "Fishing Vessel", bundle: .module, comment: "Civilian Entity Type")

            case .lawEnforcementVessel:
                String(localized: "Law Enforcement Vessel", bundle: .module, comment: "Civilian Entity Type")

            case .leisureCraftSailing:
                String(localized: "Leisure Craft, Sailing", bundle: .module, comment: "Civilian Entity Type")

            case .leisureCraftMotorized:
                String(localized: "Leisure Craft, Motorized", bundle: .module, comment: "Civilian Entity Type")

            case .jetSki:
                String(localized: "Jet Ski", bundle: .module, comment: "Civilian Entity Type")

            case .unmannedSurfaceWaterVehicleUSV:
                String(localized: "Unmanned Surface Water Vehicle (USV)", bundle: .module, comment: "Civilian Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            switch self {
            case .merchantShip:
                MerchantShipEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .fishingVessel:
                FishingVesselEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .leisureCraftMotorized:
                LeisureCraftMotorizedEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                [.none]
            }
        }
    }
}

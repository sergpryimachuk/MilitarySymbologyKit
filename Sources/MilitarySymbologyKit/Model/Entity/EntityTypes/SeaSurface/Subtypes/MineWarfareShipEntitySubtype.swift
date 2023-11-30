//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum MineWarfareShipEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case mineLayer = "01"
    case mineSweeper = "02"
    case mineSweeperDrone = "03"
    case mineHunter = "04"
    case mineCountermeasures = "05"
    case mineCountermeasuresSupportShip = "06"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .mineLayer:
            String(localized: "Mine Layer", bundle: .module, comment: "Mine Warfare Ship Entity Subtype")

        case .mineSweeper:
            String(localized: "Mine Sweeper", bundle: .module, comment: "Mine Warfare Ship Entity Subtype")

        case .mineSweeperDrone:
            String(localized: "Mine Sweeper, Drone", bundle: .module, comment: "Mine Warfare Ship Entity Subtype")

        case .mineHunter:
            String(localized: "Mine Hunter", bundle: .module, comment: "Mine Warfare Ship Entity Subtype")

        case .mineCountermeasures:
            String(localized: "Mine Countermeasures", bundle: .module, comment: "Mine Warfare Ship Entity Subtype")

        case .mineCountermeasuresSupportShip:
            String(localized: "Mine Countermeasures, Support Ship", bundle: .module, comment: "Mine Warfare Ship Entity Subtype")
        }
    }
}

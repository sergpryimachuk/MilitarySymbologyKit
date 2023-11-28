//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum MineWarfareShipEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case mineLayer = "01"
    case mineSweeper = "02"
    case mineSweeperDrone = "03"
    case mineHunter = "04"
    case mineCountermeasures = "05"
    case mineCountermeasuresSupportShip = "06"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .mineLayer:
            return String(localized: "Mine Layer", comment: "Mine Warfare Ship Entity Subtype")
            
        case .mineSweeper:
            return String(localized: "Mine Sweeper", comment: "Mine Warfare Ship Entity Subtype")
            
        case .mineSweeperDrone:
            return String(localized: "Mine Sweeper, Drone", comment: "Mine Warfare Ship Entity Subtype")
            
        case .mineHunter:
            return String(localized: "Mine Hunter", comment: "Mine Warfare Ship Entity Subtype")
            
        case .mineCountermeasures:
            return String(localized: "Mine Countermeasures", comment: "Mine Warfare Ship Entity Subtype")
            
        case .mineCountermeasuresSupportShip:
            return String(localized: "Mine Countermeasures, Support Ship", comment: "Mine Warfare Ship Entity Subtype")
        }
    }
}

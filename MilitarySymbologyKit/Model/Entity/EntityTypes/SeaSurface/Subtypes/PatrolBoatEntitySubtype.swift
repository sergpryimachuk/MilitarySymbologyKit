//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum PatrolBoatEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case patrolCraftSubmarineChaserEscortGeneral = "01"
    case patrolShipGeneral = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .patrolCraftSubmarineChaserEscortGeneral:
            return String(localized: "Patrol Craft, Submarine Chaser/Escort, General", comment: "Patrol Boat Entity Subtype")
            
        case .patrolShipGeneral:
            return String(localized: "Patrol Ship, General", comment: "Patrol Boat Entity Subtype")
        }
    }
}

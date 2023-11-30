//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum PatrolBoatEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case patrolCraftSubmarineChaserEscortGeneral = "01"
    case patrolShipGeneral = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .patrolCraftSubmarineChaserEscortGeneral:
            String(localized: "Patrol Craft, Submarine Chaser/Escort, General", bundle: .module, comment: "Patrol Boat Entity Subtype")

        case .patrolShipGeneral:
            String(localized: "Patrol Ship, General", bundle: .module, comment: "Patrol Boat Entity Subtype")
        }
    }
}

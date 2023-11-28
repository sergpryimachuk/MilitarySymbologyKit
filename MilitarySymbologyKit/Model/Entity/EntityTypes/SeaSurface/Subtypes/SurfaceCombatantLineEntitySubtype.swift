//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum SurfaceCombatantLineEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case battleship = "01"
    case cruiser = "02"
    case destroyer = "03"
    case frigate = "04"
    case corvette = "05"
    case littoralCombatantShip = "06"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .battleship:
            return String(localized: "Battleship", comment: "Surface Combatant Line Entity Subtype")

        case .cruiser:
            return String(localized: "Cruiser", comment: "Surface Combatant Line Entity Subtype")

        case .destroyer:
            return String(localized: "Destroyer", comment: "Surface Combatant Line Entity Subtype")

        case .frigate:
            return String(localized: "Frigate", comment: "Surface Combatant Line Entity Subtype")

        case .corvette:
            return String(localized: "Corvette", comment: "Surface Combatant Line Entity Subtype")

        case .littoralCombatantShip:
            return String(localized: "Littoral Combatant Ship", comment: "Surface Combatant Line Entity Subtype")
        }
    }
}

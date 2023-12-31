//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum SurfaceCombatantLineEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case battleship = "01"
    case cruiser = "02"
    case destroyer = "03"
    case frigate = "04"
    case corvette = "05"
    case littoralCombatantShip = "06"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .battleship:
            String(localized: "Battleship", bundle: .module, comment: "Surface Combatant Line Entity Subtype")

        case .cruiser:
            String(localized: "Cruiser", bundle: .module, comment: "Surface Combatant Line Entity Subtype")

        case .destroyer:
            String(localized: "Destroyer", bundle: .module, comment: "Surface Combatant Line Entity Subtype")

        case .frigate:
            String(localized: "Frigate", bundle: .module, comment: "Surface Combatant Line Entity Subtype")

        case .corvette:
            String(localized: "Corvette", bundle: .module, comment: "Surface Combatant Line Entity Subtype")

        case .littoralCombatantShip:
            String(localized: "Littoral Combatant Ship", bundle: .module, comment: "Surface Combatant Line Entity Subtype")
        }
    }
}

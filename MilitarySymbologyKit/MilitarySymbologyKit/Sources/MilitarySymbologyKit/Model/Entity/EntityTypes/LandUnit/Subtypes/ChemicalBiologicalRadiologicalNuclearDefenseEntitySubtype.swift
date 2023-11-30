//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum ChemicalBiologicalRadiologicalNuclearDefenseEntitySubtype: String, CaseIterable, EntitySubtype {
    case mechanized = "01"
    case motorized = "02"
    case reconnaissance = "03"
    case reconnaissanceArmored = "04"
    case reconnaissanceEquipped = "05"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .mechanized:
            return String(localized: "Mechanized", comment: "CBRND Defense Entity Subtype")

        case .motorized:
            return String(localized: "Motorized", comment: "CBRND Defense Entity Subtype")

        case .reconnaissance:
            return String(localized: "Reconnaissance", comment: "CBRND Defense Entity Subtype")

        case .reconnaissanceArmored:
            return String(localized: "Reconnaissance Armored", comment: "CBRND Defense Entity Subtype")

        case .reconnaissanceEquipped:
            return String(localized: "Reconnaissance Equipped", comment: "CBRND Defense Entity Subtype")
        }
    }
}

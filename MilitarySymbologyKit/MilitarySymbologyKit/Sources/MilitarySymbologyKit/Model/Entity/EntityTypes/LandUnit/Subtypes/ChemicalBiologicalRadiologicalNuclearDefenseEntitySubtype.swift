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
            String(localized: "Mechanized", comment: "CBRND Defense Entity Subtype")

        case .motorized:
            String(localized: "Motorized", comment: "CBRND Defense Entity Subtype")

        case .reconnaissance:
            String(localized: "Reconnaissance", comment: "CBRND Defense Entity Subtype")

        case .reconnaissanceArmored:
            String(localized: "Reconnaissance Armored", comment: "CBRND Defense Entity Subtype")

        case .reconnaissanceEquipped:
            String(localized: "Reconnaissance Equipped", comment: "CBRND Defense Entity Subtype")
        }
    }
}

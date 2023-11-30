//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum ChemicalBiologicalRadiologicalNuclearDefenseEntitySubtype: String, CaseIterable, EntitySubtype {
    case mechanized = "01"
    case motorized = "02"
    case reconnaissance = "03"
    case reconnaissanceArmored = "04"
    case reconnaissanceEquipped = "05"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .mechanized:
            String(localized: "Mechanized", bundle: .module, comment: "CBRND Defense Entity Subtype")

        case .motorized:
            String(localized: "Motorized", bundle: .module, comment: "CBRND Defense Entity Subtype")

        case .reconnaissance:
            String(localized: "Reconnaissance", bundle: .module, comment: "CBRND Defense Entity Subtype")

        case .reconnaissanceArmored:
            String(localized: "Reconnaissance Armored", bundle: .module, comment: "CBRND Defense Entity Subtype")

        case .reconnaissanceEquipped:
            String(localized: "Reconnaissance Equipped", bundle: .module, comment: "CBRND Defense Entity Subtype")
        }
    }
}

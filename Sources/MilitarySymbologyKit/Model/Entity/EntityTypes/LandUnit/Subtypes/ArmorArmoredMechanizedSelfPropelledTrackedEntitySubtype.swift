//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum ArmorArmoredMechanizedSelfPropelledTrackedEntitySubtype: String, CaseIterable, EntitySubtype {
    case reconnaissanceCavalryScout = "01"
    case amphibious = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .reconnaissanceCavalryScout:
            String(localized: "Reconnaissance/Cavalry/Scout", bundle: .module, comment: "Armor/Armored/Mechanized/Self-Propelled/Tracked Entity Subtype")

        case .amphibious:
            String(localized: "Amphibious", bundle: .module, comment: "Armor/Armored/Mechanized/Self-Propelled/Tracked Entity Subtype")
        }
    }
}

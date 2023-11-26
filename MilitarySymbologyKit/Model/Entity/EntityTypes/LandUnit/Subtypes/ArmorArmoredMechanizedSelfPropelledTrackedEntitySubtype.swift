//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum ArmorArmoredMechanizedSelfPropelledTrackedEntitySubtype: String, CaseIterable, EntitySubtype {
    case reconnaissanceCavalryScout = "01"
    case amphibious = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .reconnaissanceCavalryScout:
            return String(localized: "Reconnaissance/Cavalry/Scout", comment: "Armor/Armored/Mechanized/Self-Propelled/Tracked Entity Subtype")
            
        case .amphibious:
            return String(localized: "Amphibious", comment: "Armor/Armored/Mechanized/Self-Propelled/Tracked Entity Subtype")
        }
    }
}

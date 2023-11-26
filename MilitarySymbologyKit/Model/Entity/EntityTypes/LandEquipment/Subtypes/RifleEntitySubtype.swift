//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum RifleEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case singleShotRifle = "01"
    case semiautomaticRifle = "02"
    case automaticRifle = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .singleShotRifle:
            return String(localized: "Single Shot Rifle", comment: "Rifle Entity Subtype")
            
        case .semiautomaticRifle:
            return String(localized: "Semiautomatic Rifle", comment: "Rifle Entity Subtype")
            
        case .automaticRifle:
            return String(localized: "Automatic Rifle", comment: "Rifle Entity Subtype")
        }
    }
}

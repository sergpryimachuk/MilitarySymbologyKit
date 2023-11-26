//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum AirDefenseEntitySubtype: String, CaseIterable, EntitySubtype {
    case mainGunSystem = "01"
    case missile = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .mainGunSystem:
            return String(localized: "Main Gun System", comment: "Air Defense Entity Subtype")
            
        case .missile:
            return String(localized: "Missile", comment: "Air Defense Entity Subtype")
        }
    }
}

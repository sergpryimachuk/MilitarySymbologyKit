//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum BombBombingEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bombThreat = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .bombThreat:
            return String(localized: "Bomb Threat", comment: "Bomb/Bombing Entity Subtype")
        }
    }
}

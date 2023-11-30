//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum DustOrSandEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case lightToModerate = "01"
    case severe = "02"
    case dustDevil = "03"
    case blowingDustOrSand = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .lightToModerate:
            String(localized: "Light to Moderate", comment: "Dust or Sand Entity Subtype")
            
        case .severe:
            String(localized: "Severe", comment: "Dust or Sand Entity Subtype")
            
        case .dustDevil:
            String(localized: "Dust Devil", comment: "Dust or Sand Entity Subtype")
            
        case .blowingDustOrSand:
            String(localized: "Blowing Dust or Sand", comment: "Dust or Sand Entity Subtype")
        }
    }
}

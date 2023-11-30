//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum HailEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case lightNotAssociatedWithThunder = "01"
    case moderateHeavyNotAssociatedWithThunder = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .lightNotAssociatedWithThunder:
            return String(localized: "Light not Associated with Thunder", comment: "Hail Entity Subtype")
            
        case .moderateHeavyNotAssociatedWithThunder:
            return String(localized: "Moderate/Heavy not Associated with Thunder", comment: "Hail Entity Subtype")
        }
    }
}

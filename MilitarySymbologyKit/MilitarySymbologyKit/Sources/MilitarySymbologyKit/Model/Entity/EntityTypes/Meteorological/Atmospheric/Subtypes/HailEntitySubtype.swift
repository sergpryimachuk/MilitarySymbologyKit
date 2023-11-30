//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

public enum HailEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case lightNotAssociatedWithThunder = "01"
    case moderateHeavyNotAssociatedWithThunder = "02"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .lightNotAssociatedWithThunder:
            String(localized: "Light not Associated with Thunder", bundle: .module, comment: "Hail Entity Subtype")
            
        case .moderateHeavyNotAssociatedWithThunder:
            String(localized: "Moderate/Heavy not Associated with Thunder", bundle: .module, comment: "Hail Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum LightModerateHeavyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case moderateHeavy = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .light:
            return String(localized: "Light", comment: "Entity Subtype")
            
        case .moderateHeavy:
            return String(localized: "Moderate/Heavy", comment: "Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum LightHeavyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case heavy = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .light:
            return String(localized: "Light", comment: "Light/Heavy Entity Subtype")
            
        case .heavy:
            return String(localized: "Heavy", comment: "Light/Heavy Entity Subtype")
        }
    }
}

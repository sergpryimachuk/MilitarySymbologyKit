//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

public enum LightModerateHeavyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case moderateHeavy = "02"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .light:
            String(localized: "Light", bundle: .module, comment: "Entity Subtype")
            
        case .moderateHeavy:
            String(localized: "Moderate/Heavy", bundle: .module, comment: "Entity Subtype")
        }
    }
}

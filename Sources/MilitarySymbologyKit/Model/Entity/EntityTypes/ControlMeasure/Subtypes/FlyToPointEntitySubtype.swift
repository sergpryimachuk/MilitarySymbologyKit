//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum FlyToPointEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case flyToPointSonobuoy = "01"
    case flyToPointWeapon = "02"
    case flyToPointNormal = "03"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
            
        case .flyToPointSonobuoy:
            return String(localized: "Fly-To-Point (Sonobuoy)", bundle: .module, comment: "Fly-To-Point Entity Subtype")
            
        case .flyToPointWeapon:
            return String(localized: "Fly-To-Point (Weapon)", bundle: .module, comment: "Fly-To-Point Entity Subtype")
            
        case .flyToPointNormal:
            return String(localized: "Fly-To-Point (Normal)", bundle: .module, comment: "Fly-To-Point Entity Subtype")
        }
    }
}

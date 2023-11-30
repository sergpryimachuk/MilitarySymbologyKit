//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum IEDEventEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case iedExplosion = "01"
    case prematureIEDExplosion = "02"
    case iedCache = "03"
    case iedSuicideBomber = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .iedExplosion:
            return String(localized: "IED Explosion", comment: "IED Event Entity Subtype")
            
        case .prematureIEDExplosion:
            return String(localized: "Premature IED Explosion", comment: "IED Event Entity Subtype")
            
        case .iedCache:
            return String(localized: "IED Cache", comment: "IED Event Entity Subtype")
            
        case .iedSuicideBomber:
            return String(localized: "IED Suicide Bomber", comment: "IED Event Entity Subtype")
        }
    }
}

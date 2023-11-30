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
            String(localized: "None")
            
        case .iedExplosion:
            String(localized: "IED Explosion", bundle: .module, comment: "IED Event Entity Subtype")
            
        case .prematureIEDExplosion:
            String(localized: "Premature IED Explosion", bundle: .module, comment: "IED Event Entity Subtype")
            
        case .iedCache:
            String(localized: "IED Cache", bundle: .module, comment: "IED Event Entity Subtype")
            
        case .iedSuicideBomber:
            String(localized: "IED Suicide Bomber", bundle: .module, comment: "IED Event Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 27.11.2023.
//  

import Foundation

extension CyberspaceEntity.InfectionEntityType {
    enum NAPTEntitySubtype: String, CaseIterable, EntitySubtype {
        case none = "00"
        case naptWithC2 = "01"
        case naptWithSelfPropagation = "02"
        case naptWithC2AndSelfPropagation = "03"
        case naptOther = "04"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .naptWithC2:
                return String(localized: "NAPT with C2", comment: "NAPT Entity Subtype")
                
            case .naptWithSelfPropagation:
                return String(localized: "NAPT with Self Propagation", comment: "NAPT Entity Subtype")
                
            case .naptWithC2AndSelfPropagation:
                return String(localized: "NAPT with C2 and Self Propagation", comment: "NAPT Entity Subtype")
                
            case .naptOther:
                return String(localized: "NAPT Other", comment: "NAPT Entity Subtype")
            }
        }
    }
}

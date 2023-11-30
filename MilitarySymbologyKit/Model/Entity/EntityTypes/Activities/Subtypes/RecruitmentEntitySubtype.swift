//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum RecruitmentEntitySubtype: String, CaseIterable, EntitySubtype {
    case willing = "01"
    case coercedImpressed = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .willing:
            return String(localized: "Willing", comment: "Recruitment Entity Subtype")
        case .coercedImpressed:
            return String(localized: "Coerced/Impressed", comment: "Recruitment Entity Subtype")
        }
    }
}

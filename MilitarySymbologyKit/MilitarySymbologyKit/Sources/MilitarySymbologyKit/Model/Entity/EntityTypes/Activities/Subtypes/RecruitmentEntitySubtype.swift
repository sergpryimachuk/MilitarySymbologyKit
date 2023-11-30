//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

public enum RecruitmentEntitySubtype: String, CaseIterable, EntitySubtype {
    case willing = "01"
    case coercedImpressed = "02"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .willing:
            String(localized: "Willing", bundle: .module, comment: "Recruitment Entity Subtype")
        case .coercedImpressed:
            String(localized: "Coerced/Impressed", bundle: .module, comment: "Recruitment Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum MILCOConfidenceLevelSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case confidenceLevel1 = "01"
    case confidenceLevel2 = "02"
    case confidenceLevel3 = "03"
    case confidenceLevel4 = "04"
    case confidenceLevel5 = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None", comment: "MILCO General Entity Subtype")
            
        case .confidenceLevel1:
            return String(localized: "MILCO - Confidence-Level 1", comment: "MILCO General Confidence-Leve Entity Subtype")
            
        case .confidenceLevel2:
            return String(localized: "MILCO - Confidence-Level 2", comment: "MILCO General Confidence-Leve Entity Subtype")
            
        case .confidenceLevel3:
            return String(localized: "MILCO - Confidence-Level 3", comment: "MILCO General Confidence-Leve Entity Subtype")
            
        case .confidenceLevel4:
            return String(localized: "MILCO - Confidence-Level 4", comment: "MILCO General Confidence-Leve Entity Subtype")
            
        case .confidenceLevel5:
            return String(localized: "MILCO - Confidence-Level 5", comment: "MILCO General Confidence-Leve Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum PressureTendencyEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case riseThenFallHigher = "01"
    case riseThenSteady = "02"
    case rise = "03"
    case riseThenRiseHigher = "04"
    case steady = "05"
    case fallThenRiseLower = "06"
    case fallThenSteady = "07"
    case fall = "08"
    case riseThenFallLower = "09"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .riseThenFallHigher:
            return String(localized: "Rise Then Fall Higher", comment: "Pressure Tendency Entity Subtype")
            
        case .riseThenSteady:
            return String(localized: "Rise Then Steady", comment: "Pressure Tendency Entity Subtype")
            
        case .rise:
            return String(localized: "Rise", comment: "Pressure Tendency Entity Subtype")
            
        case .riseThenRiseHigher:
            return String(localized: "Rise Then Rise Higher", comment: "Pressure Tendency Entity Subtype")
            
        case .steady:
            return String(localized: "Steady", comment: "Pressure Tendency Entity Subtype")
            
        case .fallThenRiseLower:
            return String(localized: "Fall Then Rise Lower", comment: "Pressure Tendency Entity Subtype")
            
        case .fallThenSteady:
            return String(localized: "Fall Then Steady", comment: "Pressure Tendency Entity Subtype")
            
        case .fall:
            return String(localized: "Fall", comment: "Pressure Tendency Entity Subtype")
            
        case .riseThenFallLower:
            return String(localized: "Rise Then Fall Lower", comment: "Pressure Tendency Entity Subtype")
        }
    }
}

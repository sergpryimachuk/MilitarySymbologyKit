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
            String(localized: "None")
            
        case .riseThenFallHigher:
            String(localized: "Rise Then Fall Higher", comment: "Pressure Tendency Entity Subtype")
            
        case .riseThenSteady:
            String(localized: "Rise Then Steady", comment: "Pressure Tendency Entity Subtype")
            
        case .rise:
            String(localized: "Rise", comment: "Pressure Tendency Entity Subtype")
            
        case .riseThenRiseHigher:
            String(localized: "Rise Then Rise Higher", comment: "Pressure Tendency Entity Subtype")
            
        case .steady:
            String(localized: "Steady", comment: "Pressure Tendency Entity Subtype")
            
        case .fallThenRiseLower:
            String(localized: "Fall Then Rise Lower", comment: "Pressure Tendency Entity Subtype")
            
        case .fallThenSteady:
            String(localized: "Fall Then Steady", comment: "Pressure Tendency Entity Subtype")
            
        case .fall:
            String(localized: "Fall", comment: "Pressure Tendency Entity Subtype")
            
        case .riseThenFallLower:
            String(localized: "Rise Then Fall Lower", comment: "Pressure Tendency Entity Subtype")
        }
    }
}

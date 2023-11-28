//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum DrizzleEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case intermittentLight = "01"
    case intermittentLightContinuousLight = "02"
    case intermittentModerate = "03"
    case intermittentModerateContinuousModerate = "04"
    case intermittentHeavy = "05"
    case intermittentHeavyContinuousHeavy = "06"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .intermittentLight:
            return String(localized: "Intermittent Light", comment: "Drizzle Entity Subtype")
            
        case .intermittentLightContinuousLight:
            return String(localized: "Intermittent Light/Continuous Light", comment: "Drizzle Entity Subtype")
            
        case .intermittentModerate:
            return String(localized: "Intermittent Moderate", comment: "Drizzle Entity Subtype")
            
        case .intermittentModerateContinuousModerate:
            return String(localized: "Intermittent Moderate/Continuous Moderate", comment: "Drizzle Entity Subtype")
            
        case .intermittentHeavy:
            return String(localized: "Intermittent Heavy", comment: "Drizzle Entity Subtype")
            
        case .intermittentHeavyContinuousHeavy:
            return String(localized: "Intermittent Heavy/Continuous Heavy", comment: "Drizzle Entity Subtype")
        }
    }
}

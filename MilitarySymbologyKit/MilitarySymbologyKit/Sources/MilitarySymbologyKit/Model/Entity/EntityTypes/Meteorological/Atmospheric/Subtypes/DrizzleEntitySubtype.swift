//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

public enum DrizzleEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case intermittentLight = "01"
    case intermittentLightContinuousLight = "02"
    case intermittentModerate = "03"
    case intermittentModerateContinuousModerate = "04"
    case intermittentHeavy = "05"
    case intermittentHeavyContinuousHeavy = "06"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .intermittentLight:
            String(localized: "Intermittent Light", bundle: .module, comment: "Drizzle Entity Subtype")
            
        case .intermittentLightContinuousLight:
            String(localized: "Intermittent Light/Continuous Light", bundle: .module, comment: "Drizzle Entity Subtype")
            
        case .intermittentModerate:
            String(localized: "Intermittent Moderate", bundle: .module, comment: "Drizzle Entity Subtype")
            
        case .intermittentModerateContinuousModerate:
            String(localized: "Intermittent Moderate/Continuous Moderate", bundle: .module, comment: "Drizzle Entity Subtype")
            
        case .intermittentHeavy:
            String(localized: "Intermittent Heavy", bundle: .module, comment: "Drizzle Entity Subtype")
            
        case .intermittentHeavyContinuousHeavy:
            String(localized: "Intermittent Heavy/Continuous Heavy", bundle: .module, comment: "Drizzle Entity Subtype")
        }
    }
}

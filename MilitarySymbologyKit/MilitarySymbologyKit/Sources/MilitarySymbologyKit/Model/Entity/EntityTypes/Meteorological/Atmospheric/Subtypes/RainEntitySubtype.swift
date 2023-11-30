//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum RainEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case intermittentLight = "01"
    case continuousLight = "02"
    case intermittentModerate = "03"
    case intermittentModerateContinuousModerate = "04"
    case intermittentHeavy = "05"
    case intermittentHeavyContinuousHeavy = "06"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .intermittentLight:
            String(localized: "Intermittent Light", comment: "Rain Entity Subtype")
            
        case .continuousLight:
            String(localized: "Continuous Light", comment: "Rain Entity Subtype")
            
        case .intermittentModerate:
            String(localized: "Intermittent Moderate", comment: "Rain Entity Subtype")
            
        case .intermittentModerateContinuousModerate:
            String(localized: "Intermittent Moderate/Continuous Moderate", comment: "Rain Entity Subtype")
            
        case .intermittentHeavy:
            String(localized: "Intermittent Heavy", comment: "Rain Entity Subtype")
            
        case .intermittentHeavyContinuousHeavy:
            String(localized: "Intermittent Heavy/Continuous Heavy", comment: "Rain Entity Subtype")
        }
    }
}

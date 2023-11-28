//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum SnowEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case intermittentLight = "01"
    case intermittentLightContinuousLight = "02"
    case intermittentModerate = "03"
    case intermittentModerateContinuousModerate = "04"
    case intermittentHeavy = "05"
    case intermittentHeavyContinuousHeavy = "06"
    case blowingSnowLightModerate = "07"
    case blowingSnowHeavy = "08"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .intermittentLight:
            return String(localized: "Intermittent Light", comment: "Snow Entity Subtype")
            
        case .intermittentLightContinuousLight:
            return String(localized: "Intermittent Light/Continuous Light", comment: "Snow Entity Subtype")
            
        case .intermittentModerate:
            return String(localized: "Intermittent Moderate", comment: "Snow Entity Subtype")
            
        case .intermittentModerateContinuousModerate:
            return String(localized: "Intermittent Moderate/Continuous Moderate", comment: "Snow Entity Subtype")
            
        case .intermittentHeavy:
            return String(localized: "Intermittent Heavy", comment: "Snow Entity Subtype")
            
        case .intermittentHeavyContinuousHeavy:
            return String(localized: "Intermittent Heavy/Continuous Heavy", comment: "Snow Entity Subtype")
            
        case .blowingSnowLightModerate:
            return String(localized: "Blowing Snow - Light/Moderate", comment: "Snow Entity Subtype")
            
        case .blowingSnowHeavy:
            return String(localized: "Blowing Snow - Heavy", comment: "Snow Entity Subtype")
        }
    }
}

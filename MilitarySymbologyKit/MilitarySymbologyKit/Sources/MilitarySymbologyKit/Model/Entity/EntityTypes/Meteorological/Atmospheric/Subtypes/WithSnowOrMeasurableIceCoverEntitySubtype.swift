//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum WithSnowOrMeasurableIceCoverEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case predominatelyIceCovered = "01"
    case compactOrWetSnowLessThanHalf = "02"
    case compactOrWetSnowAtLeastHalf = "03"
    case evenLayerCompactOrWetSnow = "04"
    case unevenLayerCompactOrWetSnow = "05"
    case looseDrySnowLessThanHalf = "06"
    case looseDrySnowAtLeastHalf = "07"
    case evenLayerLooseDrySnow = "08"
    case unevenLayerLooseDrySnow = "09"
    case snowCoveringGroundDeepDrifts = "10"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .predominatelyIceCovered:
            return String(localized: "Predominately Ice Covered", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .compactOrWetSnowLessThanHalf:
            return String(localized: "Compact or Wet Snow (Less Than One-Half of Ground)", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .compactOrWetSnowAtLeastHalf:
            return String(localized: "Compact or Wet Snow (At Least One-Half of Ground)", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .evenLayerCompactOrWetSnow:
            return String(localized: "Even Layer of Compact or Wet Snow", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .unevenLayerCompactOrWetSnow:
            return String(localized: "Uneven Layer of Compact or Wet Snow", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .looseDrySnowLessThanHalf:
            return String(localized: "Loose Dry Snow (Less Than One-Half of Ground)", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .looseDrySnowAtLeastHalf:
            return String(localized: "Loose Dry Snow (At Least One-Half of Ground)", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .evenLayerLooseDrySnow:
            return String(localized: "Even Layer of Loose Dry Snow", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .unevenLayerLooseDrySnow:
            return String(localized: "Uneven Layer of Loose Dry Snow", comment: "With Snow or Measurable Ice Cover Entity Subtype")
            
        case .snowCoveringGroundDeepDrifts:
            return String(localized: "Snow Covering Ground Completely - Deep Drifts", comment: "With Snow or Measurable Ice Cover Entity Subtype")
        }
    }
}

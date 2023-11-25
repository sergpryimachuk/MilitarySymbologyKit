//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum StateOfGroundEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case withoutSnowOrMeasurableIceCover = "01"
        case withSnowOrMeasurableIceCover = "02"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .withoutSnowOrMeasurableIceCover:
                return String(localized: "Without Snow or Measurable Ice Cover", comment: "State of Ground Entity Type")
                
            case .withSnowOrMeasurableIceCover:
                return String(localized: "With Snow or Measurable Ice Cover", comment: "State of Ground Entity Type")
            }
        }
    }
}

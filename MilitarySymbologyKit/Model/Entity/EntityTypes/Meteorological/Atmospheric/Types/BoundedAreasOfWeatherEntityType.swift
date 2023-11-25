//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum BoundedAreasOfWeatherEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case instrumentFlightRuleIFR = "01"
        case marginalVisualFlightRuleMVFR = "02"
        case turbulence = "03"
        case icing = "04"
        case liquidPrecipitationNonConvectiveContinuousOrIntermittent = "05"
        case freezingFrozenPrecipitation = "06"
        case thunderstorm = "07"
        case fog = "08"
        case dustOrSand = "09"
        case operatorDefinedFreeform = "10"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .instrumentFlightRuleIFR:
                return String(localized: "Instrument Flight Rule (IFR)", comment: "Bounded Areas of Weather Entity Type")
                
            case .marginalVisualFlightRuleMVFR:
                return String(localized: "Marginal Visual Flight Rule (MVFR)", comment: "Bounded Areas of Weather Entity Type")
                
            case .turbulence:
                return String(localized: "Turbulence", comment: "Bounded Areas of Weather Entity Type")
                
            case .icing:
                return String(localized: "Icing", comment: "Bounded Areas of Weather Entity Type")
                
            case .liquidPrecipitationNonConvectiveContinuousOrIntermittent:
                return String(localized: "Liquid Precipitation - Non-Convective Continuous or Intermittent", comment: "Bounded Areas of Weather Entity Type")
                
            case .freezingFrozenPrecipitation:
                return String(localized: "Freezing/Frozen Precipitation", comment: "Bounded Areas of Weather Entity Type")
                
            case .thunderstorm:
                return String(localized: "Thunderstorm", comment: "Bounded Areas of Weather Entity Type")
                
            case .fog:
                return String(localized: "Fog", comment: "Bounded Areas of Weather Entity Type")
                
            case .dustOrSand:
                return String(localized: "Dust or Sand", comment: "Bounded Areas of Weather Entity Type")
                
            case .operatorDefinedFreeform:
                return String(localized: "Operator-Defined Freeform", comment: "Bounded Areas of Weather Entity Type")
            }
        }
    }
}

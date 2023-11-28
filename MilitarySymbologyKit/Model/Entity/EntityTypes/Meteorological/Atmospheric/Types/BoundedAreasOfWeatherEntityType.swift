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
                String(localized: "None")
                
            case .instrumentFlightRuleIFR:
                String(localized: "Instrument Flight Rule (IFR)", comment: "Bounded Areas of Weather Entity Type")
                
            case .marginalVisualFlightRuleMVFR:
                String(localized: "Marginal Visual Flight Rule (MVFR)", comment: "Bounded Areas of Weather Entity Type")
                
            case .turbulence:
                String(localized: "Turbulence", comment: "Bounded Areas of Weather Entity Type")
                
            case .icing:
                String(localized: "Icing", comment: "Bounded Areas of Weather Entity Type")
                
            case .liquidPrecipitationNonConvectiveContinuousOrIntermittent:
                String(localized: "Liquid Precipitation - Non-Convective Continuous or Intermittent", comment: "Bounded Areas of Weather Entity Type")
                
            case .freezingFrozenPrecipitation:
                String(localized: "Freezing/Frozen Precipitation", comment: "Bounded Areas of Weather Entity Type")
                
            case .thunderstorm:
                String(localized: "Thunderstorm", comment: "Bounded Areas of Weather Entity Type")
                
            case .fog:
                String(localized: "Fog", comment: "Bounded Areas of Weather Entity Type")
                
            case .dustOrSand:
                String(localized: "Dust or Sand", comment: "Bounded Areas of Weather Entity Type")
                
            case .operatorDefinedFreeform:
                String(localized: "Operator-Defined Freeform", comment: "Bounded Areas of Weather Entity Type")
            }
        }
        
        // TODO: Implement this one.
        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

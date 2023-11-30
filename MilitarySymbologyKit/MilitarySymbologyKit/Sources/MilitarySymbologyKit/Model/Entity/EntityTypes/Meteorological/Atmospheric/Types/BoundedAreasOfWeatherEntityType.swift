//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    public enum BoundedAreasOfWeatherEntityType: String, CaseIterable, EntityType {
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
        
        public var id: String { rawValue }
        
        public var name: String {
            switch self {
            case .none:
                String(localized: "None")
                
            case .instrumentFlightRuleIFR:
                String(localized: "Instrument Flight Rule (IFR)", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .marginalVisualFlightRuleMVFR:
                String(localized: "Marginal Visual Flight Rule (MVFR)", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .turbulence:
                String(localized: "Turbulence", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .icing:
                String(localized: "Icing", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .liquidPrecipitationNonConvectiveContinuousOrIntermittent:
                String(localized: "Liquid Precipitation - Non-Convective Continuous or Intermittent", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .freezingFrozenPrecipitation:
                String(localized: "Freezing/Frozen Precipitation", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .thunderstorm:
                String(localized: "Thunderstorm", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .fog:
                String(localized: "Fog", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .dustOrSand:
                String(localized: "Dust or Sand", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
                
            case .operatorDefinedFreeform:
                String(localized: "Operator-Defined Freeform", bundle: .module, comment: "Bounded Areas of Weather Entity Type")
            }
        }
        
        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .liquidPrecipitationNonConvectiveContinuousOrIntermittent:
                [.none, AnyEntitySubtype(id: "01",
                                         name: String(
                                            localized: "Liquid Precipitation - Convective",
                                            bundle: .module, comment: "Entity Subtype"
                                         ))]
            default:
                [.none]
            }
        }
    }
}

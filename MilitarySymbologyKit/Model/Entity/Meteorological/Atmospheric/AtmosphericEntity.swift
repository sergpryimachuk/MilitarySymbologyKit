//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

enum AtmosphericEntity: String, CaseIterable, Entity {
    case pressureSystems = "11"
    case turbulence = "12"
    case icing = "13"
    case winds = "14"
    case cloudCover = "15"
    case weatherSymbols = "16"
    case boundedAreasOfWeather = "17"
    case isopleths = "18"
    case stateOfTheGround = "19"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .pressureSystems:
            return String(localized: "Pressure Systems", comment: "Atmospheric Entity Type")
            
        case .turbulence:
            return String(localized: "Turbulence", comment: "Atmospheric Entity Type")
            
        case .icing:
            return String(localized: "Icing", comment: "Atmospheric Entity Type")
            
        case .winds:
            return String(localized: "Winds", comment: "Atmospheric Entity Type")
            
        case .cloudCover:
            return String(localized: "Cloud Cover", comment: "Atmospheric Entity Type")
            
        case .weatherSymbols:
            return String(localized: "Weather Symbols", comment: "Atmospheric Entity Type")
            
        case .boundedAreasOfWeather:
            return String(localized: "Bounded Areas of Weather", comment: "Atmospheric Entity Type")
            
        case .isopleths:
            return String(localized: "Isopleths", comment: "Atmospheric Entity Type")
            
        case .stateOfTheGround:
            return String(localized: "State of the Ground", comment: "Atmospheric Entity Type")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .pressureSystems:
            PressureSystemsEntityType.allCases.map { AnyEntityType($0) }
        case .turbulence:
            TurbulenceEntityType.allCases.map { AnyEntityType($0) }
        case .icing:
            IcingEntityType.allCases.map { AnyEntityType($0) }
        case .winds:
            WindsEntityType.allCases.map { AnyEntityType($0) }
        case .cloudCover:
            []
        case .weatherSymbols:
            []
        case .boundedAreasOfWeather:
            []
        case .isopleths:
            []
        case .stateOfTheGround:
            []
        }
    }
}

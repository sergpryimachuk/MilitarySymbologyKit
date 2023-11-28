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
            String(localized: "Pressure Systems", comment: "Atmospheric Entity Type")

        case .turbulence:
            String(localized: "Turbulence", comment: "Atmospheric Entity Type")

        case .icing:
            String(localized: "Icing", comment: "Atmospheric Entity Type")

        case .winds:
            String(localized: "Winds", comment: "Atmospheric Entity Type")

        case .cloudCover:
            String(localized: "Cloud Cover", comment: "Atmospheric Entity Type")

        case .weatherSymbols:
            String(localized: "Weather Symbols", comment: "Atmospheric Entity Type")

        case .boundedAreasOfWeather:
            String(localized: "Bounded Areas of Weather", comment: "Atmospheric Entity Type")

        case .isopleths:
            String(localized: "Isopleths", comment: "Atmospheric Entity Type")

        case .stateOfTheGround:
            String(localized: "State of the Ground", comment: "Atmospheric Entity Type")
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
            CloudCoverEntityType.allCases.map { AnyEntityType($0) }
        case .weatherSymbols:
            WeatherSymbolsEntityType.allCases.map { AnyEntityType($0) }
        case .boundedAreasOfWeather:
            BoundedAreasOfWeatherEntityType.allCases.map { AnyEntityType($0) }
        case .isopleths:
            IsoplethsEntityType.allCases.map { AnyEntityType($0) }
        case .stateOfTheGround:
            StateOfGroundEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum WeatherSymbolsEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case rain = "01"
        case freezingRain = "02"
        case rainShowers = "03"
        case drizzle = "04"
        case freezingDrizzle = "05"
        case rainAndSnowMixed = "06"
        case snow = "07"
        case snowGrains = "08"
        case snowShowers = "09"
        case hail = "10"
        case iceCrystalsDiamondDust = "11"
        case icePelletsSleet = "12"
        case inversion = "13"
        case storms = "14"
        case fog = "15"
        case mist = "16"
        case smoke = "17"
        case haze = "18"
        case dustOrSand = "19"
        case tropicalStormSystems = "20"
        case volcanicEruption = "21"
        case tropopauseLevel = "22"
        case freezingLevel = "23"
        case precipitationUnknownTypeAndIntensity = "24"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .rain:
                return String(localized: "Rain", comment: "Weather Symbols Entity Type")
                
            case .freezingRain:
                return String(localized: "Freezing Rain", comment: "Weather Symbols Entity Type")
                
            case .rainShowers:
                return String(localized: "Rain Showers", comment: "Weather Symbols Entity Type")
                
            case .drizzle:
                return String(localized: "Drizzle", comment: "Weather Symbols Entity Type")
                
            case .freezingDrizzle:
                return String(localized: "Freezing Drizzle", comment: "Weather Symbols Entity Type")
                
            case .rainAndSnowMixed:
                return String(localized: "Rain and Snow Mixed", comment: "Weather Symbols Entity Type")
                
            case .snow:
                return String(localized: "Snow", comment: "Weather Symbols Entity Type")
                
            case .snowGrains:
                return String(localized: "Snow Grains", comment: "Weather Symbols Entity Type")
                
            case .snowShowers:
                return String(localized: "Snow Showers", comment: "Weather Symbols Entity Type")
                
            case .hail:
                return String(localized: "Hail", comment: "Weather Symbols Entity Type")
                
            case .iceCrystalsDiamondDust:
                return String(localized: "Ice Crystals (Diamond Dust)", comment: "Weather Symbols Entity Type")
                
            case .icePelletsSleet:
                return String(localized: "Ice Pellets (Sleet)", comment: "Weather Symbols Entity Type")
                
            case .inversion:
                return String(localized: "Inversion", comment: "Weather Symbols Entity Type")
                
            case .storms:
                return String(localized: "Storms", comment: "Weather Symbols Entity Type")
                
            case .fog:
                return String(localized: "Fog", comment: "Weather Symbols Entity Type")
                
            case .mist:
                return String(localized: "Mist", comment: "Weather Symbols Entity Type")
                
            case .smoke:
                return String(localized: "Smoke", comment: "Weather Symbols Entity Type")
                
            case .haze:
                return String(localized: "Haze", comment: "Weather Symbols Entity Type")
                
            case .dustOrSand:
                return String(localized: "Dust or Sand", comment: "Weather Symbols Entity Type")
                
            case .tropicalStormSystems:
                return String(localized: "Tropical Storm Systems", comment: "Weather Symbols Entity Type")
                
            case .volcanicEruption:
                return String(localized: "Volcanic Eruption", comment: "Weather Symbols Entity Type")
                
            case .tropopauseLevel:
                return String(localized: "Tropopause Level", comment: "Weather Symbols Entity Type")
                
            case .freezingLevel:
                return String(localized: "Freezing Level", comment: "Weather Symbols Entity Type")
                
            case .precipitationUnknownTypeAndIntensity:
                return String(localized: "Precipitation of Unknown Type and Intensity", comment: "Weather Symbols Entity Type")
            }
        }
    }

}

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
                String(localized: "None")
                
            case .rain:
                String(localized: "Rain", comment: "Weather Symbols Entity Type")
                
            case .freezingRain:
                String(localized: "Freezing Rain", comment: "Weather Symbols Entity Type")
                
            case .rainShowers:
                String(localized: "Rain Showers", comment: "Weather Symbols Entity Type")
                
            case .drizzle:
                String(localized: "Drizzle", comment: "Weather Symbols Entity Type")
                
            case .freezingDrizzle:
                String(localized: "Freezing Drizzle", comment: "Weather Symbols Entity Type")
                
            case .rainAndSnowMixed:
                String(localized: "Rain and Snow Mixed", comment: "Weather Symbols Entity Type")
                
            case .snow:
                String(localized: "Snow", comment: "Weather Symbols Entity Type")
                
            case .snowGrains:
                String(localized: "Snow Grains", comment: "Weather Symbols Entity Type")
                
            case .snowShowers:
                String(localized: "Snow Showers", comment: "Weather Symbols Entity Type")
                
            case .hail:
                String(localized: "Hail", comment: "Weather Symbols Entity Type")
                
            case .iceCrystalsDiamondDust:
                String(localized: "Ice Crystals (Diamond Dust)", comment: "Weather Symbols Entity Type")
                
            case .icePelletsSleet:
                String(localized: "Ice Pellets (Sleet)", comment: "Weather Symbols Entity Type")
                
            case .inversion:
                String(localized: "Inversion", comment: "Weather Symbols Entity Type")
                
            case .storms:
                String(localized: "Storms", comment: "Weather Symbols Entity Type")
                
            case .fog:
                String(localized: "Fog", comment: "Weather Symbols Entity Type")
                
            case .mist:
                String(localized: "Mist", comment: "Weather Symbols Entity Type")
                
            case .smoke:
                String(localized: "Smoke", comment: "Weather Symbols Entity Type")
                
            case .haze:
                String(localized: "Haze", comment: "Weather Symbols Entity Type")
                
            case .dustOrSand:
                String(localized: "Dust or Sand", comment: "Weather Symbols Entity Type")
                
            case .tropicalStormSystems:
                String(localized: "Tropical Storm Systems", comment: "Weather Symbols Entity Type")
                
            case .volcanicEruption:
                String(localized: "Volcanic Eruption", comment: "Weather Symbols Entity Type")
                
            case .tropopauseLevel:
                String(localized: "Tropopause Level", comment: "Weather Symbols Entity Type")
                
            case .freezingLevel:
                String(localized: "Freezing Level", comment: "Weather Symbols Entity Type")
                
            case .precipitationUnknownTypeAndIntensity:
                String(localized: "Precipitation of Unknown Type and Intensity", comment: "Weather Symbols Entity Type")
            }
        }
    }

}

//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AtmosphericEntity {
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

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None", bundle: .module)

            case .rain:
                String(localized: "Rain", bundle: .module, comment: "Weather Symbols Entity Type")

            case .freezingRain:
                String(localized: "Freezing Rain", bundle: .module, comment: "Weather Symbols Entity Type")

            case .rainShowers:
                String(localized: "Rain Showers", bundle: .module, comment: "Weather Symbols Entity Type")

            case .drizzle:
                String(localized: "Drizzle", bundle: .module, comment: "Weather Symbols Entity Type")

            case .freezingDrizzle:
                String(localized: "Freezing Drizzle", bundle: .module, comment: "Weather Symbols Entity Type")

            case .rainAndSnowMixed:
                String(localized: "Rain and Snow Mixed", bundle: .module, comment: "Weather Symbols Entity Type")

            case .snow:
                String(localized: "Snow", bundle: .module, comment: "Weather Symbols Entity Type")

            case .snowGrains:
                String(localized: "Snow Grains", bundle: .module, comment: "Weather Symbols Entity Type")

            case .snowShowers:
                String(localized: "Snow Showers", bundle: .module, comment: "Weather Symbols Entity Type")

            case .hail:
                String(localized: "Hail", bundle: .module, comment: "Weather Symbols Entity Type")

            case .iceCrystalsDiamondDust:
                String(localized: "Ice Crystals (Diamond Dust)", bundle: .module, comment: "Weather Symbols Entity Type")

            case .icePelletsSleet:
                String(localized: "Ice Pellets (Sleet)", bundle: .module, comment: "Weather Symbols Entity Type")

            case .inversion:
                String(localized: "Inversion", bundle: .module, comment: "Weather Symbols Entity Type")

            case .storms:
                String(localized: "Storms", bundle: .module, comment: "Weather Symbols Entity Type")

            case .fog:
                String(localized: "Fog", bundle: .module, comment: "Weather Symbols Entity Type")

            case .mist:
                String(localized: "Mist", bundle: .module, comment: "Weather Symbols Entity Type")

            case .smoke:
                String(localized: "Smoke", bundle: .module, comment: "Weather Symbols Entity Type")

            case .haze:
                String(localized: "Haze", bundle: .module, comment: "Weather Symbols Entity Type")

            case .dustOrSand:
                String(localized: "Dust or Sand", bundle: .module, comment: "Weather Symbols Entity Type")

            case .tropicalStormSystems:
                String(localized: "Tropical Storm Systems", bundle: .module, comment: "Weather Symbols Entity Type")

            case .volcanicEruption:
                String(localized: "Volcanic Eruption", bundle: .module, comment: "Weather Symbols Entity Type")

            case .tropopauseLevel:
                String(localized: "Tropopause Level", bundle: .module, comment: "Weather Symbols Entity Type")

            case .freezingLevel:
                String(localized: "Freezing Level", bundle: .module, comment: "Weather Symbols Entity Type")

            case .precipitationUnknownTypeAndIntensity:
                String(localized: "Precipitation of Unknown Type and Intensity", bundle: .module, comment: "Weather Symbols Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .rain:
                RainEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .freezingRain, .freezingDrizzle, .snowShowers, .icePelletsSleet:
                LightModerateHeavyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .rainShowers:
                LightModerateHeavyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
                    + [.init(id: "03", name: String(localized: "Torrential", bundle: .module, comment: "Rain Showers Entity Subtype"))]
            case .drizzle:
                DrizzleEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .rainAndSnowMixed:
                RainAndSnowMixedEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .snow:
                SnowEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .hail:
                HailEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .storms:
                StormsEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .fog:
                FogEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .dustOrSand:
                DustOrSandEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .tropicalStormSystems:
                TropicalStormSystemsEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .volcanicEruption:
                VolcanicEruptionEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                [.none]
            }
        }
    }
}

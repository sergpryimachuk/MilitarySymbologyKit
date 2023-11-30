//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum StormsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case thunderstormNoPrecipitation = "01"
    case thunderstormLightModerateWithRainSnowNoHail = "02"
    case thunderstormHeavyWithRainSnowNoHail = "03"
    case thunderstormLightModerateWithHail = "04"
    case thunderstormHeavyWithHail = "05"
    case funnelCloud = "06"
    case squall = "07"
    case lightning = "08"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .thunderstormNoPrecipitation:
            String(localized: "Thunderstorm - No Precipitation", bundle: .module, comment: "Storms Entity Subtype")

        case .thunderstormLightModerateWithRainSnowNoHail:
            String(localized: "Thunderstorm Light to Moderate with Rain/Snow - No Hail", bundle: .module, comment: "Storms Entity Subtype")

        case .thunderstormHeavyWithRainSnowNoHail:
            String(localized: "Thunderstorm Heavy with Rain/Snow - No Hail", bundle: .module, comment: "Storms Entity Subtype")

        case .thunderstormLightModerateWithHail:
            String(localized: "Thunderstorm Light to Moderate - With Hail", bundle: .module, comment: "Storms Entity Subtype")

        case .thunderstormHeavyWithHail:
            String(localized: "Thunderstorm Heavy - With Hail", bundle: .module, comment: "Storms Entity Subtype")

        case .funnelCloud:
            String(localized: "Funnel Cloud (Tornado/Waterspout)", bundle: .module, comment: "Storms Entity Subtype")

        case .squall:
            String(localized: "Squall", bundle: .module, comment: "Storms Entity Subtype")

        case .lightning:
            String(localized: "Lightning", bundle: .module, comment: "Storms Entity Subtype")
        }
    }
}

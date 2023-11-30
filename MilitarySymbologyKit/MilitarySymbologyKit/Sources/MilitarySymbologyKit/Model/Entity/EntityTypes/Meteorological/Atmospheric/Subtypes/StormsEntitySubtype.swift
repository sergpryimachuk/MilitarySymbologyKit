//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum StormsEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case thunderstormNoPrecipitation = "01"
    case thunderstormLightModerateWithRainSnowNoHail = "02"
    case thunderstormHeavyWithRainSnowNoHail = "03"
    case thunderstormLightModerateWithHail = "04"
    case thunderstormHeavyWithHail = "05"
    case funnelCloud = "06"
    case squall = "07"
    case lightning = "08"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .thunderstormNoPrecipitation:
            return String(localized: "Thunderstorm - No Precipitation", comment: "Storms Entity Subtype")
            
        case .thunderstormLightModerateWithRainSnowNoHail:
            return String(localized: "Thunderstorm Light to Moderate with Rain/Snow - No Hail", comment: "Storms Entity Subtype")
            
        case .thunderstormHeavyWithRainSnowNoHail:
            return String(localized: "Thunderstorm Heavy with Rain/Snow - No Hail", comment: "Storms Entity Subtype")
            
        case .thunderstormLightModerateWithHail:
            return String(localized: "Thunderstorm Light to Moderate - With Hail", comment: "Storms Entity Subtype")
            
        case .thunderstormHeavyWithHail:
            return String(localized: "Thunderstorm Heavy - With Hail", comment: "Storms Entity Subtype")
            
        case .funnelCloud:
            return String(localized: "Funnel Cloud (Tornado/Waterspout)", comment: "Storms Entity Subtype")
            
        case .squall:
            return String(localized: "Squall", comment: "Storms Entity Subtype")
            
        case .lightning:
            return String(localized: "Lightning", comment: "Storms Entity Subtype")
        }
    }
}


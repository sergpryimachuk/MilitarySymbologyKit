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
            String(localized: "None")
            
        case .thunderstormNoPrecipitation:
            String(localized: "Thunderstorm - No Precipitation", comment: "Storms Entity Subtype")
            
        case .thunderstormLightModerateWithRainSnowNoHail:
            String(localized: "Thunderstorm Light to Moderate with Rain/Snow - No Hail", comment: "Storms Entity Subtype")
            
        case .thunderstormHeavyWithRainSnowNoHail:
            String(localized: "Thunderstorm Heavy with Rain/Snow - No Hail", comment: "Storms Entity Subtype")
            
        case .thunderstormLightModerateWithHail:
            String(localized: "Thunderstorm Light to Moderate - With Hail", comment: "Storms Entity Subtype")
            
        case .thunderstormHeavyWithHail:
            String(localized: "Thunderstorm Heavy - With Hail", comment: "Storms Entity Subtype")
            
        case .funnelCloud:
            String(localized: "Funnel Cloud (Tornado/Waterspout)", comment: "Storms Entity Subtype")
            
        case .squall:
            String(localized: "Squall", comment: "Storms Entity Subtype")
            
        case .lightning:
            String(localized: "Lightning", comment: "Storms Entity Subtype")
        }
    }
}


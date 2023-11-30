//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum RainAndSnowMixedEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case light = "01"
    case moderateHeavy = "02"
    case lightShowers = "03"
    case moderateHeavyShowers = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .light:
            String(localized: "Light", comment: "Rain and Snow Mixed Entity Subtype")
            
        case .moderateHeavy:
            String(localized: "Moderate/Heavy", comment: "Rain and Snow Mixed Entity Subtype")
            
        case .lightShowers:
            String(localized: "Light Showers", comment: "Rain and Snow Mixed Entity Subtype")
            
        case .moderateHeavyShowers:
            String(localized: "Moderate/Heavy Showers", comment: "Rain and Snow Mixed Entity Subtype")
        }
    }
}

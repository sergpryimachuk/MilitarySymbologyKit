//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum TurbulenceEntityType: String, CaseIterable, EntityType {
        case light = "01"
        case moderate = "02"
        case severe = "03"
        case extreme = "04"
        case mountainWaves = "05"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .light:
                return String(localized: "Light", comment: "Turbulence Entity Type")
                
            case .moderate:
                return String(localized: "Moderate", comment: "Turbulence Entity Type")
                
            case .severe:
                return String(localized: "Severe", comment: "Turbulence Entity Type")
                
            case .extreme:
                return String(localized: "Extreme", comment: "Turbulence Entity Type")
                
            case .mountainWaves:
                return String(localized: "Mountain Waves", comment: "Turbulence Entity Type")
            }
        }
    }
}

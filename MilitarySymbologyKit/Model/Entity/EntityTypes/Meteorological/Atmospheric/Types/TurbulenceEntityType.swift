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
                String(localized: "Light", comment: "Turbulence Entity Type")
                
            case .moderate:
                String(localized: "Moderate", comment: "Turbulence Entity Type")
                
            case .severe:
                String(localized: "Severe", comment: "Turbulence Entity Type")
                
            case .extreme:
                String(localized: "Extreme", comment: "Turbulence Entity Type")
                
            case .mountainWaves:
                String(localized: "Mountain Waves", comment: "Turbulence Entity Type")
            }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

enum CyberspaceEntityType: String, CaseIterable, Identifiable, EntityType {
    case botnet = "11"
    case infection = "12"
    case healthAndStatus = "13"
    case deviceType = "14"
    case deviceDomain = "15"
    case effect = "16"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .botnet:
            return String(localized: "Botnet", comment: "Cyberspace Entity Type")
            
        case .infection:
            return String(localized: "Infection", comment: "Cyberspace Entity Type")
            
        case .healthAndStatus:
            return String(localized: "Health and Status", comment: "Cyberspace Entity Type")
            
        case .deviceType:
            return String(localized: "Device Type", comment: "Cyberspace Entity Type")
            
        case .deviceDomain:
            return String(localized: "Device Domain", comment: "Cyberspace Entity Type")
            
        case .effect:
            return String(localized: "Effect", comment: "Cyberspace Entity Type")
        }
    }
}

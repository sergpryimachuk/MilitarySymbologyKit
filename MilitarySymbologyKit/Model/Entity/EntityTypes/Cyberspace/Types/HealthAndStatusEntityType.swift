//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension CyberspaceEntity {
    enum HealthAndStatusEntityType: String, CaseIterable, Identifiable, EntityType {
        case normal = "01"
        case networkOutage = "02"
        case unknown = "03"
        case impaired = "04"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .normal:
                return String(localized: "Normal", comment: "Health and Status Entity Type")
                
            case .networkOutage:
                return String(localized: "Network Outage", comment: "Health and Status Entity Type")
                
            case .unknown:
                return String(localized: "Unknown", comment: "Health and Status Entity Type")
                
            case .impaired:
                return String(localized: "Impaired", comment: "Health and Status Entity Type")
            }
        }
    }
}


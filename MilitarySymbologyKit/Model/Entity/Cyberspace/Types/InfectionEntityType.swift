//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension CyberspaceEntity {
    enum InfectionEntityType: String, CaseIterable, Identifiable, EntityType {
        case advancedPersistentThreat = "01"
        case nonAdvancedPersistentThreat = "02"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .advancedPersistentThreat:
                return String(localized: "Advanced Persistent Threat (APT)", comment: "Infection Entity Type")
                
            case .nonAdvancedPersistentThreat:
                return String(localized: "Non-Advanced Persistent Threat (NAPT)", comment: "Infection Entity Type")
            }
        }
    }
}
//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension CyberspaceEntity {
    enum BotnetEntityType: String, CaseIterable, Identifiable, EntityType {
        case commandAndControl = "01"
        case herder = "02"
        case callbackDomain = "03"
        case zombie = "04"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .commandAndControl:
                return String(localized: "Command and Control (C2)", comment: "Botnet Entity Type")
                
            case .herder:
                return String(localized: "Herder", comment: "Botnet Entity Type")
                
            case .callbackDomain:
                return String(localized: "Callback Domain", comment: "Botnet Entity Type")
                
            case .zombie:
                return String(localized: "Zombie", comment: "Botnet Entity Type")
            }
        }
    }
}

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
                String(localized: "Command and Control (C2)", comment: "Botnet Entity Type")
                
            case .herder:
                String(localized: "Herder", comment: "Botnet Entity Type")
                
            case .callbackDomain:
                String(localized: "Callback Domain", comment: "Botnet Entity Type")
                
            case .zombie:
                String(localized: "Zombie", comment: "Botnet Entity Type")
            }
        }
    }
}

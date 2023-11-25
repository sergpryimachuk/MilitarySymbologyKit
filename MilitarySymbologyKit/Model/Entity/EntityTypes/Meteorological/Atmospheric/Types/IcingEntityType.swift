//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum IcingEntityType: String, CaseIterable, EntityType {
        case clearIcing = "01"
        case rimeIcing = "02"
        case mixedIcing = "03"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .clearIcing:
                return String(localized: "Clear Icing", comment: "Icing Entity Type")
                
            case .rimeIcing:
                return String(localized: "Rime Icing", comment: "Icing Entity Type")
                
            case .mixedIcing:
                return String(localized: "Mixed Icing", comment: "Icing Entity Type")
            }
        }
    }
}

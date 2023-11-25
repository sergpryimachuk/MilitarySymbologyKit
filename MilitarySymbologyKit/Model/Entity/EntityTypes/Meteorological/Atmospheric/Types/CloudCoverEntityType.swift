//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum CloudCoverEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case cloudCoverageSymbols = "01"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .cloudCoverageSymbols:
                return String(localized: "Cloud Coverage Symbols", comment: "Cloud Cover Entity Type")
            }
        }
    }
}

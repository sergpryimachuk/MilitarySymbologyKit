//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum WindsEntityType: String, CaseIterable, EntityType {
        case calmWinds = "01"
        case windPlot = "02"
        case jetStream = "03"
        case streamLine = "04"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .calmWinds:
                return String(localized: "Calm Winds", comment: "Winds Entity Type")
                
            case .windPlot:
                return String(localized: "Wind Plot", comment: "Winds Entity Type")
                
            case .jetStream:
                return String(localized: "Jet Stream", comment: "Winds Entity Type")
                
            case .streamLine:
                return String(localized: "Stream Line", comment: "Winds Entity Type")
            }
        }
    }
}

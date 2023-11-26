//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension OceanographicEntity {
    enum LimitsEntityType: String, CaseIterable, EntityType {
        case maritimeLimitBoundary = "01"
        case maritimeArea = "02"
        case restrictedArea = "03"
        case sweptArea = "04"
        case trainingArea = "05"
        case operatorDefined = "06"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .maritimeLimitBoundary:
                String(localized: "Maritime Limit Boundary", comment: "Limits Entity Type")
                
            case .maritimeArea:
                String(localized: "Maritime Area", comment: "Limits Entity Type")
                
            case .restrictedArea:
                String(localized: "Restricted Area", comment: "Limits Entity Type")
                
            case .sweptArea:
                String(localized: "Swept Area", comment: "Limits Entity Type")
                
            case .trainingArea:
                String(localized: "Training Area", comment: "Limits Entity Type")
                
            case .operatorDefined:
                String(localized: "Operator-Defined", comment: "Limits Entity Type")
            }
        }
    }
}

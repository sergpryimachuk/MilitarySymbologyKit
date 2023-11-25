//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension MineWarfareEntity {
    enum NonMineMineLikeObjectNMLOGeneralEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case bottom = "01"
        case moored = "02"
        case floating = "03"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None", comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")
                
            case .bottom:
                return String(localized: "Non-Mine Mine-Like Object-Bottom", comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")
                
            case .moored:
                return String(localized: "Non-Mine Mine-Like Object-Moored", comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")
                
            case .floating:
                return String(localized: "Non-Mine Mine-Like Object-Floating", comment: "Non-Mine Mine-Like Object (NMLO) - General Entity Type")
            }
        }
    }
}

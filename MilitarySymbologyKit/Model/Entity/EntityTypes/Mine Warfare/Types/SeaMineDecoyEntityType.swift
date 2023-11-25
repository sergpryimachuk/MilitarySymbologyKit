//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension MineWarfareEntity {
    enum SeaMineDecoyEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case seaMineDecoyBottom = "01"
        case seaMineDecoyMoored = "02"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .seaMineDecoyBottom:
                return String(localized: "Sea Mine Decoy-Bottom", comment: "Sea Mine Decoy Entity Type")
                
            case .seaMineDecoyMoored:
                return String(localized: "Sea Mine Decoy-Moored", comment: "Sea Mine Decoy Entity Type")
            case .none:
                return String(localized: "None", comment: "Sea Mine Decoy Entity Type")
            }
        }
    }
}

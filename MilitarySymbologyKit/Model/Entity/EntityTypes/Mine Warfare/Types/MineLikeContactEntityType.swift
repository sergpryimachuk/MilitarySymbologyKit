//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension MineWarfareEntity {
    enum MineLikeContactEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case milcoGeneral = "01"
        case milcoBottom = "02"
        case milcoMoored = "03"
        case milcoFloating = "04"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None", comment: "Mine-Like Contact Entity Type")
                
            case .milcoGeneral:
                return String(localized: "MILCO - General", comment: "Mine-Like Contact Entity Type")
                
            case .milcoBottom:
                return String(localized: "MILCO - Bottom", comment: "Mine-Like Contact Entity Type")
                
            case .milcoMoored:
                return String(localized: "MILCO - Moored", comment: "Mine-Like Contact Entity Type")
                
            case .milcoFloating:
                return String(localized: "MILCO - Floating", comment: "Mine-Like Contact Entity Type")
            }
        }
    }
}

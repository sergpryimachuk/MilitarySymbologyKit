//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension MineWarfareEntity {
    enum MineLikeEchoMILECGeneralEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case mineLikeEchoBottom = "01"
        case mineLikeEchoMoored = "02"
        case mineLikeEchoFloating = "03"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                String(localized: "None", comment: "Mine-Like Echo (MILEC) - General Entity Type")
                
            case .mineLikeEchoBottom:
                String(localized: "Mine-Like Echo-Bottom", comment: "Mine-Like Echo (MILEC) - General Entity Type")
                
            case .mineLikeEchoMoored:
                String(localized: "Mine-Like Echo-Moored", comment: "Mine-Like Echo (MILEC) - General Entity Type")
                
            case .mineLikeEchoFloating:
                String(localized: "Mine-Like Echo-Floating", comment: "Mine-Like Echo (MILEC) - General Entity Type")
            }
        }
    }
}

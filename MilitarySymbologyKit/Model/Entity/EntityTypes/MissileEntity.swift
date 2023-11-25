//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

enum MissileEntity: String, CaseIterable, Entity {
    case missile = "11"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .missile:
            String(localized: "Missile")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .missile:
            [.none]
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum ShootingEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case sniping = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .sniping:
            return String(localized: "Sniping", comment: "Shooting Entity Subtype")
        }
    }
}

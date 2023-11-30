//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

public enum ShootingEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case sniping = "01"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .sniping:
            String(localized: "Sniping", bundle: .module, comment: "Shooting Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum MISOEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case tvAndRadioPropaganda = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .tvAndRadioPropaganda:
            return String(localized: "TV and Radio Propaganda", comment: "MISO Entity Subtype")
        }
    }
}

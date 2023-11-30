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
            String(localized: "None")
        case .tvAndRadioPropaganda:
            String(localized: "TV and Radio Propaganda", bundle: .module, comment: "MISO Entity Subtype")
        }
    }
}

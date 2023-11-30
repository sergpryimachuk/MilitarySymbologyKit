//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum VolcanicEruptionEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case volcanicAsh = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .volcanicAsh:
            String(localized: "Volcanic Ash", comment: "Volcanic Eruption Entity Subtype")
        }
    }
}

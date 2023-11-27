//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

enum SignalInterceptEntityType: String, CaseIterable, Identifiable, EntityType {
    case communications = "01"
    case jammer = "02"
    case radar = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .communications:
            String(localized: "Communications", comment: "Signal Intercept Entity Type")
            
        case .jammer:
            String(localized: "Jammer", comment: "Signal Intercept Entity Type")
            
        case .radar:
            String(localized: "Radar", comment: "Signal Intercept Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

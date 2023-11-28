//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum FogEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case shallowPatches = "01"
    case shallowContinuous = "02"
    case patchy = "03"
    case skyVisible = "04"
    case skyObscured = "05"
    case freezingSkyVisible = "06"
    case freezingSkyObscured = "07"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None", comment: "Fog Entity Subtype")
            
        case .shallowPatches:
            return String(localized: "Shallow Patches", comment: "Fog Entity Subtype")
            
        case .shallowContinuous:
            return String(localized: "Shallow Continuous", comment: "Fog Entity Subtype")
            
        case .patchy:
            return String(localized: "Patchy", comment: "Fog Entity Subtype")
            
        case .skyVisible:
            return String(localized: "Sky Visible", comment: "Fog Entity Subtype")
            
        case .skyObscured:
            return String(localized: "Sky Obscured", comment: "Fog Entity Subtype")
            
        case .freezingSkyVisible:
            return String(localized: "Freezing-Sky Visible", comment: "Fog Entity Subtype")
            
        case .freezingSkyObscured:
            return String(localized: "Freezing-Sky Obscured", comment: "Fog Entity Subtype")
        }
    }
}

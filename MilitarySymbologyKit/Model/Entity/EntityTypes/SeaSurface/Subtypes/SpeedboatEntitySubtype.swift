//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum SpeedboatEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case rigidHullInflatableBoatRHIB = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .rigidHullInflatableBoatRHIB:
            return String(localized: "Rigid-Hull Inflatable Boat (RHIB)", comment: "Speedboat Entity Subtype")
        }
    }
}

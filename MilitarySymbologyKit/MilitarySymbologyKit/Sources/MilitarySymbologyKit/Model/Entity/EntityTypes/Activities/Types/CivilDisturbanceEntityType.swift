//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

public enum CivilDisturbanceEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case demonstration = "01"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Civil Disturbance Entity Type")
            
        case .demonstration:
            String(localized: "Demonstration", bundle: .module, comment: "Civil Disturbance Entity Type")
        }
    }
    
    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

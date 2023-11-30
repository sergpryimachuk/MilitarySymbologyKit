//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum LowPressureCenterEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case cycloneCenter = "01"
    case tropopauseLow = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .cycloneCenter:
            return String(localized: "Cyclone Center", comment: "Low Pressure Center Entity Subtype")
            
        case .tropopauseLow:
            return String(localized: "Tropopause Low", comment: "Low Pressure Center Entity Subtype")
        }
    }
}

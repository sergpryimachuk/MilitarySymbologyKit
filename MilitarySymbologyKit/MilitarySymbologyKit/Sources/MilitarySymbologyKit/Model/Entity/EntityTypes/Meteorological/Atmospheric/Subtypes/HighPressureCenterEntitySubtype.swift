//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum HighPressureCenterEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case anticycloneCenter = "01"
    case tropopauseHigh = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .anticycloneCenter:
            String(localized: "Anticyclone Center", comment: "High Pressure Center Entity Subtype")
            
        case .tropopauseHigh:
            String(localized: "Tropopause High", comment: "High Pressure Center Entity Subtype")
        }
    }
}

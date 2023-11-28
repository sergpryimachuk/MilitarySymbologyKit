//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum NeutralizedMineGeneralEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case neutralizedMineBottom = "01"
    case neutralizedMineMoored = "02"
    case neutralizedMineFloating = "03"
    case neutralizedMineRising = "04"
    case neutralizedMineOtherPosition = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .neutralizedMineBottom:
            return String(localized: "Neutralized Mine-Bottom", comment: "Neutralized Mine General Entity Subtype")
            
        case .neutralizedMineMoored:
            return String(localized: "Neutralized Mine-Moored", comment: "Neutralized Mine General Entity Subtype")
            
        case .neutralizedMineFloating:
            return String(localized: "Neutralized Mine-Floating", comment: "Neutralized Mine General Entity Subtype")
            
        case .neutralizedMineRising:
            return String(localized: "Neutralized Mine-Rising", comment: "Neutralized Mine General Entity Subtype")
            
        case .neutralizedMineOtherPosition:
            return String(localized: "Neutralized Mine-Other Position", comment: "Neutralized Mine General Entity Subtype")
        }
    }
}

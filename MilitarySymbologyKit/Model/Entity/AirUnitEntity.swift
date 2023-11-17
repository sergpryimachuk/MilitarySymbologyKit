//
//  Created with ♥ by Serhii Pryimachuk on 15.11.2023.
//  

import Foundation

enum AirUnitEntity: String, CaseIterable, Identifiable, Entity {
    case military = "11"
    case civilian = "12"
    case weapon = "13"
    case manualTrack = "14"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .military:
            return String(localized: "Military", comment: "Air Unit Entity")
            
        case .civilian:
            return String(localized: "Civilian", comment: "Air Unit Entity")
            
        case .weapon:
            return String(localized: "Weapon", comment: "Air Unit Entity")
            
        case .manualTrack:
            return String(localized: "Manual Track", comment: "Air Unit Entity")
        }
    }
}

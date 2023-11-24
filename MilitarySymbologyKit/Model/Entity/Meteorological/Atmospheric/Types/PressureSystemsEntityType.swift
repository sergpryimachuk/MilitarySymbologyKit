//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension AtmosphericEntity {
    enum PressureSystemsEntityType: String, CaseIterable, EntityType {
        case lowPressureCenter = "01"
        case highPressureCenter = "02"
        case frontalSystems = "03"
        case lines = "04"
        case pressureTendency = "05"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .lowPressureCenter:
                return String(localized: "Low Pressure Center", comment: "Pressure Systems Entity Type")
                
            case .highPressureCenter:
                return String(localized: "High Pressure Center", comment: "Pressure Systems Entity Type")
                
            case .frontalSystems:
                return String(localized: "Frontal Systems", comment: "Pressure Systems Entity Type")
                
            case .lines:
                return String(localized: "Lines", comment: "Pressure Systems Entity Type")
                
            case .pressureTendency:
                return String(localized: "Pressure Tendency", comment: "Pressure Systems Entity Type")
            }
        }
    }
}

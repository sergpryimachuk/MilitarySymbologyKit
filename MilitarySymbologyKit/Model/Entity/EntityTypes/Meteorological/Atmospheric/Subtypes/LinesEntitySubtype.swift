//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum LinesEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case troughAxis = "01"
    case upperTroughAxis = "02"
    case ridgeAxis = "03"
    case severeSquallLine = "04"
    case instabilityLine = "05"
    case shearLine = "06"
    case interTropicalConvergenceZone = "07"
    case convergenceLine = "08"
    case interTropicalDiscontinuity = "09"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .troughAxis:
            return String(localized: "Trough Axis", comment: "Lines Entity Subtype")
            
        case .upperTroughAxis:
            return String(localized: "Upper Trough Axis", comment: "Lines Entity Subtype")
            
        case .ridgeAxis:
            return String(localized: "Ridge Axis", comment: "Lines Entity Subtype")
            
        case .severeSquallLine:
            return String(localized: "Severe Squall Line", comment: "Lines Entity Subtype")
            
        case .instabilityLine:
            return String(localized: "Instability Line", comment: "Lines Entity Subtype")
            
        case .shearLine:
            return String(localized: "Shear Line", comment: "Lines Entity Subtype")
            
        case .interTropicalConvergenceZone:
            return String(localized: "Inter-Tropical Convergence Zone", comment: "Lines Entity Subtype")
            
        case .convergenceLine:
            return String(localized: "Convergence Line", comment: "Lines Entity Subtype")
            
        case .interTropicalDiscontinuity:
            return String(localized: "Inter-Tropical Discontinuity", comment: "Lines Entity Subtype")
        }
    }
}

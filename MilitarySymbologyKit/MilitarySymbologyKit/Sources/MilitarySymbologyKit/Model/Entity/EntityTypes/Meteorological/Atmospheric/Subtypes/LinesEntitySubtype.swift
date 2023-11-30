//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

public enum LinesEntitySubtype: String, CaseIterable, EntitySubtype {
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
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .troughAxis:
            String(localized: "Trough Axis", bundle: .module, comment: "Lines Entity Subtype")
            
        case .upperTroughAxis:
            String(localized: "Upper Trough Axis", bundle: .module, comment: "Lines Entity Subtype")
            
        case .ridgeAxis:
            String(localized: "Ridge Axis", bundle: .module, comment: "Lines Entity Subtype")
            
        case .severeSquallLine:
            String(localized: "Severe Squall Line", bundle: .module, comment: "Lines Entity Subtype")
            
        case .instabilityLine:
            String(localized: "Instability Line", bundle: .module, comment: "Lines Entity Subtype")
            
        case .shearLine:
            String(localized: "Shear Line", bundle: .module, comment: "Lines Entity Subtype")
            
        case .interTropicalConvergenceZone:
            String(localized: "Inter-Tropical Convergence Zone", bundle: .module, comment: "Lines Entity Subtype")
            
        case .convergenceLine:
            String(localized: "Convergence Line", bundle: .module, comment: "Lines Entity Subtype")
            
        case .interTropicalDiscontinuity:
            String(localized: "Inter-Tropical Discontinuity", bundle: .module, comment: "Lines Entity Subtype")
        }
    }
}

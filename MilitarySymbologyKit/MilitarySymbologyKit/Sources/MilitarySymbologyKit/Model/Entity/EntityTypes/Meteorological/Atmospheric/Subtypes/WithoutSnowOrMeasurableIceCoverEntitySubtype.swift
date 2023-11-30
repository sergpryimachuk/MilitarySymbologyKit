//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum WithoutSnowOrMeasurableIceCoverEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case surfaceDryWithoutCracks = "01"
    case surfaceMoist = "02"
    case surfaceWetStandingWater = "03"
    case surfaceFlooded = "04"
    case surfaceFrozen = "05"
    case glazeThinIce = "06"
    case looseDryDustOrSandNotCoveringGround = "07"
    case thinLooseDryDustOrSandCoveringGround = "08"
    case moderateThickLooseDryDustOrSandCoveringGround = "09"
    case extremelyDryWithCracks = "10"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .surfaceDryWithoutCracks:
            return String(localized: "Surface Dry Without Cracks", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceMoist:
            return String(localized: "Surface Moist", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceWetStandingWater:
            return String(localized: "Surface Wet - Standing Water", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceFlooded:
            return String(localized: "Surface Flooded", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceFrozen:
            return String(localized: "Surface Frozen", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .glazeThinIce:
            return String(localized: "Glaze (Thin Ice) on Ground", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .looseDryDustOrSandNotCoveringGround:
            return String(localized: "Loose Dry Dust or Sand Not Covering Ground Completely", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .thinLooseDryDustOrSandCoveringGround:
            return String(localized: "Thin Loose Dry Dust or Sand Covering Ground Completely", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .moderateThickLooseDryDustOrSandCoveringGround:
            return String(localized: "Moderate/Thick Loose Dry Dust or Sand Covering Ground Completely", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .extremelyDryWithCracks:
            return String(localized: "Extremely Dry with Cracks", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
        }
    }
}

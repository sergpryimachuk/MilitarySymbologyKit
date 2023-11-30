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
            String(localized: "None")
            
        case .surfaceDryWithoutCracks:
            String(localized: "Surface Dry Without Cracks", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceMoist:
            String(localized: "Surface Moist", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceWetStandingWater:
            String(localized: "Surface Wet - Standing Water", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceFlooded:
            String(localized: "Surface Flooded", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .surfaceFrozen:
            String(localized: "Surface Frozen", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .glazeThinIce:
            String(localized: "Glaze (Thin Ice) on Ground", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .looseDryDustOrSandNotCoveringGround:
            String(localized: "Loose Dry Dust or Sand Not Covering Ground Completely", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .thinLooseDryDustOrSandCoveringGround:
            String(localized: "Thin Loose Dry Dust or Sand Covering Ground Completely", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .moderateThickLooseDryDustOrSandCoveringGround:
            String(localized: "Moderate/Thick Loose Dry Dust or Sand Covering Ground Completely", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
            
        case .extremelyDryWithCracks:
            String(localized: "Extremely Dry with Cracks", comment: "Without Snow or Measurable Ice Cover Entity Subtype")
        }
    }
}

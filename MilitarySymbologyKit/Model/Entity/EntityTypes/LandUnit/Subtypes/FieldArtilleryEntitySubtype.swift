//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//  

import Foundation

enum FieldArtilleryEntitySubtype: String, CaseIterable, EntitySubtype {
    case selfPropelled = "01"
    case targetAcquisition = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .selfPropelled:
            return String(localized: "Self-propelled", comment: "Field Artillery Entity Subtype")
            
        case .targetAcquisition:
            return String(localized: "Target Acquisition", comment: "Field Artillery Entity Subtype")
        }
    }
}

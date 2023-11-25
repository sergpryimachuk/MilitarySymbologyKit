//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension SeaSubsurfaceEntity {
    enum MilitaryEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case submarine = "01"
        case otherSubmersible = "02"
        case nonsubmarine = "03"
        case autonomousUnderwaterVehicleAUV_UUV = "04"
        case diver = "05"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .submarine:
                return String(localized: "Submarine", comment: "Military Entity Type")
                
            case .otherSubmersible:
                return String(localized: "Other Submersible", comment: "Military Entity Type")
                
            case .nonsubmarine:
                return String(localized: "Nonsubmarine", comment: "Military Entity Type")
                
            case .autonomousUnderwaterVehicleAUV_UUV:
                return String(localized: "Autonomous Underwater Vehicle (AUV)/Unmanned Underwater Vehicle (UUV)", comment: "Military Entity Type")
                
            case .diver:
                return String(localized: "Diver", comment: "Military Entity Type")
            }
        }
    }
}
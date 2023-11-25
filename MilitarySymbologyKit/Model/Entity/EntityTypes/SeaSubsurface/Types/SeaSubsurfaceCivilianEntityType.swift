//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension SeaSubsurfaceEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case submersible = "01"
        case autonomousUnderwaterVehicleAUV_UUV = "02"
        case diver = "03"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .submersible:
                return String(localized: "Submersible", comment: "Civilian Entity Type")
                
            case .autonomousUnderwaterVehicleAUV_UUV:
                return String(localized: "Autonomous Underwater Vehicle (AUV)/Underwater Vehicle (UUV)", comment: "Civilian Entity Type")
                
            case .diver:
                return String(localized: "Diver", comment: "Civilian Entity Type")
            }
        }
    }
}
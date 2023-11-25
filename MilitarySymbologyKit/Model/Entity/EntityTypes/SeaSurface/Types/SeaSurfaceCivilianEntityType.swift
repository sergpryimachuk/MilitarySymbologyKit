//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//  

import Foundation

extension SeaSurfaceEntity {
    enum CivilianEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case merchantShip = "01"
        case fishingVessel = "02"
        case lawEnforcementVessel = "03"
        case leisureCraftSailing = "04"
        case leisureCraftMotorized = "05"
        case jetSki = "06"
        case unmannedSurfaceWaterVehicleUSV = "07"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                return String(localized: "None")
                
            case .merchantShip:
                return String(localized: "Merchant Ship", comment: "Civilian Entity Type")
                
            case .fishingVessel:
                return String(localized: "Fishing Vessel", comment: "Civilian Entity Type")
                
            case .lawEnforcementVessel:
                return String(localized: "Law Enforcement Vessel", comment: "Civilian Entity Type")
                
            case .leisureCraftSailing:
                return String(localized: "Leisure Craft, Sailing", comment: "Civilian Entity Type")
                
            case .leisureCraftMotorized:
                return String(localized: "Leisure Craft, Motorized", comment: "Civilian Entity Type")
                
            case .jetSki:
                return String(localized: "Jet Ski", comment: "Civilian Entity Type")
                
            case .unmannedSurfaceWaterVehicleUSV:
                return String(localized: "Unmanned Surface Water Vehicle (USV)", comment: "Civilian Entity Type")
            }
        }
    }
}

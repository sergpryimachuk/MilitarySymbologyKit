//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//  

import Foundation

enum MineLayingEquipmentEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case utilityVehicle = "01"
    case armoredCarrierWithVolcano = "02"
    case truckMountedWithVolcano = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
            
        case .utilityVehicle:
            return String(localized: "Mine Laying Equipment on Utility Vehicle", comment: "Mine Laying Equipment Entity Subtype")
            
        case .armoredCarrierWithVolcano:
            return String(localized: "Armored Carrier with Volcano", comment: "Mine Laying Equipment Entity Subtype")
            
        case .truckMountedWithVolcano:
            return String(localized: "Truck Mounted with Volcano", comment: "Mine Laying Equipment Entity Subtype")
        }
    }
}

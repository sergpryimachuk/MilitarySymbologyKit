//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum MineLayingEquipmentEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case utilityVehicle = "01"
    case armoredCarrierWithVolcano = "02"
    case truckMountedWithVolcano = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .utilityVehicle:
            String(localized: "Mine Laying Equipment on Utility Vehicle", bundle: .module, comment: "Mine Laying Equipment Entity Subtype")

        case .armoredCarrierWithVolcano:
            String(localized: "Armored Carrier with Volcano", bundle: .module, comment: "Mine Laying Equipment Entity Subtype")

        case .truckMountedWithVolcano:
            String(localized: "Truck Mounted with Volcano", bundle: .module, comment: "Mine Laying Equipment Entity Subtype")
        }
    }
}

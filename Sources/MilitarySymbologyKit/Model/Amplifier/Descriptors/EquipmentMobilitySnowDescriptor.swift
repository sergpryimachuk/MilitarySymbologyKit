//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum EquipmentMobilitySnowDescriptor: String, CaseIterable, Descriptor {
    case overSnow = "1"
    case sled = "2"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .overSnow:
            String(localized: "Over snow (prime mover)", bundle: .module, comment: "Equipment mobility on snow amplifier descriptor")
        case .sled:
            String(localized: "Sled", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum EquipmentMobilitySnowDescriptor: String, CaseIterable, Descriptor {
    case overSnow = "1"
    case sled = "2"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .overSnow:
            String(localized: "Over snow (prime mover)", comment: "Equipment mobility on snow amplifier descriptor")
        case .sled:
            String(localized: "Sled", comment: "Equipment mobility on land amplifier descriptor")
        }
    }
}

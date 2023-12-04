//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum EquipmentMobilityWaterDescriptor: String, CaseIterable, Descriptor {
    case barge = "1"
    case amphibious = "2"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .barge:
            String(localized: "Barge", bundle: .module, comment: "Equipment mobility on water amplifier descriptor")

        case .amphibious:
            String(localized: "Amphibious", bundle: .module, comment: "Equipment mobility on water amplifier descriptor")
        }
    }
}

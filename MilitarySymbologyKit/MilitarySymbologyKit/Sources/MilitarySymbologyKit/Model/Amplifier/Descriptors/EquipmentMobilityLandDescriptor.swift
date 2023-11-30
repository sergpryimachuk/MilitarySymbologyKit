//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum EquipmentMobilityLandDescriptor: String, CaseIterable, Descriptor {
    case wheeledLimitedCrossCountry = "1"
    case wheeledCrossCountry = "2"
    case tracked = "3"
    case wheeledAndTrackedCombination = "4"
    case towed = "5"
    case rail = "6"
    case packAnimals = "7"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .wheeledLimitedCrossCountry:
            String(localized: "Wheeled limited cross country", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")

        case .wheeledCrossCountry:
            String(localized: "Wheeled cross country", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")

        case .tracked:
            String(localized: "Tracked", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")

        case .wheeledAndTrackedCombination:
            String(localized: "Wheeled and tracked combination", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")

        case .towed:
            String(localized: "Towed", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")

        case .rail:
            String(localized: "Rail", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")

        case .packAnimals:
            String(localized: "Pack animals", bundle: .module, comment: "Equipment mobility on land amplifier descriptor")
        }
    }
}

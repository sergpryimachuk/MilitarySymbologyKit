//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import SwiftUI

public enum Amplifier: String, CaseIterable, Identifiable {
    case none = "0"
    case echelonBrigadeBelow = "1"
    case echelonDivisionAbove = "2"
    case equipmentMobilityLand = "3"
    case equipmentMobilitySnow = "4"
    case equipmentMobilityWater = "5"
    case navalTowedArray = "6"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .echelonBrigadeBelow:
            String(localized: "Echelon at brigade and below", bundle: .module, comment: "Amplifier")

        case .echelonDivisionAbove:
            String(localized: "Echelon at division and above", bundle: .module, comment: "Amplifier")

        case .equipmentMobilityLand:
            String(localized: "Equipment mobility on land", bundle: .module, comment: "Amplifier")

        case .equipmentMobilitySnow:
            String(localized: "Equipment mobility on snow", bundle: .module, comment: "Amplifier")

        case .equipmentMobilityWater:
            String(localized: "Equipment mobility on water", bundle: .module, comment: "Amplifier")

        case .navalTowedArray:
            String(localized: "Naval towed array", bundle: .module, comment: "Amplifier")
        }
    }

    public var descriptors: [AnyDescriptor] {
        switch self {
        case .none:
            [.none]
        case .echelonBrigadeBelow:
            EchelonBrigadeBelowDescriptor.allCases.map { AnyDescriptor($0) }
        case .echelonDivisionAbove:
            EchelonDivisionAboveDescriptor.allCases.map { AnyDescriptor($0) }
        case .equipmentMobilityLand:
            EquipmentMobilityLandDescriptor.allCases.map { AnyDescriptor($0) }
        case .equipmentMobilitySnow:
            EquipmentMobilitySnowDescriptor.allCases.map { AnyDescriptor($0) }
        case .equipmentMobilityWater:
            EquipmentMobilityWaterDescriptor.allCases.map { AnyDescriptor($0) }
        case .navalTowedArray:
            NavalTowedArrayDescriptor.allCases.map { AnyDescriptor($0) }
        }
    }
}

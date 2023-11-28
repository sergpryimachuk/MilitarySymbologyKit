//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import SwiftUI

enum Amplifier: String, CaseIterable, Identifiable {
    case notApplicable = "0"
    case echelonBrigadeBelow = "1"
    case echelonDivisionAbove = "2"
    case equipmentMobilityLand = "3"
    case equipmentMobilitySnow = "4"
    case equipmentMobilityWater = "5"
    case navalTowedArray = "6"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .notApplicable:
            String(localized: "Not Applicable", comment: "Amplifier")

        case .echelonBrigadeBelow:
            String(localized: "Echelon at brigade and below", comment: "Amplifier")

        case .echelonDivisionAbove:
            String(localized: "Echelon at division and above", comment: "Amplifier")

        case .equipmentMobilityLand:
            String(localized: "Equipment mobility on land", comment: "Amplifier")

        case .equipmentMobilitySnow:
            String(localized: "Equipment mobility on snow", comment: "Amplifier")

        case .equipmentMobilityWater:
            String(localized: "Equipment mobility on water", comment: "Amplifier")

        case .navalTowedArray:
            String(localized: "Naval towed array", comment: "Amplifier")
        }
    }

    var descriptors: [AnyDescriptor] {
        switch self {
        case .notApplicable:
            NotApplicableDescriptor.allCases.map { AnyDescriptor($0) }
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

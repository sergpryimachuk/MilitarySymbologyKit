//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

enum MineWarfareEntity: String, CaseIterable, Entity {
    case seaMineGeneral = "11"
    case unexplodedOrdnance = "12"
    case seaMineDecoy = "13"
    case mineLikeContactMILCO = "14"
    case mineLikeEchoMILECGeneral = "15"
    case negativeReacquisitionGeneral = "16"
    case obstructor = "17"
    case generalMineAnchor = "18"
    case nonMineMineLikeObjectNMLOGeneral = "19"
    case environmentalReportLocation = "20"
    case diveReportLocation = "21"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .seaMineGeneral:
            String(localized: "Sea Mine-General", comment: "Mine Warfare Entity")

        case .unexplodedOrdnance:
            String(localized: "Unexploded Ordnance", comment: "Mine Warfare Entity")

        case .seaMineDecoy:
            String(localized: "Sea Mine Decoy", comment: "Mine Warfare Entity")

        case .mineLikeContactMILCO:
            String(localized: "Mine-Like Contact (MILCO)", comment: "Mine Warfare Entity")

        case .mineLikeEchoMILECGeneral:
            String(localized: "Mine-Like Echo (MILEC)-General", comment: "Mine Warfare Entity")

        case .negativeReacquisitionGeneral:
            String(localized: "Negative Reacquisition-General", comment: "Mine Warfare Entity")

        case .obstructor:
            String(localized: "Obstructor", comment: "Mine Warfare Entity")

        case .generalMineAnchor:
            String(localized: "General Mine Anchor", comment: "Mine Warfare Entity")

        case .nonMineMineLikeObjectNMLOGeneral:
            String(localized: "Non-Mine Mine-Like Object (NMLO)-General", comment: "Mine Warfare Entity")

        case .environmentalReportLocation:
            String(localized: "Environmental Report Location", comment: "Mine Warfare Entity")

        case .diveReportLocation:
            String(localized: "Dive Report Location", comment: "Mine Warfare Entity")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .seaMineGeneral:
            SeaMineGeneralEntityType.allCases.map { AnyEntityType($0) }
        case .unexplodedOrdnance:
            [.none]
        case .seaMineDecoy:
            SeaMineDecoyEntityType.allCases.map { AnyEntityType($0) }
        case .mineLikeContactMILCO:
            MineLikeContactEntityType.allCases.map { AnyEntityType($0) }
        case .mineLikeEchoMILECGeneral:
            MineLikeEchoMILECGeneralEntityType.allCases.map { AnyEntityType($0) }
        case .negativeReacquisitionGeneral:
            NegativeReacquisitionGeneralEntityType.allCases.map { AnyEntityType($0) }
        case .obstructor:
            ObstructorEntityType.allCases.map { AnyEntityType($0) }
        case .generalMineAnchor:
            [.none]
        case .nonMineMineLikeObjectNMLOGeneral:
            NonMineMineLikeObjectNMLOGeneralEntityType.allCases.map { AnyEntityType($0) }
        case .environmentalReportLocation:
            [.none]
        case .diveReportLocation:
            [.none]
        }
    }
}

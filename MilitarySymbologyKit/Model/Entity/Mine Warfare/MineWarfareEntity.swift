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
            return String(localized: "Sea Mine-General", comment: "Mine Warfare Entity")
            
        case .unexplodedOrdnance:
            return String(localized: "Unexploded Ordnance", comment: "Mine Warfare Entity")
            
        case .seaMineDecoy:
            return String(localized: "Sea Mine Decoy", comment: "Mine Warfare Entity")
            
        case .mineLikeContactMILCO:
            return String(localized: "Mine-Like Contact (MILCO)", comment: "Mine Warfare Entity")
            
        case .mineLikeEchoMILECGeneral:
            return String(localized: "Mine-Like Echo (MILEC)-General", comment: "Mine Warfare Entity")
            
        case .negativeReacquisitionGeneral:
            return String(localized: "Negative Reacquisition-General", comment: "Mine Warfare Entity")
            
        case .obstructor:
            return String(localized: "Obstructor", comment: "Mine Warfare Entity")
            
        case .generalMineAnchor:
            return String(localized: "General Mine Anchor", comment: "Mine Warfare Entity")
            
        case .nonMineMineLikeObjectNMLOGeneral:
            return String(localized: "Non-Mine Mine-Like Object (NMLO)-General", comment: "Mine Warfare Entity")
            
        case .environmentalReportLocation:
            return String(localized: "Environmental Report Location", comment: "Mine Warfare Entity")
            
        case .diveReportLocation:
            return String(localized: "Dive Report Location", comment: "Mine Warfare Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .seaMineGeneral:
            SeaMineGeneralEntityType.allCases.map { AnyEntityType($0) }
        case .unexplodedOrdnance:
            [.empty]
        case .seaMineDecoy:
            SeaMineDecoyEntityType.allCases.map { AnyEntityType($0) }
        case .mineLikeContactMILCO:
            MineLikeContactEntityType.allCases.map { AnyEntityType($0) }
        case .mineLikeEchoMILECGeneral:
            []
        case .negativeReacquisitionGeneral:
            []
        case .obstructor:
            []
        case .generalMineAnchor:
            []
        case .nonMineMineLikeObjectNMLOGeneral:
            []
        case .environmentalReportLocation:
            []
        case .diveReportLocation:
            []
        }
    }
}

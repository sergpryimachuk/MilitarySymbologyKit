//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum SustainmentPointsEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case ambulanceExchangePoint = "01"
    case ammunitionSupplyPoint = "02"
    case ammunitionTransferPoint = "03"
    case cannibalizationPoint = "04"
    case casualtyCollectionPoint = "05"
    case civilianCollectionPoint = "06"
    case detaineeCollectionPoint = "07"
    case enemyPrisonerOfWarCollectionPoint = "08"
    case logisticsReleasePoint = "09"
    case maintenanceCollectionPoint = "10"
    case medicalEvacuationPickUpPoint = "11"
    case rearmRefuelResupplyPoint = "12"
    case refuelOnTheMovePoint = "13"
    case trafficControlPost = "14"
    case trailerTransferPoint = "15"
    case unitMaintenanceCollectionPoint = "16"
    case generalSupplyPoint = "17"
    case medicalSupplyPoint = "18"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .ambulanceExchangePoint:
            return String(localized: "Ambulance Exchange Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .ammunitionSupplyPoint:
            return String(localized: "Ammunition Supply Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .ammunitionTransferPoint:
            return String(localized: "Ammunition Transfer Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .cannibalizationPoint:
            return String(localized: "Cannibalization Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .casualtyCollectionPoint:
            return String(localized: "Casualty Collection Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .civilianCollectionPoint:
            return String(localized: "Civilian Collection Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .detaineeCollectionPoint:
            return String(localized: "Detainee Collection Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .enemyPrisonerOfWarCollectionPoint:
            return String(localized: "Enemy Prisoner of War Collection Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .logisticsReleasePoint:
            return String(localized: "Logistics Release Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .maintenanceCollectionPoint:
            return String(localized: "Maintenance Collection Point (MCP)", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .medicalEvacuationPickUpPoint:
            return String(localized: "Medical Evacuation (MEDEVAC) Pick-up Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .rearmRefuelResupplyPoint:
            return String(localized: "Rearm-Refuel and Resupply Point (R3P)", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .refuelOnTheMovePoint:
            return String(localized: "Refuel on the Move (ROM) Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .trafficControlPost:
            return String(localized: "Traffic Control Post (TCP)", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .trailerTransferPoint:
            return String(localized: "Trailer Transfer Point (TTP)", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .unitMaintenanceCollectionPoint:
            return String(localized: "Unit Maintenance Collection Point (UMCP)", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .generalSupplyPoint:
            return String(localized: "General Supply Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        case .medicalSupplyPoint:
            return String(localized: "Medical Supply Point", bundle: .module, comment: "Sustainment Points Entity Subtype")
        }
    }
    
    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .generalSupplyPoint:
            GeneralSupplyPointEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}

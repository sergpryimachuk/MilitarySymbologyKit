//
//  SustainmentPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum SustainmentPointsEntityType: String, CaseIterable, EntityType {
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
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .ambulanceExchangePoint:
            String(localized: "Ambulance Exchange Point", comment: "Sustainment Points Entity Type")
        case .ammunitionSupplyPoint:
            String(localized: "Ammunition Supply Point", comment: "Sustainment Points Entity Type")
        case .ammunitionTransferPoint:
            String(localized: "Ammunition Transfer Point", comment: "Sustainment Points Entity Type")
        case .cannibalizationPoint:
            String(localized: "Cannibalization Point", comment: "Sustainment Points Entity Type")
        case .casualtyCollectionPoint:
            String(localized: "Casualty Collection Point", comment: "Sustainment Points Entity Type")
        case .civilianCollectionPoint:
            String(localized: "Civilian Collection Point", comment: "Sustainment Points Entity Type")
        case .detaineeCollectionPoint:
            String(localized: "Detainee Collection Point", comment: "Sustainment Points Entity Type")
        case .enemyPrisonerOfWarCollectionPoint:
            String(localized: "Enemy Prisoner of War Collection Point", comment: "Sustainment Points Entity Type")
        case .logisticsReleasePoint:
            String(localized: "Logistics Release Point", comment: "Sustainment Points Entity Type")
        case .maintenanceCollectionPoint:
            String(localized: "Maintenance Collection Point", comment: "Sustainment Points Entity Type")
        case .medicalEvacuationPickUpPoint:
            String(localized: "Medical Evacuation Pick-up Point", comment: "Sustainment Points Entity Type")
        case .rearmRefuelResupplyPoint:
            String(localized: "Rearm-Refuel and Resupply Point", comment: "Sustainment Points Entity Type")
        case .refuelOnTheMovePoint:
            String(localized: "Refuel on the Move Point", comment: "Sustainment Points Entity Type")
        case .trafficControlPost:
            String(localized: "Traffic Control Post", comment: "Sustainment Points Entity Type")
        case .trailerTransferPoint:
            String(localized: "Trailer Transfer Point", comment: "Sustainment Points Entity Type")
        case .unitMaintenanceCollectionPoint:
            String(localized: "Unit Maintenance Collection Point", comment: "Sustainment Points Entity Type")
        case .generalSupplyPoint:
            String(localized: "General Supply Point", comment: "Sustainment Points Entity Type")
        case .medicalSupplyPoint:
            String(localized: "Medical Supply Point", comment: "Sustainment Points Entity Type")
        }
    }
}

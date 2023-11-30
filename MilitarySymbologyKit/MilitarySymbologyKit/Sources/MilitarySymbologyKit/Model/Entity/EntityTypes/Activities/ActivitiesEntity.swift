//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum ActivitiesEntity: String, CaseIterable, Entity {
    case incident = "11"
    case civilDisturbance = "12"
    case operation = "13"
    case fireEvent = "14"
    case hazardMaterials = "15"
    case transportationIncident = "16"
    case naturalEvent = "17"
    case individual = "18"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .incident:
            String(localized: "Incident", comment: "Activities Entity")
            
        case .civilDisturbance:
            String(localized: "Civil Disturbance", comment: "Activities Entity")
            
        case .operation:
            String(localized: "Operation", comment: "Activities Entity")
            
        case .fireEvent:
            String(localized: "Fire Event", comment: "Activities Entity")
            
        case .hazardMaterials:
            String(localized: "Hazard Materials", comment: "Activities Entity")
            
        case .transportationIncident:
            String(localized: "Transportation Incident", comment: "Activities Entity")
            
        case .naturalEvent:
            String(localized: "Natural Event", comment: "Activities Entity")
            
        case .individual:
            String(localized: "Individual", comment: "Activities Entity")
        }
    }
    
    var types: [AnyEntityType] {
        switch self {
        case .incident:
            IncidentEntityType.allCases.map { AnyEntityType($0) }
        case .civilDisturbance:
            CivilDisturbanceEntityType.allCases.map { AnyEntityType($0) }
        case .operation:
            OperationEntityType.allCases.map { AnyEntityType($0) }
        case .fireEvent:
            FireEventEntityType.allCases.map { AnyEntityType($0) }
        case .hazardMaterials:
            HazardMaterialsEntityType.allCases.map { AnyEntityType($0) }
        case .transportationIncident:
            TransportationIncidentEntityType.allCases.map { AnyEntityType($0) }
        case .naturalEvent:
            NaturalEventEntityType.allCases.map { AnyEntityType($0) }
        case .individual:
            IndividualEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum IncidentEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case criminalActivityIncident = "01"
    case bombBombing = "02"
    case iedEvent = "03"
    case shooting = "04"
    case illegalDrugOperation = "05"
    case explosion = "06"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None", comment: "Incident Entity Type")
            
        case .criminalActivityIncident:
            return String(localized: "Criminal Activity Incident", comment: "Incident Entity Type")
            
        case .bombBombing:
            return String(localized: "Bomb/Bombing", comment: "Incident Entity Type")
            
        case .iedEvent:
            return String(localized: "IED Event", comment: "Incident Entity Type")
            
        case .shooting:
            return String(localized: "Shooting", comment: "Incident Entity Type")
            
        case .illegalDrugOperation:
            return String(localized: "Illegal Drug Operation", comment: "Incident Entity Type")
            
        case .explosion:
            return String(localized: "Explosion", comment: "Incident Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .criminalActivityIncident:
            CriminalActivityIncidentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .bombBombing:
            BombBombingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .iedEvent:
            IEDEventEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .shooting:
            ShootingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .illegalDrugOperation:
            IllegalDrugOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .explosion:
            ExplosionEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

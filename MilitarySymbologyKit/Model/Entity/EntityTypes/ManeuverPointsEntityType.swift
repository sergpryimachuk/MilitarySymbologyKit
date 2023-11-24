//
//  ManeuverPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ManeuverPointsEntityType: String, CaseIterable, EntityType {
    case observationPostOutpostUnspecified = "01"
    case observationPostOutpostSpecified = "02"
    case targetReferencePoint = "03"
    case pointOfDeparture = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .observationPostOutpostUnspecified:
            return String(localized: "Observation Post/Outpost (Unspecified)", comment: "Maneuver Points Entity Type")
            
        case .observationPostOutpostSpecified:
            return String(localized: "Observation Post/Outpost (Specified)", comment: "Maneuver Points Entity Type")
            
        case .targetReferencePoint:
            return String(localized: "Target Reference Point", comment: "Maneuver Points Entity Type")
            
        case .pointOfDeparture:
            return String(localized: "Point of Departure", comment: "Maneuver Points Entity Type")
        }
    }
}

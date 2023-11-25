//
//  CommandAndControlAreasEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum CommandAndControlAreasEntityType: String, CaseIterable, EntityType {
    case areaOfOperations = "01"
    case namedAreaOfInterest = "02"
    case targetedAreaOfInterest = "03"
    case airfieldZone = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .areaOfOperations:
            return String(localized: "Area of Operations", comment: "Command and Control Areas Entity Type")
            
        case .namedAreaOfInterest:
            return String(localized: "Named Area of Interest", comment: "Command and Control Areas Entity Type")
            
        case .targetedAreaOfInterest:
            return String(localized: "Targeted Area of Interest", comment: "Command and Control Areas Entity Type")
            
        case .airfieldZone:
            return String(localized: "Airfield Zone", comment: "Command and Control Areas Entity Type")
        }
    }
}

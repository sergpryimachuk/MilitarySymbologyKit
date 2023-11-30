//
//  HazardMaterialsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum HazardMaterialsEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case hazardMaterialsIncident = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .hazardMaterialsIncident:
            String(localized: "Hazard Materials Incident", bundle: .module, comment: "Hazard Materials Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .hazardMaterialsIncident:
            HazardMaterialsIncidentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
    
}

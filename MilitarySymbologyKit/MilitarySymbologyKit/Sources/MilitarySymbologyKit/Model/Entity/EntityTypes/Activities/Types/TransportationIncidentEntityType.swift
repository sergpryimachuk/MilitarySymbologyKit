//
//  TransportationIncidentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum TransportationIncidentEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case air = "01"
    case marine = "02"
    case rail = "03"
    case vehicle = "04"
    case wheeledVehicleExplosion = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .air:
            String(localized: "Air", comment: "Transportation Incident Entity Type")
        case .marine:
            String(localized: "Marine", comment: "Transportation Incident Entity Type")
        case .rail:
            String(localized: "Rail", comment: "Transportation Incident Entity Type")
        case .vehicle:
            String(localized: "Vehicle", comment: "Transportation Incident Entity Type")
        case .wheeledVehicleExplosion:
            String(localized: "Wheeled Vehicle Explosion", comment: "Transportation Incident Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .air:
            HazardMaterialsIncidentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .marine:
            [.none]
        case .rail:
            [.none]
        case .vehicle:
            [.none]
        case .wheeledVehicleExplosion:
            [.none]
        }
    }
}

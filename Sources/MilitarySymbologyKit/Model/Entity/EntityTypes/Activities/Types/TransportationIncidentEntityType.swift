//
//  TransportationIncidentEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

public enum TransportationIncidentEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case air = "01"
    case marine = "02"
    case rail = "03"
    case vehicle = "04"
    case wheeledVehicleExplosion = "05"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .air:
            String(localized: "Air", bundle: .module, comment: "Transportation Incident Entity Type")
        case .marine:
            String(localized: "Marine", bundle: .module, comment: "Transportation Incident Entity Type")
        case .rail:
            String(localized: "Rail", bundle: .module, comment: "Transportation Incident Entity Type")
        case .vehicle:
            String(localized: "Vehicle", bundle: .module, comment: "Transportation Incident Entity Type")
        case .wheeledVehicleExplosion:
            String(localized: "Wheeled Vehicle Explosion", bundle: .module, comment: "Transportation Incident Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
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

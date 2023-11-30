//
//  SensorsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum SensorsEntityType: String, CaseIterable, EntityType {
    case sensor = "01"
    case sensorEmplaced = "02"
    case radar = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .sensor:
            String(localized: "Sensor", bundle: .module, comment: "Sensors Entity Type")

        case .sensorEmplaced:
            String(localized: "Sensor Emplaced", bundle: .module, comment: "Sensors Entity Type")

        case .radar:
            String(localized: "Radar", bundle: .module, comment: "Sensors Entity Type")
        }
    }
    
    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

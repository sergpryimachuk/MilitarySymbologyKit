//
//  SensorsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum SensorsEntityType: String, CaseIterable, EntityType {
    case sensor = "01"
    case sensorEmplaced = "02"
    case radar = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .sensor:
            String(localized: "Sensor", bundle: .module, comment: "Sensors Entity Type")

        case .sensorEmplaced:
            String(localized: "Sensor Emplaced", bundle: .module, comment: "Sensors Entity Type")

        case .radar:
            String(localized: "Radar", bundle: .module, comment: "Sensors Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

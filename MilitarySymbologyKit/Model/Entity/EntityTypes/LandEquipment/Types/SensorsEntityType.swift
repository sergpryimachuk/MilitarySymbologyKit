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
            String(localized: "Sensor", comment: "Sensors Entity Type")

        case .sensorEmplaced:
            String(localized: "Sensor Emplaced", comment: "Sensors Entity Type")

        case .radar:
            String(localized: "Radar", comment: "Sensors Entity Type")
        }
    }
}

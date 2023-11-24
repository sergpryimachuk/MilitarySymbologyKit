//
//  SensorsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum SensorsEntityType: String, CaseIterable, Identifiable {
    case sensor = "01"
    case sensorEmplaced = "02"
    case radar = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .sensor:
            return String(localized: "Sensor", comment: "Sensors Entity Type")
            
        case .sensorEmplaced:
            return String(localized: "Sensor Emplaced", comment: "Sensors Entity Type")
            
        case .radar:
            return String(localized: "Radar", comment: "Sensors Entity Type")
        }
    }
}

//
//  GeologicEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum GeologicEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case aftershock = "01"
    case avalanche = "02"
    case earthquakeEpicenter = "03"
    case landslide = "04"
    case subsidence = "05"
    case volcanicEruption = "06"
    case volcanicThreat = "07"
    case caveEntrance = "08"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None", comment: "Geologic Entity Subtype")
        case .aftershock:
            String(localized: "Aftershock", comment: "Geologic Entity Subtype")
        case .avalanche:
            String(localized: "Avalanche", comment: "Geologic Entity Subtype")
        case .earthquakeEpicenter:
            String(localized: "Earthquake Epicenter", comment: "Geologic Entity Subtype")
        case .landslide:
            String(localized: "Landslide", comment: "Geologic Entity Subtype")
        case .subsidence:
            String(localized: "Subsidence", comment: "Geologic Entity Subtype")
        case .volcanicEruption:
            String(localized: "Volcanic Eruption", comment: "Geologic Entity Subtype")
        case .volcanicThreat:
            String(localized: "Volcanic Threat", comment: "Geologic Entity Subtype")
        case .caveEntrance:
            String(localized: "Cave Entrance", comment: "Geologic Entity Subtype")
        }
    }
}

//
//  GeologicEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

public enum GeologicEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case aftershock = "01"
    case avalanche = "02"
    case earthquakeEpicenter = "03"
    case landslide = "04"
    case subsidence = "05"
    case volcanicEruption = "06"
    case volcanicThreat = "07"
    case caveEntrance = "08"
    
    public var id: String { rawValue }
    
    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module, comment: "Geologic Entity Subtype")
        case .aftershock:
            String(localized: "Aftershock", bundle: .module, comment: "Geologic Entity Subtype")
        case .avalanche:
            String(localized: "Avalanche", bundle: .module, comment: "Geologic Entity Subtype")
        case .earthquakeEpicenter:
            String(localized: "Earthquake Epicenter", bundle: .module, comment: "Geologic Entity Subtype")
        case .landslide:
            String(localized: "Landslide", bundle: .module, comment: "Geologic Entity Subtype")
        case .subsidence:
            String(localized: "Subsidence", bundle: .module, comment: "Geologic Entity Subtype")
        case .volcanicEruption:
            String(localized: "Volcanic Eruption", bundle: .module, comment: "Geologic Entity Subtype")
        case .volcanicThreat:
            String(localized: "Volcanic Threat", bundle: .module, comment: "Geologic Entity Subtype")
        case .caveEntrance:
            String(localized: "Cave Entrance", bundle: .module, comment: "Geologic Entity Subtype")
        }
    }
}

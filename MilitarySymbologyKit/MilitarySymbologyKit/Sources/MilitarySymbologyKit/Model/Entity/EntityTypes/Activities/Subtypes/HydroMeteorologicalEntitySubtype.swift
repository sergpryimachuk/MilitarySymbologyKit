//
//  HydroMeteorologicalEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum HydroMeteorologicalEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case drought = "01"
    case flood = "02"
    case tsunami = "03"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .drought:
            return String(localized: "Drought", comment: "Hydro-Meteorological Entity Subtype")
        case .flood:
            return String(localized: "Flood", comment: "Hydro-Meteorological Entity Subtype")
        case .tsunami:
            return String(localized: "Tsunami", comment: "Hydro-Meteorological Entity Subtype")
        }
    }
}

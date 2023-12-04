//
//  HydroMeteorologicalEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

public enum HydroMeteorologicalEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case drought = "01"
    case flood = "02"
    case tsunami = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .drought:
            String(localized: "Drought", bundle: .module, comment: "Hydro-Meteorological Entity Subtype")
        case .flood:
            String(localized: "Flood", bundle: .module, comment: "Hydro-Meteorological Entity Subtype")
        case .tsunami:
            String(localized: "Tsunami", bundle: .module, comment: "Hydro-Meteorological Entity Subtype")
        }
    }
}

//
//  SustainmentLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum SustainmentLinesEntityType: String, CaseIterable, EntityType {
    case movingConvoy = "01"
    case haltedConvoy = "02"
    case mainSupplyRoute = "03"
    case alternateSupplyRoute = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .movingConvoy:
            return String(localized: "Moving Convoy", comment: "Sustainment Lines Entity Type")
        case .haltedConvoy:
            return String(localized: "Halted Convoy", comment: "Sustainment Lines Entity Type")
        case .mainSupplyRoute:
            return String(localized: "Main Supply Route", comment: "Sustainment Lines Entity Type")
        case .alternateSupplyRoute:
            return String(localized: "Alternate Supply Route", comment: "Sustainment Lines Entity Type")
        }
    }
}

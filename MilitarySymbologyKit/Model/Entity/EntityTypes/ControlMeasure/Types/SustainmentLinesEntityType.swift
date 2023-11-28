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
            String(localized: "Moving Convoy", comment: "Sustainment Lines Entity Type")
        case .haltedConvoy:
            String(localized: "Halted Convoy", comment: "Sustainment Lines Entity Type")
        case .mainSupplyRoute:
            String(localized: "Main Supply Route", comment: "Sustainment Lines Entity Type")
        case .alternateSupplyRoute:
            String(localized: "Alternate Supply Route", comment: "Sustainment Lines Entity Type")
        }
    }
}

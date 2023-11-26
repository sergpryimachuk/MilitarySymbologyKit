//
//  IntelligenceLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum IntelligenceLinesEntityType: String, CaseIterable, EntityType {
    case intelligenceCoordinationLine = "01"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .intelligenceCoordinationLine:
            String(localized: "Intelligence Coordination Line", comment: "Intelligence Lines Entity Type")
        }
    }
}

//
//  FiresPointsEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum FiresPointsEntityType: String, CaseIterable, EntityType {
    case firingPoint = "01"
    case hidePoint = "02"
    case launchPoint = "03"
    case reloadPoint = "04"
    case surveyControlPoint = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .firingPoint:
            return String(localized: "Firing Point", comment: "Fires Points Entity Type")
        case .hidePoint:
            return String(localized: "Hide Point", comment: "Fires Points Entity Type")
        case .launchPoint:
            return String(localized: "Launch Point", comment: "Fires Points Entity Type")
        case .reloadPoint:
            return String(localized: "Reload Point", comment: "Fires Points Entity Type")
        case .surveyControlPoint:
            return String(localized: "Survey Control Point", comment: "Fires Points Entity Type")
        }
    }
}

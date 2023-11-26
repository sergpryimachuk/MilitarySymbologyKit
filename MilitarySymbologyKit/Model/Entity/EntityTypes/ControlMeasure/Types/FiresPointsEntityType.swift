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
            String(localized: "Firing Point", comment: "Fires Points Entity Type")
        case .hidePoint:
            String(localized: "Hide Point", comment: "Fires Points Entity Type")
        case .launchPoint:
            String(localized: "Launch Point", comment: "Fires Points Entity Type")
        case .reloadPoint:
            String(localized: "Reload Point", comment: "Fires Points Entity Type")
        case .surveyControlPoint:
            String(localized: "Survey Control Point", comment: "Fires Points Entity Type")
        }
    }
}

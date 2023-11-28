//
//  CommandAndControlLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum CommandAndControlLinesEntityType: String, CaseIterable, EntityType {
    case boundary = "01"
    case lightLine = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .boundary:
            String(localized: "Boundary", comment: "Command and Control Lines Entity Type")

        case .lightLine:
            String(localized: "Light Line", comment: "Command and Control Lines Entity Type")
        }
    }
}

//
//  ExerciseMineGeneralSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum ExerciseMineGeneralSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case exerciseMineBottom = "01"
    case exerciseMineMoored = "02"
    case exerciseMineFloating = "03"
    case exerciseMineRising = "04"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .exerciseMineBottom:
            return String(localized: "Exercise Mine - Bottom", comment: "Exercise Mine General Subtype")
        case .exerciseMineMoored:
            return String(localized: "Exercise Mine - Moored", comment: "Exercise Mine General Subtype")
        case .exerciseMineFloating:
            return String(localized: "Exercise Mine - Floating", comment: "Exercise Mine General Subtype")
        case .exerciseMineRising:
            return String(localized: "Exercise Mine - Rising", comment: "Exercise Mine General Subtype")
        }
    }
}

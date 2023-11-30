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
            String(localized: "None")
        case .exerciseMineBottom:
            String(localized: "Exercise Mine - Bottom", bundle: .module, comment: "Exercise Mine General Subtype")
        case .exerciseMineMoored:
            String(localized: "Exercise Mine - Moored", bundle: .module, comment: "Exercise Mine General Subtype")
        case .exerciseMineFloating:
            String(localized: "Exercise Mine - Floating", bundle: .module, comment: "Exercise Mine General Subtype")
        case .exerciseMineRising:
            String(localized: "Exercise Mine - Rising", bundle: .module, comment: "Exercise Mine General Subtype")
        }
    }
}

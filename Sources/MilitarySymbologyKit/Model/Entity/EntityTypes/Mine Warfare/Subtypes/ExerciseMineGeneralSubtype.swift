//
//  ExerciseMineGeneralSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum ExerciseMineGeneralSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case exerciseMineBottom = "01"
    case exerciseMineMoored = "02"
    case exerciseMineFloating = "03"
    case exerciseMineRising = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
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

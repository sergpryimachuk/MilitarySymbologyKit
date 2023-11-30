//
//  InfestationEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

public enum InfestationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bird = "01"
    case insect = "02"
    case microbial = "03"
    case reptile = "04"
    case rodent = "05"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .bird:
            String(localized: "Bird", bundle: .module, comment: "Infestation Entity Subtype")
        case .insect:
            String(localized: "Insect", bundle: .module, comment: "Infestation Entity Subtype")
        case .microbial:
            String(localized: "Microbial", bundle: .module, comment: "Infestation Entity Subtype")
        case .reptile:
            String(localized: "Reptile", bundle: .module, comment: "Infestation Entity Subtype")
        case .rodent:
            String(localized: "Rodent", bundle: .module, comment: "Infestation Entity Subtype")
        }
    }
}

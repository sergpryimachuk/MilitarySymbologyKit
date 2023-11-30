//
//  InfestationEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum InfestationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bird = "01"
    case insect = "02"
    case microbial = "03"
    case reptile = "04"
    case rodent = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .bird:
            String(localized: "Bird", comment: "Infestation Entity Subtype")
        case .insect:
            String(localized: "Insect", comment: "Infestation Entity Subtype")
        case .microbial:
            String(localized: "Microbial", comment: "Infestation Entity Subtype")
        case .reptile:
            String(localized: "Reptile", comment: "Infestation Entity Subtype")
        case .rodent:
            String(localized: "Rodent", comment: "Infestation Entity Subtype")
        }
    }
}

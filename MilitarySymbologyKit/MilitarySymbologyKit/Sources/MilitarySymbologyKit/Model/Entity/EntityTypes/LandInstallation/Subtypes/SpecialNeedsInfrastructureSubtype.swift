//
//  SpecialNeedsInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum SpecialNeedsInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case adultDayCare = "01"
    case childDayCare = "02"
    case elderCare = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .adultDayCare:
            String(localized: "Adult Day Care", bundle: .module, comment: "Special Needs Infrastructure Subtype")
        case .childDayCare:
            String(localized: "Child Day Care", bundle: .module, comment: "Special Needs Infrastructure Subtype")
        case .elderCare:
            String(localized: "Elder Care", bundle: .module, comment: "Special Needs Infrastructure Subtype")
        }
    }
}

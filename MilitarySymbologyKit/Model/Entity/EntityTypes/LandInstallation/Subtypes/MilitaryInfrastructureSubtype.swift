//
//  MilitaryInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum MilitaryInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case militaryArmory = "01"
    case militaryBase = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .militaryArmory:
            return String(localized: "Military Armory", comment: "Military Infrastructure Subtype")
        case .militaryBase:
            return String(localized: "Military Base", comment: "Military Infrastructure Subtype")
        }
    }
}
//
//  IndividualEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum IndividualEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case religiousLeader = "01"
    case speaker = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .religiousLeader:
            return String(localized: "Religious Leader", comment: "Individual Entity Type")
        case .speaker:
            return String(localized: "Speaker", comment: "Individual Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

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
            String(localized: "None")
        case .religiousLeader:
            String(localized: "Religious Leader", comment: "Individual Entity Type")
        case .speaker:
            String(localized: "Speaker", comment: "Individual Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .religiousLeader:
            ReligiousLeaderEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .speaker:
            SpeakerEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

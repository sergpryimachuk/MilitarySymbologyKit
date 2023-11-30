//
//  NamedHeadquartersEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum NamedHeadquartersEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case alliedCommandEuropeRapidReactionCorps = "01"
    case alliedCommandOperations = "02"
    case internationalSecurityAssistanceForce = "03"
    case multinational = "04"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .alliedCommandEuropeRapidReactionCorps:
            String(localized: "Allied Command Europe Rapid Reaction Corps (ARRC)", bundle: .module, comment: "Named Headquarters Entity Type")

        case .alliedCommandOperations:
            String(localized: "Allied Command Operations", bundle: .module, comment: "Named Headquarters Entity Type")

        case .internationalSecurityAssistanceForce:
            String(localized: "International Security Assistance Force (ISAF)", bundle: .module, comment: "Named Headquarters Entity Type")

        case .multinational:
            String(localized: "Multinational (MN)", bundle: .module, comment: "Named Headquarters Entity Type")
        }
    }

    var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        default:
            AmplifierEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

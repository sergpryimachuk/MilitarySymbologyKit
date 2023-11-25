//
//  NamedHeadquartersEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum NamedHeadquartersEntityType: String, CaseIterable, EntityType {
    case alliedCommandEuropeRapidReactionCorps = "01"
    case alliedCommandOperations = "02"
    case internationalSecurityAssistanceForce = "03"
    case multinational = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .alliedCommandEuropeRapidReactionCorps:
            return String(localized: "Allied Command Europe Rapid Reaction Corps (ARRC)", comment: "Named Headquarters Entity Type")
            
        case .alliedCommandOperations:
            return String(localized: "Allied Command Operations", comment: "Named Headquarters Entity Type")
            
        case .internationalSecurityAssistanceForce:
            return String(localized: "International Security Assistance Force (ISAF)", comment: "Named Headquarters Entity Type")
            
        case .multinational:
            return String(localized: "Multinational (MN)", comment: "Named Headquarters Entity Type")
        }
    }
}

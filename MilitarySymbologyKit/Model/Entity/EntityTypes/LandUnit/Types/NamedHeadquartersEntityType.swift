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
            String(localized: "Allied Command Europe Rapid Reaction Corps (ARRC)", comment: "Named Headquarters Entity Type")
            
        case .alliedCommandOperations:
            String(localized: "Allied Command Operations", comment: "Named Headquarters Entity Type")
            
        case .internationalSecurityAssistanceForce:
            String(localized: "International Security Assistance Force (ISAF)", comment: "Named Headquarters Entity Type")
            
        case .multinational:
            String(localized: "Multinational (MN)", comment: "Named Headquarters Entity Type")
        }
    }
}

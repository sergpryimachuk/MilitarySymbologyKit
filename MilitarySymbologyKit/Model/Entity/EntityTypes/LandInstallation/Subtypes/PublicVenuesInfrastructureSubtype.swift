//
//  PublicVenuesInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum PublicVenuesInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case enclosedFacility = "01"
    case openFacility = "02"
    case recreationalArea = "03"
    case religiousInstitution = "04"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .enclosedFacility:
            return String(localized: "Enclosed Facility", comment: "Public Venues Infrastructure Subtype")
        case .openFacility:
            return String(localized: "Open Facility", comment: "Public Venues Infrastructure Subtype")
        case .recreationalArea:
            return String(localized: "Recreational Area", comment: "Public Venues Infrastructure Subtype")
        case .religiousInstitution:
            return String(localized: "Religious Institution", comment: "Public Venues Infrastructure Subtype")
        }
    }
}

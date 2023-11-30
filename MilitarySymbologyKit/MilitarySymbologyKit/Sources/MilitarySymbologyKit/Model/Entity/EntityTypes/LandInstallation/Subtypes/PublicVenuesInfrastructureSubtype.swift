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
            String(localized: "None")
        case .enclosedFacility:
            String(localized: "Enclosed Facility", comment: "Public Venues Infrastructure Subtype")
        case .openFacility:
            String(localized: "Open Facility", comment: "Public Venues Infrastructure Subtype")
        case .recreationalArea:
            String(localized: "Recreational Area", comment: "Public Venues Infrastructure Subtype")
        case .religiousInstitution:
            String(localized: "Religious Institution", comment: "Public Venues Infrastructure Subtype")
        }
    }
}

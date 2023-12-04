//
//  PublicVenuesInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum PublicVenuesInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case enclosedFacility = "01"
    case openFacility = "02"
    case recreationalArea = "03"
    case religiousInstitution = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .enclosedFacility:
            String(localized: "Enclosed Facility", bundle: .module, comment: "Public Venues Infrastructure Subtype")
        case .openFacility:
            String(localized: "Open Facility", bundle: .module, comment: "Public Venues Infrastructure Subtype")
        case .recreationalArea:
            String(localized: "Recreational Area", bundle: .module, comment: "Public Venues Infrastructure Subtype")
        case .religiousInstitution:
            String(localized: "Religious Institution", bundle: .module, comment: "Public Venues Infrastructure Subtype")
        }
    }
}

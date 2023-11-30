//
//  PostalServicesInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum PostalServicesInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case postalDistributionCenter = "01"
    case postOffice = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .postalDistributionCenter:
            String(localized: "Postal Distribution Center", comment: "Postal Services Infrastructure Subtype")
        case .postOffice:
            String(localized: "Post Office", comment: "Postal Services Infrastructure Subtype")
        }
    }
}

//
//  PostalServicesInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum PostalServicesInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case postalDistributionCenter = "01"
    case postOffice = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .postalDistributionCenter:
            String(localized: "Postal Distribution Center", bundle: .module, comment: "Postal Services Infrastructure Subtype")
        case .postOffice:
            String(localized: "Post Office", bundle: .module, comment: "Postal Services Infrastructure Subtype")
        }
    }
}

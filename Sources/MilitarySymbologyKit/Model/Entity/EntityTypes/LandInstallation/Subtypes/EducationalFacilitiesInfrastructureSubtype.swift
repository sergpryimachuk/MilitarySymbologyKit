//
//  EducationalFacilitiesInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum EducationalFacilitiesInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case collegeUniversity = "01"
    case school = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .collegeUniversity:
            String(localized: "College/University", bundle: .module, comment: "Educational Facilities Infrastructure Subtype")
        case .school:
            String(localized: "School", bundle: .module, comment: "Educational Facilities Infrastructure Subtype")
        }
    }
}

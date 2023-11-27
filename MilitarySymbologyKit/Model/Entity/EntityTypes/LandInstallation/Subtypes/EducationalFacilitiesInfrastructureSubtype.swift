//
//  EducationalFacilitiesInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum EducationalFacilitiesInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case collegeUniversity = "01"
    case school = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .collegeUniversity:
            return String(localized: "College/University", comment: "Educational Facilities Infrastructure Subtype")
        case .school:
            return String(localized: "School", comment: "Educational Facilities Infrastructure Subtype")
        }
    }
}

//
//  MedicalInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum MedicalInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case medical = "01"
    case medicalTreatmentFacility = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .medical:
            String(localized: "Medical", comment: "Medical Infrastructure Subtype")
        case .medicalTreatmentFacility:
            String(localized: "Medical Treatment Facility (Hospital)", comment: "Medical Infrastructure Subtype")
        }
    }
}

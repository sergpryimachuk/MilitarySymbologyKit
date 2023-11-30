//
//  MedicalInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum MedicalInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case medical = "01"
    case medicalTreatmentFacility = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .medical:
            String(localized: "Medical", bundle: .module, comment: "Medical Infrastructure Subtype")
        case .medicalTreatmentFacility:
            String(localized: "Medical Treatment Facility (Hospital)", bundle: .module, comment: "Medical Infrastructure Subtype")
        }
    }
}

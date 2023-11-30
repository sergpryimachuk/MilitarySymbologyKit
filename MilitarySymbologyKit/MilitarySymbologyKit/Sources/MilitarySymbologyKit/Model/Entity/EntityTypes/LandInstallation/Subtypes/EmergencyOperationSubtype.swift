//
//  EmergencyOperationSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum EmergencyOperationSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case fireStation = "01"
    case emergencyMedicalOperation = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .fireStation:
            return String(localized: "Fire Station", comment: "Emergency Operation Subtype")
        case .emergencyMedicalOperation:
            return String(localized: "Emergency Medical Operation", comment: "Emergency Operation Subtype")
        }
    }
}

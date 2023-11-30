//
//  EmergencyOperationSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum EmergencyOperationSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case fireStation = "01"
    case emergencyMedicalOperation = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .fireStation:
            String(localized: "Fire Station", bundle: .module, comment: "Emergency Operation Subtype")
        case .emergencyMedicalOperation:
            String(localized: "Emergency Medical Operation", bundle: .module, comment: "Emergency Operation Subtype")
        }
    }
}

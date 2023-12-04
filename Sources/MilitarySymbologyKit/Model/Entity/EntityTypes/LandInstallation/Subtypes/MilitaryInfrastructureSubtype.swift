//
//  MilitaryInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum MilitaryInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case militaryArmory = "01"
    case militaryBase = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .militaryArmory:
            String(localized: "Military Armory", bundle: .module, comment: "Military Infrastructure Subtype")
        case .militaryBase:
            String(localized: "Military Base", bundle: .module, comment: "Military Infrastructure Subtype")
        }
    }
}

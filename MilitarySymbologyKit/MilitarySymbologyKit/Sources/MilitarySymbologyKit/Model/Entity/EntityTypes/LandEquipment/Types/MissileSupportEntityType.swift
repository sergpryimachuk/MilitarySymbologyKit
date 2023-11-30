//
//  MissileSupportEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum MissileSupportEntityType: String, CaseIterable, EntityType {
    case transloader = "01"
    case transporter = "02"
    case craneLoadingDevice = "03"
    case propellantTransporter = "04"
    case warheadTransporter = "05"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .transloader:
            String(localized: "Transloader", bundle: .module, comment: "Missile Support Entity Type")

        case .transporter:
            String(localized: "Transporter", bundle: .module, comment: "Missile Support Entity Type")

        case .craneLoadingDevice:
            String(localized: "Crane/Loading Device", bundle: .module, comment: "Missile Support Entity Type")

        case .propellantTransporter:
            String(localized: "Propellant Transporter", bundle: .module, comment: "Missile Support Entity Type")

        case .warheadTransporter:
            String(localized: "Warhead Transporter", bundle: .module, comment: "Missile Support Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

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
            String(localized: "Transloader", comment: "Missile Support Entity Type")

        case .transporter:
            String(localized: "Transporter", comment: "Missile Support Entity Type")

        case .craneLoadingDevice:
            String(localized: "Crane/Loading Device", comment: "Missile Support Entity Type")

        case .propellantTransporter:
            String(localized: "Propellant Transporter", comment: "Missile Support Entity Type")

        case .warheadTransporter:
            String(localized: "Warhead Transporter", comment: "Missile Support Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

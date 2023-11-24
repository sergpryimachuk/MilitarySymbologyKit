//
//  MissileSupportEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum MissileSupportEntityType: String, CaseIterable, Identifiable {
    case transloader = "01"
    case transporter = "02"
    case craneLoadingDevice = "03"
    case propellantTransporter = "04"
    case warheadTransporter = "05"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .transloader:
            return String(localized: "Transloader", comment: "Missile Support Entity Type")
            
        case .transporter:
            return String(localized: "Transporter", comment: "Missile Support Entity Type")
            
        case .craneLoadingDevice:
            return String(localized: "Crane/Loading Device", comment: "Missile Support Entity Type")
            
        case .propellantTransporter:
            return String(localized: "Propellant Transporter", comment: "Missile Support Entity Type")
            
        case .warheadTransporter:
            return String(localized: "Warhead Transporter", comment: "Missile Support Entity Type")
        }
    }
}

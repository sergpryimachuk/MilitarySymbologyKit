//
//  TelecommunicationsInfrastructureSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum TelecommunicationsInfrastructureSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case broadcastTransmitterAntennae = "01"
    case telecommunications = "02"
    case telecommunicationsTower = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .broadcastTransmitterAntennae:
            return String(localized: "Broadcast Transmitter Antennae", comment: "Telecommunications Infrastructure Subtype")
        case .telecommunications:
            return String(localized: "Telecommunications", comment: "Telecommunications Infrastructure Subtype")
        case .telecommunicationsTower:
            return String(localized: "Telecommunications Tower", comment: "Telecommunications Infrastructure Subtype")
        }
    }
}

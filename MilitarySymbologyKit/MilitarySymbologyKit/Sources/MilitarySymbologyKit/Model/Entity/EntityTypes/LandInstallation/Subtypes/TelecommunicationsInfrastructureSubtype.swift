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
            String(localized: "None")
        case .broadcastTransmitterAntennae:
            String(localized: "Broadcast Transmitter Antennae", comment: "Telecommunications Infrastructure Subtype")
        case .telecommunications:
            String(localized: "Telecommunications", comment: "Telecommunications Infrastructure Subtype")
        case .telecommunicationsTower:
            String(localized: "Telecommunications Tower", comment: "Telecommunications Infrastructure Subtype")
        }
    }
}

//
//  BridgeSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

enum BridgeSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bridge = "01"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .bridge:
            String(localized: "Bridge", comment: "Bridge Subtype")
        }
    }
}

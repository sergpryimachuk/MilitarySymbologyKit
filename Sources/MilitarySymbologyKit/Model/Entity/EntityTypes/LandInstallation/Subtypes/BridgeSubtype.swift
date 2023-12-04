//
//  BridgeSubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 27/11/2023.
//

import Foundation

public enum BridgeSubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case bridge = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .bridge:
            String(localized: "Bridge", bundle: .module, comment: "Bridge Subtype")
        }
    }
}

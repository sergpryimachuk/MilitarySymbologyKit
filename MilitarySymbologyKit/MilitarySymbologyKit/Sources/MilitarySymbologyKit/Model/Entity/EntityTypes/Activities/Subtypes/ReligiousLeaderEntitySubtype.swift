//
//  ReligiousLeaderEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

public enum ReligiousLeaderEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        }
    }
}

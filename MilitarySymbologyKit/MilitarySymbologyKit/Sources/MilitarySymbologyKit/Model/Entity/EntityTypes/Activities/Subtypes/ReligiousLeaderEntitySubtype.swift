//
//  ReligiousLeaderEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum ReligiousLeaderEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        }
    }
}

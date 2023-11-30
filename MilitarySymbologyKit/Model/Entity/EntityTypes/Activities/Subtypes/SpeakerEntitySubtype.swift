//
//  SpeakerEntitySubtype.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

enum SpeakerEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        }
    }
}

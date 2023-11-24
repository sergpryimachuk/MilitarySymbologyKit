//
//  AirspaceControlLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum AirspaceControlLinesEntityType: String, CaseIterable, Identifiable {
    case identificationFriendOrFoeOffLine = "01"
    case identificationFriendOrFoeOnLine = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .identificationFriendOrFoeOffLine:
            return String(localized: "Identification Friend or Foe Off Line", comment: "Airspace Control Lines Entity Type")
            
        case .identificationFriendOrFoeOnLine:
            return String(localized: "Identification Friend or Foe On Line", comment: "Airspace Control Lines Entity Type")
        }
    }
}

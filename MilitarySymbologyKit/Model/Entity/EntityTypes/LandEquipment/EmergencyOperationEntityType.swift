//
//  EmergencyOperationEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum EmergencyOperationEntityType: String, CaseIterable, EntityType {
    case ambulance = "01"
    case fireFightingFireProtection = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .ambulance:
            return String(localized: "Ambulance", comment: "Emergency Operation Entity Type")
            
        case .fireFightingFireProtection:
            return String(localized: "Fire Fighting/Fire Protection", comment: "Emergency Operation Entity Type")
        }
    }
}

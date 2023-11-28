//
//  EmergencyOperationEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

extension LandEquipmentEntity {
    enum EmergencyOperationEntityType: String, CaseIterable, EntityType {
        case ambulance = "01"
        case fireFightingFireProtection = "02"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .ambulance:
                String(localized: "Ambulance", comment: "Emergency Operation Entity Type")

            case .fireFightingFireProtection:
                String(localized: "Fire Fighting/Fire Protection", comment: "Emergency Operation Entity Type")
            }
        }
        
        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

//
//  EmergencyOperationEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public extension LandEquipmentEntity {
    enum EmergencyOperationEntityType: String, CaseIterable, EntityType {
        case ambulance = "01"
        case fireFightingFireProtection = "02"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .ambulance:
                String(localized: "Ambulance", bundle: .module, comment: "Emergency Operation Entity Type")

            case .fireFightingFireProtection:
                String(localized: "Fire Fighting/Fire Protection", bundle: .module, comment: "Emergency Operation Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

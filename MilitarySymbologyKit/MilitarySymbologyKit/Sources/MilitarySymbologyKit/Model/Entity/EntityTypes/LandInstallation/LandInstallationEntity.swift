//
//  LandInstallationEntity.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum LandInstallationEntity: String, CaseIterable, Entity {
    case installation = "11"
    case infrastructure = "12"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .installation:
            String(localized: "Installation", bundle: .module, comment: "Land Installation Entity")

        case .infrastructure:
            String(localized: "Infrastructure", bundle: .module, comment: "Land Installation Entity")
        }
    }

    var types: [AnyEntityType] {
        switch self {
        case .installation:
            InstallationEntityType.allCases.map { AnyEntityType($0) }
        case .infrastructure:
            InfrastructureEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

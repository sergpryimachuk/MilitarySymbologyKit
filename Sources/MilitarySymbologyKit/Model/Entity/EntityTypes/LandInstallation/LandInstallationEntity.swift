//
//  LandInstallationEntity.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum LandInstallationEntity: String, CaseIterable, Entity {
    case installation = "11"
    case infrastructure = "12"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .installation:
            String(localized: "Installation", bundle: .module, comment: "Land Installation Entity")

        case .infrastructure:
            String(localized: "Infrastructure", bundle: .module, comment: "Land Installation Entity")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .installation:
            InstallationEntityType.allCases.map { AnyEntityType($0) }
        case .infrastructure:
            InfrastructureEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

//
//  TrainEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

public enum TrainEntityType: String, CaseIterable, EntityType {
    case locomotive = "01"
    case railcar = "02"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .locomotive:
            String(localized: "Locomotive", bundle: .module, comment: "Train Entity Type")

        case .railcar:
            String(localized: "Railcar", bundle: .module, comment: "Train Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

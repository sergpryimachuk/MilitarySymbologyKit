//
//  DeceptionEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum DeceptionEntityType: String, CaseIterable, EntityType {
    case decoyDummy = "01"
    case decoyDummyFeint = "02"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .decoyDummy:
            String(localized: "Decoy/Dummy", comment: "Deception Entity Type")
        case .decoyDummyFeint:
            String(localized: "Decoy/Dummy/Feint", comment: "Deception Entity Type")
        }
    }
}

//
//  NaturalEventEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 30/11/2023.
//

import Foundation

public enum NaturalEventEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case geologic = "01"
    case hydroMeteorological = "02"
    case infestation = "03"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)
        case .geologic:
            String(localized: "Geologic", bundle: .module, comment: "Natural Event Entity Type")
        case .hydroMeteorological:
            String(localized: "Hydro-Meteorological", bundle: .module, comment: "Natural Event Entity Type")
        case .infestation:
            String(localized: "Infestation", bundle: .module, comment: "Natural Event Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .geologic:
            GeologicEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .hydroMeteorological:
            HydroMeteorologicalEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .infestation:
            InfestationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

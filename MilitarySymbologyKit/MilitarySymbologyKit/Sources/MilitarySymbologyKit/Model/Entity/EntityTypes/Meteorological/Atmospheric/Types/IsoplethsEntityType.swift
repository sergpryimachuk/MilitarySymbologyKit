//
//  Created with ♥ by Serhii Pryimachuk on 25.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    public enum IsoplethsEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case isobarSurface = "01"
        case contourUpperAir = "02"
        case isotherm = "03"
        case isotach = "04"
        case isodrosotherm = "05"
        case thickness = "06"
        case operatorDefinedFreeform = "07"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")

            case .isobarSurface:
                String(localized: "Isobar - Surface", bundle: .module, comment: "Isopleths Entity Type")

            case .contourUpperAir:
                String(localized: "Contour - Upper Air", bundle: .module, comment: "Isopleths Entity Type")

            case .isotherm:
                String(localized: "Isotherm", bundle: .module, comment: "Isopleths Entity Type")

            case .isotach:
                String(localized: "Isotach", bundle: .module, comment: "Isopleths Entity Type")

            case .isodrosotherm:
                String(localized: "Isodrosotherm", bundle: .module, comment: "Isopleths Entity Type")

            case .thickness:
                String(localized: "Thickness", bundle: .module, comment: "Isopleths Entity Type")

            case .operatorDefinedFreeform:
                String(localized: "Operator-Defined Freeform", bundle: .module, comment: "Isopleths Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

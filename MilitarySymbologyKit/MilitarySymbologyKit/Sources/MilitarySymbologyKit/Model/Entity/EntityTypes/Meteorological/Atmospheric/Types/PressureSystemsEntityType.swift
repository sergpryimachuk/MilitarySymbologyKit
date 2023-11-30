//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension AtmosphericEntity {
    public enum PressureSystemsEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case lowPressureCenter = "01"
        case highPressureCenter = "02"
        case frontalSystems = "03"
        case lines = "04"
        case pressureTendency = "05"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .none:
                String(localized: "None")
            case .lowPressureCenter:
                String(localized: "Low Pressure Center", bundle: .module, comment: "Pressure Systems Entity Type")

            case .highPressureCenter:
                String(localized: "High Pressure Center", bundle: .module, comment: "Pressure Systems Entity Type")

            case .frontalSystems:
                String(localized: "Frontal Systems", bundle: .module, comment: "Pressure Systems Entity Type")

            case .lines:
                String(localized: "Lines", bundle: .module, comment: "Pressure Systems Entity Type")

            case .pressureTendency:
                String(localized: "Pressure Tendency", bundle: .module, comment: "Pressure Systems Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .none:
                           [.none]
            case .lowPressureCenter:
                LowPressureCenterEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .highPressureCenter:
                HighPressureCenterEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .frontalSystems:
                FrontalSystemsEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .lines:
                LinesEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            case .pressureTendency:
                PressureTendencyEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            }
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension AtmosphericEntity {
    enum PressureSystemsEntityType: String, CaseIterable, EntityType {
        case lowPressureCenter = "01"
        case highPressureCenter = "02"
        case frontalSystems = "03"
        case lines = "04"
        case pressureTendency = "05"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .lowPressureCenter:
                String(localized: "Low Pressure Center", comment: "Pressure Systems Entity Type")

            case .highPressureCenter:
                String(localized: "High Pressure Center", comment: "Pressure Systems Entity Type")

            case .frontalSystems:
                String(localized: "Frontal Systems", comment: "Pressure Systems Entity Type")

            case .lines:
                String(localized: "Lines", comment: "Pressure Systems Entity Type")

            case .pressureTendency:
                String(localized: "Pressure Tendency", comment: "Pressure Systems Entity Type")
            }
        }

        // TODO: Implement this one
        var subtypes: [AnyEntitySubtype] {
            switch self {
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

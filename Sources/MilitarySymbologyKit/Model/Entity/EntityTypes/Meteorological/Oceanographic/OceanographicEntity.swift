//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public enum OceanographicEntity: String, CaseIterable, Entity {
    case iceSystems = "11"
    case hydrography = "12"
    case oceanography = "13"
    case geophysicsAcoustics = "14"
    case limits = "15"
    case manMadeStructures = "16"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .iceSystems:
            String(localized: "Ice Systems", bundle: .module, comment: "Oceanographic Entity Type")

        case .hydrography:
            String(localized: "Hydrography", bundle: .module, comment: "Oceanographic Entity Type")

        case .oceanography:
            String(localized: "Oceanography", bundle: .module, comment: "Oceanographic Entity Type")

        case .geophysicsAcoustics:
            String(localized: "Geophysics/Acoustics", bundle: .module, comment: "Oceanographic Entity Type")

        case .limits:
            String(localized: "Limits", bundle: .module, comment: "Oceanographic Entity Type")

        case .manMadeStructures:
            String(localized: "Man-Made Structures", bundle: .module, comment: "Oceanographic Entity Type")
        }
    }

    public var types: [AnyEntityType] {
        switch self {
        case .iceSystems:
            IceSystemsEntityType.allCases.map { AnyEntityType($0) }
        case .hydrography:
            HydrographyEntityType.allCases.map { AnyEntityType($0) }
        case .oceanography:
            OceanographyEntityType.allCases.map { AnyEntityType($0) }
        case .geophysicsAcoustics:
            GeophysicsAcousticsEntityType.allCases.map { AnyEntityType($0) }
        case .limits:
            LimitsEntityType.allCases.map { AnyEntityType($0) }
        case .manMadeStructures:
            ManMadeStructuresEntityType.allCases.map { AnyEntityType($0) }
        }
    }
}

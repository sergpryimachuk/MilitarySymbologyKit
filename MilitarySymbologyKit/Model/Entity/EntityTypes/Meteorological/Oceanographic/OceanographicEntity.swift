//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

enum OceanographicEntity: String, CaseIterable, Entity {
    case iceSystems = "11"
    case hydrography = "12"
    case oceanography = "13"
    case geophysicsAcoustics = "14"
    case limits = "15"
    case manMadeStructures = "16"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .iceSystems:
            return String(localized: "Ice Systems", comment: "Oceanographic Entity Type")
            
        case .hydrography:
            return String(localized: "Hydrography", comment: "Oceanographic Entity Type")
            
        case .oceanography:
            return String(localized: "Oceanography", comment: "Oceanographic Entity Type")
            
        case .geophysicsAcoustics:
            return String(localized: "Geophysics/Acoustics", comment: "Oceanographic Entity Type")
            
        case .limits:
            return String(localized: "Limits", comment: "Oceanographic Entity Type")
            
        case .manMadeStructures:
            return String(localized: "Man-Made Structures", comment: "Oceanographic Entity Type")
        }
    }
    
    var types: [AnyEntityType] {
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

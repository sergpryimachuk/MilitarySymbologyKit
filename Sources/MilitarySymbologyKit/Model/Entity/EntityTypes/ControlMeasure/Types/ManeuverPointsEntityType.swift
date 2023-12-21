//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum ManeuverPointsEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case observationPostUnspecified = "01"
    case observationPostSpecified = "02"
    case targetReferencePoint = "03"
    case pointOfDeparture = "04"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)

        case .observationPostUnspecified:
            return String(localized: "Observation Post/Outpost (Unspecified)", bundle: .module, comment: "Maneuver Points Entity Type")

        case .observationPostSpecified:
            return String(localized: "Observation Post/Outpost (Specified)", bundle: .module, comment: "Maneuver Points Entity Type")

        case .targetReferencePoint:
            return String(localized: "Target Reference Point", bundle: .module, comment: "Maneuver Points Entity Type")

        case .pointOfDeparture:
            return String(localized: "Point of Departure", bundle: .module, comment: "Maneuver Points Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .observationPostSpecified:
            ObservationPostSpecifiedEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        default:
            [.none]
        }
    }
}

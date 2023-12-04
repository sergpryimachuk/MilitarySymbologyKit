//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum IncidentEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case criminalActivityIncident = "01"
    case bombBombing = "02"
    case iedEvent = "03"
    case shooting = "04"
    case illegalDrugOperation = "05"
    case explosion = "06"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .criminalActivityIncident:
            String(localized: "Criminal Activity Incident", bundle: .module, comment: "Incident Entity Type")

        case .bombBombing:
            String(localized: "Bomb/Bombing", bundle: .module, comment: "Incident Entity Type")

        case .iedEvent:
            String(localized: "IED Event", bundle: .module, comment: "Incident Entity Type")

        case .shooting:
            String(localized: "Shooting", bundle: .module, comment: "Incident Entity Type")

        case .illegalDrugOperation:
            String(localized: "Illegal Drug Operation", bundle: .module, comment: "Incident Entity Type")

        case .explosion:
            String(localized: "Explosion", bundle: .module, comment: "Incident Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        switch self {
        case .none:
            [.none]
        case .criminalActivityIncident:
            CriminalActivityIncidentEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .bombBombing:
            BombBombingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .iedEvent:
            IEDEventEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .shooting:
            ShootingEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .illegalDrugOperation:
            IllegalDrugOperationEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        case .explosion:
            ExplosionEntitySubtype.allCases.map { AnyEntitySubtype($0) }
        }
    }
}

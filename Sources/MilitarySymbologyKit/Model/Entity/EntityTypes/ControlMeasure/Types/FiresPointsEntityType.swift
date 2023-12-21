//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum FiresPointsEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case firingPoint = "01"
    case hidePoint = "02"
    case launchPoint = "03"
    case reloadPoint = "04"
    case surveyControlPoint = "05"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .firingPoint:
            return String(localized: "Firing Point", bundle: .module, comment: "Fires Points Entity Type")
        case .hidePoint:
            return String(localized: "Hide Point", bundle: .module, comment: "Fires Points Entity Type")
        case .launchPoint:
            return String(localized: "Launch Point", bundle: .module, comment: "Fires Points Entity Type")
        case .reloadPoint:
            return String(localized: "Reload Point", bundle: .module, comment: "Fires Points Entity Type")
        case .surveyControlPoint:
            return String(localized: "Survey Control Point", bundle: .module, comment: "Fires Points Entity Type")
        }
    }

    public var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

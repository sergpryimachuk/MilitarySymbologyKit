//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

enum NavyTaskOrganizationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case navyTaskElement = "01"
    case navyTaskForce = "02"
    case navyTaskGroup = "03"
    case navyTaskUnit = "04"
    case convoy = "05"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .navyTaskElement:
            String(localized: "Navy Task Element", comment: "Navy Task Organization Entity Subtype")

        case .navyTaskForce:
            String(localized: "Navy Task Force", comment: "Navy Task Organization Entity Subtype")

        case .navyTaskGroup:
            String(localized: "Navy Task Group", comment: "Navy Task Organization Entity Subtype")

        case .navyTaskUnit:
            String(localized: "Navy Task Unit", comment: "Navy Task Organization Entity Subtype")

        case .convoy:
            String(localized: "Convoy", comment: "Navy Task Organization Entity Subtype")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension AtmosphericEntity {
    enum WindsEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case calmWinds = "01"
        case windPlot = "02"
        case jetStream = "03"
        case streamLine = "04"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .none:
                String(localized: "None")
            case .calmWinds:
                String(localized: "Calm Winds", bundle: .module, comment: "Winds Entity Type")

            case .windPlot:
                String(localized: "Wind Plot", bundle: .module, comment: "Winds Entity Type")

            case .jetStream:
                String(localized: "Jet Stream", bundle: .module, comment: "Winds Entity Type")

            case .streamLine:
                String(localized: "Stream Line", bundle: .module, comment: "Winds Entity Type")
            }
        }

        var subtypes: [AnyEntitySubtype] {
            [.none]
        }
    }
}

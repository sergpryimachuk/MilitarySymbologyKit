//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension OceanographicEntity {
    enum IceSystemsEntityType: String, CaseIterable, EntityType {
        case icebergs = "01"
        case iceConcentration = "02"
        case dynamicProcesses = "03"
        case seaIce = "04"
        case limits = "05"
        case openingsInTheIce = "06"
        case snowCover = "07"
        case topographicalFeatures = "08"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .icebergs:
                String(localized: "Icebergs", comment: "Ice Systems Entity Type")

            case .iceConcentration:
                String(localized: "Ice Concentration", comment: "Ice Systems Entity Type")

            case .dynamicProcesses:
                String(localized: "Dynamic Processes", comment: "Ice Systems Entity Type")

            case .seaIce:
                String(localized: "Sea Ice", comment: "Ice Systems Entity Type")

            case .limits:
                String(localized: "Limits", comment: "Ice Systems Entity Type")

            case .openingsInTheIce:
                String(localized: "Openings in the Ice", comment: "Ice Systems Entity Type")

            case .snowCover:
                String(localized: "Snow Cover", comment: "Ice Systems Entity Type")

            case .topographicalFeatures:
                String(localized: "Topographical Features", comment: "Ice Systems Entity Type")
            }
        }
    }
}

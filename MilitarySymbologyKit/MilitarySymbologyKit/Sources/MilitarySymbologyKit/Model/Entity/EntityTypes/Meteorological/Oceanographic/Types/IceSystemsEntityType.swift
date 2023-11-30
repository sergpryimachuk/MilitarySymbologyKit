//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension OceanographicEntity {
    public enum IceSystemsEntityType: String, CaseIterable, EntityType {
        public var subtypes: [AnyEntitySubtype] { [.none] }
        
        case icebergs = "01"
        case iceConcentration = "02"
        case dynamicProcesses = "03"
        case seaIce = "04"
        case limits = "05"
        case openingsInTheIce = "06"
        case snowCover = "07"
        case topographicalFeatures = "08"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .icebergs:
                String(localized: "Icebergs", bundle: .module, comment: "Ice Systems Entity Type")

            case .iceConcentration:
                String(localized: "Ice Concentration", bundle: .module, comment: "Ice Systems Entity Type")

            case .dynamicProcesses:
                String(localized: "Dynamic Processes", bundle: .module, comment: "Ice Systems Entity Type")

            case .seaIce:
                String(localized: "Sea Ice", bundle: .module, comment: "Ice Systems Entity Type")

            case .limits:
                String(localized: "Limits", bundle: .module, comment: "Ice Systems Entity Type")

            case .openingsInTheIce:
                String(localized: "Openings in the Ice", bundle: .module, comment: "Ice Systems Entity Type")

            case .snowCover:
                String(localized: "Snow Cover", bundle: .module, comment: "Ice Systems Entity Type")

            case .topographicalFeatures:
                String(localized: "Topographical Features", bundle: .module, comment: "Ice Systems Entity Type")
            }
        }
    }
}

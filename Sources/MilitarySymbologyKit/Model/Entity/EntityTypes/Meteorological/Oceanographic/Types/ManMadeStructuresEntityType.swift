//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension OceanographicEntity {
    enum ManMadeStructuresEntityType: String, CaseIterable, EntityType {
        public var subtypes: [AnyEntitySubtype] { [.none] }

        case submarineCable = "01"
        case submergedCrib = "02"
        case canal = "03"
        case ford = "04"
        case lock = "05"
        case oilGasRig = "06"
        case oilGasRigField = "07"
        case pipelinesPipe = "08"
        case pilePilingPost = "09"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .submarineCable:
                String(localized: "Submarine Cable", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .submergedCrib:
                String(localized: "Submerged Crib", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .canal:
                String(localized: "Canal", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .ford:
                String(localized: "Ford", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .lock:
                String(localized: "Lock", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .oilGasRig:
                String(localized: "Oil/Gas Rig", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .oilGasRigField:
                String(localized: "Oil/Gas Rig Field", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .pipelinesPipe:
                String(localized: "Pipelines/Pipe", bundle: .module, comment: "Man-Made Structures Entity Type")

            case .pilePilingPost:
                String(localized: "Pile/Piling/Post", bundle: .module, comment: "Man-Made Structures Entity Type")
            }
        }
    }
}

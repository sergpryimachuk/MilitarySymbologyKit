//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

extension OceanographicEntity {
    enum ManMadeStructuresEntityType: String, CaseIterable, EntityType {
        case submarineCable = "01"
        case submergedCrib = "02"
        case canal = "03"
        case ford = "04"
        case lock = "05"
        case oilGasRig = "06"
        case oilGasRigField = "07"
        case pipelinesPipe = "08"
        case pilePilingPost = "09"

        var id: String { rawValue }

        var name: String {
            switch self {
            case .submarineCable:
                String(localized: "Submarine Cable", comment: "Man-Made Structures Entity Type")

            case .submergedCrib:
                String(localized: "Submerged Crib", comment: "Man-Made Structures Entity Type")

            case .canal:
                String(localized: "Canal", comment: "Man-Made Structures Entity Type")

            case .ford:
                String(localized: "Ford", comment: "Man-Made Structures Entity Type")

            case .lock:
                String(localized: "Lock", comment: "Man-Made Structures Entity Type")

            case .oilGasRig:
                String(localized: "Oil/Gas Rig", comment: "Man-Made Structures Entity Type")

            case .oilGasRigField:
                String(localized: "Oil/Gas Rig Field", comment: "Man-Made Structures Entity Type")

            case .pipelinesPipe:
                String(localized: "Pipelines/Pipe", comment: "Man-Made Structures Entity Type")

            case .pilePilingPost:
                String(localized: "Pile/Piling/Post", comment: "Man-Made Structures Entity Type")
            }
        }
    }
}

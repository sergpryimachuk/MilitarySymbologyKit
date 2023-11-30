//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//

import Foundation

public extension MineWarfareEntity {
    enum SeaMineGeneralEntityType: String, CaseIterable, EntityType {
        case seaMineBottom = "01"
        case seaMineMoored = "02"
        case seaMineFloating = "03"
        case seaMineRising = "04"
        case seaMineOtherPosition = "05"
        case kingfisher = "06"
        case smallObjectMineLike = "07"
        case exerciseMineGeneral = "08"
        case neutralizedMineGeneral = "09"

        public var id: String { rawValue }

        public var name: String {
            switch self {
            case .seaMineBottom:
                String(localized: "Sea Mine-Bottom", bundle: .module, comment: "Sea Mine General Entity Type")

            case .seaMineMoored:
                String(localized: "Sea Mine-Moored", bundle: .module, comment: "Sea Mine General Entity Type")

            case .seaMineFloating:
                String(localized: "Sea Mine-Floating", bundle: .module, comment: "Sea Mine General Entity Type")

            case .seaMineRising:
                String(localized: "Sea Mine-Rising", bundle: .module, comment: "Sea Mine General Entity Type")

            case .seaMineOtherPosition:
                String(localized: "Sea Mine-Other Position", bundle: .module, comment: "Sea Mine General Entity Type")

            case .kingfisher:
                String(localized: "Kingfisher", bundle: .module, comment: "Sea Mine General Entity Type")

            case .smallObjectMineLike:
                String(localized: "Small Object-Mine-Like", bundle: .module, comment: "Sea Mine General Entity Type")

            case .exerciseMineGeneral:
                String(localized: "Exercise Mine-General", bundle: .module, comment: "Sea Mine General Entity Type")

            case .neutralizedMineGeneral:
                String(localized: "Neutralized Mine-General", bundle: .module, comment: "Sea Mine General Entity Type")
            }
        }

        public var subtypes: [AnyEntitySubtype] {
            switch self {
            case .exerciseMineGeneral:
                ExerciseMineGeneralSubtype.allCases.map { AnyEntitySubtype($0) }
            case .neutralizedMineGeneral:
                NeutralizedMineGeneralEntitySubtype.allCases.map { AnyEntitySubtype($0) }
            default:
                [.none]
            }
        }
    }
}

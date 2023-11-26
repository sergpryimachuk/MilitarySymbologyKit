//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension MineWarfareEntity {
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
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .seaMineBottom:
                String(localized: "Sea Mine-Bottom", comment: "Sea Mine General Entity Type")
                
            case .seaMineMoored:
                String(localized: "Sea Mine-Moored", comment: "Sea Mine General Entity Type")
                
            case .seaMineFloating:
                String(localized: "Sea Mine-Floating", comment: "Sea Mine General Entity Type")
                
            case .seaMineRising:
                String(localized: "Sea Mine-Rising", comment: "Sea Mine General Entity Type")
                
            case .seaMineOtherPosition:
                String(localized: "Sea Mine-Other Position", comment: "Sea Mine General Entity Type")
                
            case .kingfisher:
                String(localized: "Kingfisher", comment: "Sea Mine General Entity Type")
                
            case .smallObjectMineLike:
                String(localized: "Small Object-Mine-Like", comment: "Sea Mine General Entity Type")
                
            case .exerciseMineGeneral:
                String(localized: "Exercise Mine-General", comment: "Sea Mine General Entity Type")
                
            case .neutralizedMineGeneral:
                String(localized: "Neutralized Mine-General", comment: "Sea Mine General Entity Type")
            }
        }
    }
}

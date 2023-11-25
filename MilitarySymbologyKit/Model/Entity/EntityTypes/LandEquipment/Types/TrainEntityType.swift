//
//  TrainEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum TrainEntityType: String, CaseIterable, EntityType {
    case locomotive = "01"
    case railcar = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .locomotive:
            return String(localized: "Locomotive", comment: "Train Entity Type")
            
        case .railcar:
            return String(localized: "Railcar", comment: "Train Entity Type")
        }
    }
}

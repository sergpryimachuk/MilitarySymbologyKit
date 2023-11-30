//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum IllegalDrugOperationEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case trafficking = "01"
    case illegalDrugLab = "02"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            String(localized: "None")
            
        case .trafficking:
            String(localized: "Trafficking", comment: "Illegal Drug Operation Entity Subtype")
            
        case .illegalDrugLab:
            String(localized: "Illegal Drug Lab", comment: "Illegal Drug Operation Entity Subtype")
        }
    }
}

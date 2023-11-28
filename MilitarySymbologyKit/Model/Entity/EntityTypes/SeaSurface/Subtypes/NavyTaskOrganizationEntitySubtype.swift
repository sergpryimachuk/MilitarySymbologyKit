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
            return String(localized: "None")
            
        case .navyTaskElement:
            return String(localized: "Navy Task Element", comment: "Navy Task Organization Entity Subtype")
            
        case .navyTaskForce:
            return String(localized: "Navy Task Force", comment: "Navy Task Organization Entity Subtype")
            
        case .navyTaskGroup:
            return String(localized: "Navy Task Group", comment: "Navy Task Organization Entity Subtype")
            
        case .navyTaskUnit:
            return String(localized: "Navy Task Unit", comment: "Navy Task Organization Entity Subtype")
            
        case .convoy:
            return String(localized: "Convoy", comment: "Navy Task Organization Entity Subtype")
        }
    }
}

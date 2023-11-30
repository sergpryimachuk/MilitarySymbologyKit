//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//  

import Foundation

enum FireEventEntityType: String, CaseIterable, EntityType {
    case none = "00"
    case fireOrigin = "01"
    case smoke = "02"
    case hotSpot = "03"
    case nonResidentialFire = "04"
    case residentialFire = "05"
    case schoolFire = "06"
    case specialNeedsFire = "07"
    case wildFire = "08"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .none:
            return String(localized: "None")
        case .fireOrigin:
            return String(localized: "Fire Origin", comment: "Fire Event Entity Type")
        case .smoke:
            return String(localized: "Smoke", comment: "Fire Event Entity Type")
        case .hotSpot:
            return String(localized: "Hot Spot", comment: "Fire Event Entity Type")
        case .nonResidentialFire:
            return String(localized: "Non-Residential Fire", comment: "Fire Event Entity Type")
        case .residentialFire:
            return String(localized: "Residential Fire", comment: "Fire Event Entity Type")
        case .schoolFire:
            return String(localized: "School Fire", comment: "Fire Event Entity Type")
        case .specialNeedsFire:
            return String(localized: "Special Needs Fire", comment: "Fire Event Entity Type")
        case .wildFire:
            return String(localized: "Wild Fire", comment: "Fire Event Entity Type")
        }
    }
    
    var subtypes: [AnyEntitySubtype] {
        [.none]
    }
}

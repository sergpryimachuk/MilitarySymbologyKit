//
//  Created with ♥ by Serhii Pryimachuk on 24.11.2023.
//  

import Foundation

extension MineWarfareEntity {
    enum ObstructorEntityType: String, CaseIterable, EntityType {
        case none = "00"
        case neutralized = "01"
        
        var id: String { rawValue }
        
        var name: String {
            switch self {
            case .none:
                String(localized: "None", comment: "Not selected.")
            case .neutralized:
                String(localized: "Neutralized Obstructor", comment: "Obstructor Entity Type")
            }
        }
    }
}

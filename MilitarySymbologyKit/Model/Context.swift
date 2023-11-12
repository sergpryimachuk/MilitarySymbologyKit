//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

enum Context: String, CaseIterable, Identifiable {
    case reality = "0"
    case exercise = "1"
    case simulation = "2"
    
    var id: String { rawValue }
    
     var name: String {
        switch self {
        case .reality:
            return String(localized: "Reality", comment: "Context")
        case .exercise:
            return String(localized: "Exercise", comment: "Context")
        case .simulation:
            return String(localized: "Simulation", comment: "Context")
        }
    }
}

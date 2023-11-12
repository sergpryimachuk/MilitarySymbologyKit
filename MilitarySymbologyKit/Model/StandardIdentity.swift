//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//  

import Foundation

enum StandardIdentity: String, CaseIterable, Identifiable {
    case pending = "0"
    case unknown = "1"
    case assumedFriend = "2"
    case friend = "3"
    case neutral = "4"
    case suspect = "5"
    case hotile = "6"
    
    var id: String { rawValue }
    
     var name: String {
        switch self {
        case .pending:
            return String(localized: "Pending", comment: "Standard identity")
        case .unknown:
            return String(localized: "Unknown", comment: "Standard identity")
        case .assumedFriend:
            return String(localized: "Assumed Friend", comment: "Standard identity")
        case .friend:
            return String(localized: "Friend", comment: "Standard identity")
        case .neutral:
            return String(localized: "Neutral", comment: "Standard identity")
        case .suspect:
            return String(localized: "Suspect/Joker", comment: "Standard identity")
        case .hotile:
            return String(localized: "Hostile/Faker", comment: "Standard identity")
        }
    }
}

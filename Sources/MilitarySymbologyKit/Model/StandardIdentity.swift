//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum StandardIdentity: String, CaseIterable, Identifiable {
    case pending = "0"
    case unknown = "1"
    case assumedFriend = "2"
    case friend = "3"
    case neutral = "4"
    case suspect = "5"
    case hostile = "6"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .pending:
            String(localized: "Pending", bundle: .module, comment: "Standard identity")
        case .unknown:
            String(localized: "Unknown", bundle: .module, comment: "Standard identity")
        case .assumedFriend:
            String(localized: "Assumed Friend", bundle: .module, comment: "Standard identity")
        case .friend:
            String(localized: "Friend", bundle: .module, comment: "Standard identity")
        case .neutral:
            String(localized: "Neutral", bundle: .module, comment: "Standard identity")
        case .suspect:
            String(localized: "Suspect/Joker", bundle: .module, comment: "Standard identity")
        case .hostile:
            String(localized: "Hostile/Faker", bundle: .module, comment: "Standard identity")
        }
    }

    /// Gigit used to retireve svg asset.
    public var assetDigit: String {
        switch self {
        case .pending:
            StandardIdentity.unknown.id
        case .assumedFriend:
            StandardIdentity.friend.id
        case .suspect:
            StandardIdentity.hostile.id
        default:
            id
        }
    }
}

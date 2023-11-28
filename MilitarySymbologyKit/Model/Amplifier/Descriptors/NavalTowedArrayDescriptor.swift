//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum NavalTowedArrayDescriptor: String, CaseIterable, Descriptor {
    case none = "0"
    case shortTowedArray = "1"
    case longTowedArray = "2"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .shortTowedArray:
            String(localized: "Short Towed Array", comment: "Naval towed array amplifier descriptor")

        case .longTowedArray:
            String(localized: "Long Towed Array", comment: "Naval towed array amplifier descriptor")
        }
    }
}

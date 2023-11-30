//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

enum NavalTowedArrayDescriptor: String, CaseIterable, Descriptor {
    case shortTowedArray = "1"
    case longTowedArray = "2"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .shortTowedArray:
            String(localized: "Short Towed Array", bundle: .module, comment: "Naval towed array amplifier descriptor")

        case .longTowedArray:
            String(localized: "Long Towed Array", bundle: .module, comment: "Naval towed array amplifier descriptor")
        }
    }
}

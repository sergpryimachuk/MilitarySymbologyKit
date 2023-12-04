//
//  Created with ♥ by Serhii Pryimachuk on 12.11.2023.
//

import Foundation

public enum NavalTowedArrayDescriptor: String, CaseIterable, Descriptor {
    case shortTowedArray = "1"
    case longTowedArray = "2"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .shortTowedArray:
            String(localized: "Short Towed Array", bundle: .module, comment: "Naval towed array amplifier descriptor")

        case .longTowedArray:
            String(localized: "Long Towed Array", bundle: .module, comment: "Naval towed array amplifier descriptor")
        }
    }
}

//
//  Created with ♥ by Serhii Pryimachuk on 30.11.2023.
//

import Foundation

public enum MISOEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case tvAndRadioPropaganda = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None")
        case .tvAndRadioPropaganda:
            String(localized: "TV and Radio Propaganda", bundle: .module, comment: "MISO Entity Subtype")
        }
    }
}

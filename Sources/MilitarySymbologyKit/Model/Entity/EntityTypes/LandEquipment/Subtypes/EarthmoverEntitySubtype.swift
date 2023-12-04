//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

public enum EarthmoverEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case multifunctionalEarthmoverDigger = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .multifunctionalEarthmoverDigger:
            String(localized: "Multifunctional Earthmover/Digger", bundle: .module, comment: "Earthmover Entity Subtype")
        }
    }
}

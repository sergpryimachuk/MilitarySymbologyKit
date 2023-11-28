//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum EarthmoverEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case multifunctionalEarthmoverDigger = "01"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            return String(localized: "None")

        case .multifunctionalEarthmoverDigger:
            return String(localized: "Multifunctional Earthmover/Digger", comment: "Earthmover Entity Subtype")
        }
    }
}

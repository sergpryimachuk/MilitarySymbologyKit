//
//  Created with ♥ by Serhii Pryimachuk on 21.12.2023.
//

import Foundation

public enum ChemicalEventEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case toxicIndustrialMaterial = "01"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            return String(localized: "None", bundle: .module)
        case .toxicIndustrialMaterial:
            return String(localized: "Toxic Industrial Material", bundle: .module, comment: "Chemical Event Entity Subtype")
        }
    }
}

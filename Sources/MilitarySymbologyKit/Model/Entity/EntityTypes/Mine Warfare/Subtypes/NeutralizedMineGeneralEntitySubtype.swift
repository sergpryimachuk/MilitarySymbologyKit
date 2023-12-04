//
//  Created with ♥ by Serhii Pryimachuk on 28.11.2023.
//

import Foundation

public enum NeutralizedMineGeneralEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case neutralizedMineBottom = "01"
    case neutralizedMineMoored = "02"
    case neutralizedMineFloating = "03"
    case neutralizedMineRising = "04"
    case neutralizedMineOtherPosition = "05"

    public var id: String { rawValue }

    public var name: String {
        switch self {
        case .none:
            String(localized: "None", bundle: .module)

        case .neutralizedMineBottom:
            String(localized: "Neutralized Mine-Bottom", bundle: .module, comment: "Neutralized Mine General Entity Subtype")

        case .neutralizedMineMoored:
            String(localized: "Neutralized Mine-Moored", bundle: .module, comment: "Neutralized Mine General Entity Subtype")

        case .neutralizedMineFloating:
            String(localized: "Neutralized Mine-Floating", bundle: .module, comment: "Neutralized Mine General Entity Subtype")

        case .neutralizedMineRising:
            String(localized: "Neutralized Mine-Rising", bundle: .module, comment: "Neutralized Mine General Entity Subtype")

        case .neutralizedMineOtherPosition:
            String(localized: "Neutralized Mine-Other Position", bundle: .module, comment: "Neutralized Mine General Entity Subtype")
        }
    }
}

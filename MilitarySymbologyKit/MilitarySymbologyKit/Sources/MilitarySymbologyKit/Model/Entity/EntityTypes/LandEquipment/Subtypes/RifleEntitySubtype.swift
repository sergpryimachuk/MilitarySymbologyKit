//
//  Created with ♥ by Serhii Pryimachuk on 26.11.2023.
//

import Foundation

enum RifleEntitySubtype: String, CaseIterable, EntitySubtype {
    case none = "00"
    case singleShotRifle = "01"
    case semiautomaticRifle = "02"
    case automaticRifle = "03"

    var id: String { rawValue }

    var name: String {
        switch self {
        case .none:
            String(localized: "None")

        case .singleShotRifle:
            String(localized: "Single Shot Rifle", bundle: .module, comment: "Rifle Entity Subtype")

        case .semiautomaticRifle:
            String(localized: "Semiautomatic Rifle", bundle: .module, comment: "Rifle Entity Subtype")

        case .automaticRifle:
            String(localized: "Automatic Rifle", bundle: .module, comment: "Rifle Entity Subtype")
        }
    }
}
